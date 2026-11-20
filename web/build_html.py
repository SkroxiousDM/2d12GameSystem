#!/usr/bin/env python3
"""Build the web edition of the core rulebook for the SkroxiousDM Jekyll site.

Typst -> Pandoc -> one HTML page per chapter, with Jekyll front matter.

    python3 web/build_html.py --out build/core-html

The script:
  1. copies docs/2d12System/ to a temporary folder and swaps in the web
     stand-ins from web/ for common.typ and adversaries-common.typ;
  2. reads the chapter order from the root rulebook file (#include lines,
     plus any #art-fill lines that follow an include);
  3. converts each chapter with Pandoc and web/rulebook.lua;
  4. writes <out>/index.html (contents), <out>/<chapter>/index.html and
     copies the art the pages use to <out>/art/.

The output is meant for rules/core/ in the SkroxiousDM site repository.
All links between pages are relative, so the site's baseurl doesn't matter.
"""
import argparse
import datetime
import html
import re
import shutil
import subprocess
import sys
import tempfile
from pathlib import Path

REPO = Path(__file__).resolve().parents[1]
WEB = REPO / 'web'
SOURCE = REPO / 'docs' / '2d12System'
ROOT_FILE = 'the-2d12-system-v2-core-rulebook.typ'
SITE_PATH = '/rules/core/'
PDF_URL = 'https://github.com/SkroxiousDM/2d12GameSystem/blob/main/pdf/the-2d12-system-v2-core-rulebook.pdf'
REPO_URL = 'https://github.com/SkroxiousDM/2d12GameSystem'
TESTED_PANDOC = '3.7.0.2'
BOOK_TITLE = 'The 2d12 System'
BOOK_MOTTO = 'One roll, many outputs. Roll 2d12 + Skill + Modifiers vs. Difficulty.'

ROMAN = ['I', 'II', 'III', 'IV', 'V', 'VI', 'VII', 'VIII', 'IX', 'X', 'XI', 'XII']


def slug(text):
    value = re.sub(r'[^a-z0-9]+', '-', text.lower()).strip('-')
    if not value:
        raise ValueError('empty slug for ' + repr(text))
    return value


def chapter_plan(root_text):
    """Return [(include_file, [art-fill lines that follow it])] in book order."""
    plan = []
    for line in root_text.splitlines():
        stripped = line.strip()
        include = re.match(r'#include\s+"([^"]+)"', stripped)
        if include:
            plan.append((include.group(1), []))
        elif stripped.startswith('#art-fill[') and plan:
            plan[-1][1].append(stripped)
    if not plan:
        raise SystemExit('No #include lines found in ' + ROOT_FILE)
    return plan


def fix_enum_starts(text):
    """Pandoc leaks `#set enum(start: N)` past its block into later lists.

    Rewrite `#set enum(numbering: "1.", start: N)` + the next `+ ` item as an
    explicit `N. ` item, which Typst and Pandoc both read the same way.
    """
    return re.sub(r'#set enum\(numbering: "1\.", start: (\d+)\)[ \t]*\n([ \t]*)\+ ',
                  lambda m: m.group(2) + m.group(1) + '. ', text)


def prepare_source(work):
    shutil.copytree(SOURCE, work, ignore=shutil.ignore_patterns('drafts'))
    shutil.copy(WEB / 'common.typ', work / 'common.typ')
    shutil.copy(WEB / 'adversaries-common.typ', work / 'adversaries-common.typ')
    numbers = {}
    for path in work.glob('*.typ'):
        numbers.update(heading_numbers(path.read_text(encoding='utf-8')))
    for path in work.glob('*.typ'):
        text = path.read_text(encoding='utf-8')
        fixed = link_refs(fix_enum_starts(text), numbers)
        if fixed != text:
            path.write_text(fixed, encoding='utf-8')


def pandoc(work, typ_file):
    result = subprocess.run(
        ['pandoc', '--from', 'typst', '--to', 'html5', '--lua-filter', str(WEB / 'rulebook.lua'), typ_file],
        cwd=work, capture_output=True, text=True)
    if result.returncode != 0 or result.stderr.strip():
        sys.stderr.write(result.stderr)
        if result.returncode != 0:
            raise SystemExit('Pandoc failed on ' + typ_file)
    return result.stdout


def split_title(body, source_name):
    match = re.search(r'<h1[^>]*>(.*?)</h1>\s*', body, re.S)
    if not match:
        raise SystemExit(source_name + ' has no chapter() heading')
    title_html = match.group(1).strip()
    numbered = not title_html.startswith('WEBUNNUMBERED')
    title_html = title_html.replace('WEBUNNUMBERED', '', 1).strip()
    title = re.sub(r'\s+', ' ', html.unescape(re.sub(r'<[^>]+>', '', title_html))).strip()
    return title, numbered, body[:match.start()] + body[match.end():]


def headings(body, level=2):
    found = []
    for match in re.finditer(r'<h%d id="([^"]+)"[^>]*>(.*?)</h%d>' % (level, level), body, re.S):
        found.append((match.group(1), re.sub(r'\s+', ' ', re.sub(r'<[^>]+>', '', match.group(2))).strip()))
    return found


HEADING_LABEL = re.compile(r'^=+[ \t]+(\S+)[ \t].*<([\w-]+)>[ \t]*$', re.M)
SOURCE_REF = re.compile(r'(?<![\w@])@([A-Za-z][\w-]*[A-Za-z0-9])(?:\[([^\]]*)\])?')
WEB_REF = re.compile(r'href="WEBREF:([\w-]+)"')


def heading_numbers(text):
    """Map each labelled heading to the number typed at the start of its text."""
    return {label: number.rstrip('.') for number, label in HEADING_LABEL.findall(text)}


def link_refs(text, numbers):
    """Turn `@label` cross-references into plain links Pandoc keeps intact.

    The PDF prints `@label` as "§" plus the heading's typed number, `@a[§§]`
    with its own sign and `@b[]` with none (see common.typ). Pandoc's Typst
    reader drops supplements and spacing for labels outside the chapter it is
    converting, so write the visible text here and leave a `WEBREF:` link for
    resolve_refs() to point at the right chapter page.
    """
    def convert(line):
        def replace(match):
            label, supplement = match.group(1), match.group(2)
            if label not in numbers:
                raise SystemExit('Cross-reference to unknown heading: @' + label)
            sign = '§' if supplement is None else supplement
            # a following "(" or "[" would otherwise read as more arguments
            end = ';' if line[match.end():match.end() + 1] in ('(', '[') else ''
            return '#link("WEBREF:%s")[%s%s]%s' % (label, sign, numbers[label], end)
        return line if line.lstrip().startswith('//') else SOURCE_REF.sub(replace, line)
    return '\n'.join(convert(line) for line in text.split('\n'))


def resolve_refs(body, homes, own_slug):
    """Point each WEBREF link at its heading: same page, or ../<chapter>/#label."""
    def replace(match):
        label = match.group(1)
        if label not in homes:
            raise SystemExit('No web heading has the id ' + label)
        if homes[label] == own_slug:
            return 'href="#%s"' % label
        return 'href="../%s/#%s"' % (homes[label], label)
    return WEB_REF.sub(replace, body)


def front_matter(**fields):
    lines = ['---']
    for key, value in fields.items():
        escaped = str(value).replace('\\', '\\\\').replace('"', '\\"')
        lines.append('%s: "%s"' % (key, escaped))
    lines.append('---')
    return '\n'.join(lines) + '\n'


def raw(fragment):
    if '{% endraw %}' in fragment:
        raise SystemExit('Converted text contains {% endraw %}')
    return '{% raw %}\n' + fragment.strip() + '\n{% endraw %}\n'


def pager(chapters, index):
    parts = ['<nav class="rb-pager" aria-label="Chapter navigation">']
    if index > 0:
        prev = chapters[index - 1]
        parts.append('<a class="rb-prev" rel="prev" href="../%s/">&larr; %s</a>' % (prev['slug'], html.escape(prev['title'])))
    parts.append('<a class="rb-up" href="../">Contents</a>')
    if index + 1 < len(chapters):
        nxt = chapters[index + 1]
        parts.append('<a class="rb-next" rel="next" href="../%s/">%s &rarr;</a>' % (nxt['slug'], html.escape(nxt['title'])))
    parts.append('</nav>')
    return '\n'.join(parts) + '\n'


def chapter_toc(sections):
    if not sections:
        return ''
    items = ''.join('<li><a href="#%s">%s</a></li>\n' % (anchor, html.escape(text)) for anchor, text in sections)
    return ('<nav class="rb-toc" aria-labelledby="rb-toc-title">\n'
            '<p id="rb-toc-title" class="rb-toc-title">In this chapter</p>\n<ul>\n' + items + '</ul>\n</nav>\n')


def build(out, commit):
    root_text = (SOURCE / ROOT_FILE).read_text(encoding='utf-8')
    plan = chapter_plan(root_text)
    with tempfile.TemporaryDirectory() as temporary:
        work = Path(temporary) / 'src'
        prepare_source(work)
        chapters, number = [], 0
        for position, (include, art_lines) in enumerate(plan):
            wrapper = '_web_chapter_%02d.typ' % position
            (work / wrapper).write_text('#import "common.typ": *\n#include "%s"\n%s\n' % (include, '\n'.join(art_lines)), encoding='utf-8')
            body = pandoc(work, wrapper)
            title, numbered, body = split_title(body, include)
            if numbered:
                number += 1
                label = 'Chapter ' + ROMAN[number - 1]
            else:
                label = 'Appendix'
            chapters.append({'source': include, 'title': title, 'label': label, 'slug': slug(title), 'body': body,
                             'sections': headings(body)})
        slugs = [chapter['slug'] for chapter in chapters]
        if len(set(slugs)) != len(slugs):
            raise SystemExit('Two chapters share a page slug: ' + ', '.join(slugs))

        if out.exists():
            shutil.rmtree(out)
        out.mkdir(parents=True)

        homes = {}
        for chapter in chapters:
            for label in re.findall(r'<h[2-6] id="([^"]+)"', chapter['body']):
                homes[label] = chapter['slug']

        art = set()
        for index, chapter in enumerate(chapters):
            body = resolve_refs(chapter['body'], homes, chapter['slug'])
            for src in re.findall(r'<img src="(art/[^"]+)"', body):
                art.add(src)
            body = body.replace('<img src="art/', '<img loading="lazy" src="../art/')
            page = front_matter(
                title=chapter['title'],
                subtitle='%s · %s core rulebook' % (chapter['label'], BOOK_TITLE),
                description='%s, %s of the %s core rulebook, web edition.' % (chapter['title'], chapter['label'], BOOK_TITLE),
                permalink=SITE_PATH + chapter['slug'] + '/',
            )
            # the chapter blurb goes above the "In this chapter" list
            blurb = ''
            match = re.match(r'\s*(<div class="rb-chapter-blurb">.*?</div>)\s*', body, re.S)
            if match:
                blurb, body = match.group(1) + '\n', body[match.end():]
            page += '<div class="rulebook">\n'
            page += pager(chapters, index)
            if blurb:
                page += raw(blurb)
            page += chapter_toc(chapter['sections'])
            page += raw(body)
            page += pager(chapters, index)
            page += '</div>\n'
            (out / chapter['slug']).mkdir()
            (out / chapter['slug'] / 'index.html').write_text(page, encoding='utf-8')

        for src in sorted(art):
            target = out / src
            target.parent.mkdir(parents=True, exist_ok=True)
            shutil.copy(SOURCE / src, target)

        today = datetime.date.today().isoformat()
        contents = front_matter(
            title=BOOK_TITLE + ' core rulebook',
            subtitle='Version 2 web edition · playtest draft',
            description='The setting-neutral 2d12 System core rulebook, one page per chapter.',
            permalink=SITE_PATH,
        )
        contents += '<div class="rulebook rb-contents">\n'
        contents += '<p class="rb-motto">%s</p>\n' % html.escape(BOOK_MOTTO)
        contents += ('<p>This is the web edition of the core rulebook, generated from the Typst manuscript. '
                     'The <a href="%s">PDF</a> is the reference layout.</p>\n' % PDF_URL)
        contents += '<ol class="rb-chapters">\n'
        for chapter in chapters:
            contents += '<li>\n<p><span class="rb-chapter-label">%s</span> <a href="%s/">%s</a></p>\n' % (
                chapter['label'], chapter['slug'], html.escape(chapter['title']))
            if chapter['sections']:
                contents += '<ul>\n' + ''.join('<li><a href="%s/#%s">%s</a></li>\n' % (chapter['slug'], anchor, html.escape(text))
                                              for anchor, text in chapter['sections']) + '</ul>\n'
            contents += '</li>\n'
        contents += '</ol>\n'
        source_link = REPO_URL if not commit else '%s/tree/%s' % (REPO_URL, commit)
        contents += ('<p class="rb-source">Generated %s from <a href="%s">SkroxiousDM/2d12GameSystem%s</a>. '
                     'Edit the Typst source there; changes to these pages are overwritten.</p>\n'
                     % (today, source_link, (' at ' + commit[:7]) if commit else ''))
        contents += '</div>\n'
        (out / 'index.html').write_text(contents, encoding='utf-8')

    for chapter in chapters:
        print('%-10s %-45s %3d sections  %s' % (chapter['label'], chapter['title'], len(chapter['sections']), chapter['source']))
    print('Art files: %d' % len(art))


def main():
    parser = argparse.ArgumentParser(description=__doc__.splitlines()[0])
    parser.add_argument('--out', type=Path, default=REPO / 'build' / 'core-html')
    parser.add_argument('--commit', default='', help='source commit to record on the contents page')
    args = parser.parse_args()
    version = subprocess.run(['pandoc', '--version'], capture_output=True, text=True, check=True).stdout.split('\n')[0]
    print(version)
    if version.split()[-1] != TESTED_PANDOC:
        print('Warning: web edition was tested with pandoc %s' % TESTED_PANDOC, file=sys.stderr)
    build(args.out.resolve(), args.commit)


if __name__ == '__main__':
    main()
