import unittest
from build_html import chapter_plan, fix_enum_starts, heading_numbers, link_refs, resolve_refs, slug, split_title


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

    def test_heading_numbers_read_typed_number(self):
        source = '== 8. Templates <adv-templates>\n=== 10.2 Setup <core-setup>\n=== Unlabelled\n'
        self.assertEqual(heading_numbers(source), {'adv-templates': '8', 'core-setup': '10.2'})

    def test_link_refs_writes_section_numbers(self):
        numbers = {'core-setup': '10.2', 'core-superiority': '10.3', 'adv-bolt': '7.12'}
        source = 'See @adv-bolt; Core Rules @core-setup[§§]--@core-superiority[]. Mail a@b.c\n// @nope stays\n'
        self.assertEqual(link_refs(source, numbers),
                         'See #link("WEBREF:adv-bolt")[§7.12]; Core Rules #link("WEBREF:core-setup")[§§10.2]--'
                         '#link("WEBREF:core-superiority")[10.3]. Mail a@b.c\n// @nope stays\n')

    def test_link_refs_ends_expression_before_bracket(self):
        self.assertEqual(link_refs('@core-setup(x) @core-setup', {'core-setup': '10.2'}),
                         '#link("WEBREF:core-setup")[§10.2];(x) #link("WEBREF:core-setup")[§10.2]')

    def test_link_refs_rejects_unknown_label(self):
        with self.assertRaises(SystemExit):
            link_refs('See @nope.', {})

    def test_resolve_refs_points_across_chapters(self):
        body = '<a href="WEBREF:adv-bolt">§7.12</a> <a\nhref="WEBREF:core-setup">§10.2</a>'
        homes = {'adv-bolt': 'adversaries', 'core-setup': 'core-rules'}
        self.assertEqual(resolve_refs(body, homes, 'adversaries'),
                         '<a href="#adv-bolt">§7.12</a> <a\nhref="../core-rules/#core-setup">§10.2</a>')

    def test_slug(self):
        self.assertEqual(slug('Cyphers & Artifacts'), 'cyphers-artifacts')


if __name__ == '__main__':
    unittest.main()
