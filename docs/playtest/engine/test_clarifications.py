"""Targeted B01-B03 tests against the actual derived combat engine."""
import copy
import unittest
import combat_engine as e

class ClarificationTests(unittest.TestCase):
    def state(self):
        s=e.initial(7)
        s.update(pc=4,npc=3,woe=1,test_no_bonus_spending=True,inj={'Mara','Tavi','Ione'})
        s['fixed_dice']={(0,0):[7,6],(1,0):[6,5]}
        return s

    def test_repair_after_both_independent_actions(self):
        s=self.state()
        event=e.battle_step(s,0,0,'Ione','Attack','Sentinel','Attack',7)
        self.assertEqual((s['pc'],s['npc'],s['woe']),(2,2,0))
        self.assertTrue(event['repair']['applied'])
        self.assertEqual(event['repair']['stage'],'after_independent_actions_before_outcome')

    def test_repair_prevents_mutual_defeat(self):
        s=self.state();s['pc']=2
        e.battle_step(s,0,0,'Ione','Attack','Sentinel','Attack',7)
        self.assertEqual((s['pc'],s['npc']),(0,2))

    def test_one_use_per_guardian_per_exchange(self):
        s=e.initial(7);s.update(npc=7,woe=3)
        self.assertTrue(e.finish_self_repair(s,0,0,'Gatekeeper',True)['applied'])
        self.assertFalse(e.finish_self_repair(s,0,2,'Gatekeeper',True)['applied'])
        self.assertEqual((s['npc'],s['woe']),(9,2))

    def test_separate_guardian_limits(self):
        s=e.initial(7);s.update(npc=7,woe=3)
        e.finish_self_repair(s,0,0,'Gatekeeper',True)
        self.assertTrue(e.finish_self_repair(s,0,1,'Sentinel',True)['applied'])
        self.assertEqual(s['npc'],11)

    def test_reset_only_on_new_exchange(self):
        s=e.initial(7);s.update(npc=7,woe=3)
        e.finish_self_repair(s,0,0,'Gatekeeper',True)
        e.begin_exchange(s,0)
        self.assertIn('Gatekeeper',s['repair_used'])
        self.assertTrue(e.finish_self_repair(s,1,0,'Gatekeeper',True)['applied'])

    def test_success_at_cost_qualifies_in_real_volley(self):
        s=self.state();s.update(pc=20,npc=7)
        s['fixed_dice']={(0,0):[8,6],(1,0):[4,3]}
        event=e.battle_step(s,0,0,'Mara','Attack','Sentinel','Attack',7)
        self.assertTrue(event['repair']['applied'])

    def test_trumped_guardian_cannot_repair(self):
        s=self.state();s['npc']=7;s['fixed_dice']={(0,0):[10,9]}
        event=e.battle_step(s,0,0,'Tavi','Feint','Gatekeeper','Defend',7)
        self.assertFalse(event['repair']['applied'])
        self.assertEqual(s['woe'],1)

    def test_unavailable_guardian_cannot_repair(self):
        s=e.initial(7);s.update(npc=0,woe=1);s['npc_available']['Gatekeeper']=False
        self.assertFalse(e.finish_self_repair(s,0,0,'Gatekeeper',True)['applied'])

    def test_recovery_prohibition(self):
        s=e.initial(7);s.update(npc=0,woe=1,disposition_recovery_prohibited=True)
        self.assertFalse(e.finish_self_repair(s,0,0,'Gatekeeper',True)['applied'])
        self.assertEqual(s['npc'],0)

    def test_final_outcome_is_not_reopened(self):
        s=e.initial(7);s.update(npc=0,woe=1,outcome_finalized=True)
        self.assertFalse(e.finish_self_repair(s,0,0,'Gatekeeper',True)['applied'])

    def test_cap_and_no_clamping_of_existing_excess(self):
        s=e.initial(7);s.update(npc=12,woe=2)
        e.finish_self_repair(s,0,0,'Gatekeeper',True)
        self.assertEqual(s['npc'],13)
        s['npc']=15
        self.assertFalse(e.finish_self_repair(s,0,1,'Sentinel',True)['applied'])
        self.assertEqual(s['npc'],15)

    def test_physical_status_is_an_alternative(self):
        s=e.initial(7);s.update(npc=7,woe=1)
        s['npc_statuses']['Gatekeeper']={'damaged':{'tier':3,'repairable':True}}
        event=e.finish_self_repair(s,0,0,'Gatekeeper',True,'status','damaged')
        self.assertTrue(event['applied'])
        self.assertEqual(s['npc_statuses']['Gatekeeper']['damaged']['tier'],1)
        self.assertEqual(s['npc'],7)

    def test_domain_scope_no_automatic_modifier(self):
        s=e.initial(7);s['domain_scope']='Dramatic'
        self.assertEqual(e.conflict_target(s,'Attack','Sentinel','Ione'),16)
        s['truth']=True
        self.assertEqual(e.conflict_target(s,'Attack','Gatekeeper','Ione'),20)

    def test_explicit_scope_exception_retained(self):
        s=e.initial(7);s['explicit_scope_adjustment']=3
        self.assertEqual(e.conflict_target(s,'Attack','Sentinel','Ione'),19)
        self.assertEqual(e.conflict_target(s,'Attack','Sentinel','Mara'),16)

    def test_unpermitted_working_rejected_before_payment(self):
        s=self.state();s['working_scope_permitted']=False;before=copy.deepcopy(s['pool'])
        with self.assertRaises(ValueError):e.battle_step(s,0,0,'Ione','Attack','Sentinel','Attack',7)
        self.assertEqual(s['pool'],before)

    def test_protocol_target_filter_and_early_commitment(self):
        s=e.initial(7)
        self.assertEqual(e.reveal_protocol(s,1,'Gatekeeper'),[(1,'Maneuver')])
        self.assertEqual(set(s['committed']),{(1,1)})
        self.assertEqual(set(s['known']),{(1,1)})

    def test_protocol_two_assignments_for_one_target(self):
        s=e.initial(7)
        self.assertEqual(e.reveal_protocol(s,1,'Sentinel'),[(0,'Attack'),(2,'Defend')])

    def test_paid_change_preserves_snapshot(self):
        s=e.initial(7);e.reveal_protocol(s,1,'Gatekeeper');snapshot=e.hunter_information(s)
        e.change_npc_action(s,1,1,'Attack')
        e.commit_exchange(s,1)
        self.assertEqual(s['committed'][(1,1)],('Gatekeeper','Attack'))
        self.assertEqual(e.hunter_information(s),snapshot)
        self.assertEqual(s['woe'],3)

    def test_no_free_rewrite_before_formal_scripting(self):
        s=e.initial(7);e.reveal_protocol(s,1,'Gatekeeper');s['woe']=0
        with self.assertRaises(ValueError):e.change_npc_action(s,1,1,'Attack')
        self.assertEqual(s['committed'][(1,1)],('Gatekeeper','Maneuver'))

    def test_no_change_after_reveal_or_actor_reassignment(self):
        s=e.initial(7);e.reveal_protocol(s,1,'Gatekeeper')
        with self.assertRaises(ValueError):e.change_npc_action(s,1,1,'Attack',actor='Sentinel')
        e.reveal_committed_action(s,1,1)
        with self.assertRaises(ValueError):e.change_npc_action(s,1,1,'Attack')

    def test_knowledge_retained_without_future_confirmation(self):
        s=e.initial(7);e.reveal_protocol(s,1,'Gatekeeper');e.begin_exchange(s,2)
        self.assertEqual(s['known'][(1,1)],'Maneuver')
        self.assertFalse(any(ex==2 for ex,v in s['known']))
        self.assertNotIn('committed',e.hunter_information(s))

    def test_engine_discover_uses_real_protocol_path(self):
        s=self.state();s.update(pc=20,npc=13,woe=0)
        def buy(*args):return True,{}
        event=e.battle_step(s,0,0,'Ione','Attack','Sentinel','Attack',7,buy,lambda ex,target:e.reveal_protocol(s,ex,target))
        self.assertTrue(event['discovered'])
        self.assertEqual(set(s['known']),{(1,0),(1,2)})
        self.assertEqual(set(s['committed']),{(1,0),(1,2)})

if __name__=='__main__':unittest.main()
