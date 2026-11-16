import unittest
from build_html import chapter_plan, fix_enum_starts, slug, split_title


class BuildHtmlTests(unittest.TestCase):
    def test_enum_start_becomes_explicit_number(self):
        source = '#block[\n#set enum(numbering: "1.", start: 4)\n+ First\n+ Second\n]\n'
        self.assertEqual(fix_enum_starts(source), '#block[\n4. First\n+ Second\n]\n')

    def test_other_enum_rules_are_left_alone(self):
        source = '  #set enum(numbering: n => [#n.])\n+ First\n'
        self.assertEqual(fix_enum_starts(source), source)

    def test_chapter_plan_attaches_art_to_previous_include(self):
        root = '#include "a.typ"\n// note\n#art-fill[Lantern.]\n#include "b.typ"\n'
        self.assertEqual(chapter_plan(root), [('a.typ', ['#art-fill[Lantern.]']), ('b.typ', [])])

    def test_split_title_reads_unnumbered_marker(self):
        title, numbered, rest = split_title('<h1 id="x">WEBUNNUMBERED Quick\nReference</h1>\n<p>Body</p>', 'q.typ')
        self.assertEqual((title, numbered, rest), ('Quick Reference', False, '<p>Body</p>'))

    def test_slug(self):
        self.assertEqual(slug('Cyphers & Artifacts'), 'cyphers-artifacts')


if __name__ == '__main__':
    unittest.main()
