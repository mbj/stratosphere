module Stratosphere.NetworkFirewall.RuleGroup.RuleGroupProperty (
        module Exports, RuleGroupProperty(..), mkRuleGroupProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.ReferenceSetsProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RuleVariablesProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.RulesSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleOptionsProperty as Exports
import Stratosphere.ResourceProperties
data RuleGroupProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html>
    RuleGroupProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-referencesets>
                       referenceSets :: (Prelude.Maybe ReferenceSetsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-rulevariables>
                       ruleVariables :: (Prelude.Maybe RuleVariablesProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-rulessource>
                       rulesSource :: RulesSourceProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulegroup.html#cfn-networkfirewall-rulegroup-rulegroup-statefulruleoptions>
                       statefulRuleOptions :: (Prelude.Maybe StatefulRuleOptionsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleGroupProperty :: RulesSourceProperty -> RuleGroupProperty
mkRuleGroupProperty rulesSource
  = RuleGroupProperty
      {haddock_workaround_ = (), rulesSource = rulesSource,
       referenceSets = Prelude.Nothing, ruleVariables = Prelude.Nothing,
       statefulRuleOptions = Prelude.Nothing}
instance ToResourceProperties RuleGroupProperty where
  toResourceProperties RuleGroupProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleGroup",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RulesSource" JSON..= rulesSource]
                           (Prelude.catMaybes
                              [(JSON..=) "ReferenceSets" Prelude.<$> referenceSets,
                               (JSON..=) "RuleVariables" Prelude.<$> ruleVariables,
                               (JSON..=) "StatefulRuleOptions" Prelude.<$> statefulRuleOptions]))}
instance JSON.ToJSON RuleGroupProperty where
  toJSON RuleGroupProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RulesSource" JSON..= rulesSource]
              (Prelude.catMaybes
                 [(JSON..=) "ReferenceSets" Prelude.<$> referenceSets,
                  (JSON..=) "RuleVariables" Prelude.<$> ruleVariables,
                  (JSON..=) "StatefulRuleOptions" Prelude.<$> statefulRuleOptions])))
instance Property "ReferenceSets" RuleGroupProperty where
  type PropertyType "ReferenceSets" RuleGroupProperty = ReferenceSetsProperty
  set newValue RuleGroupProperty {..}
    = RuleGroupProperty {referenceSets = Prelude.pure newValue, ..}
instance Property "RuleVariables" RuleGroupProperty where
  type PropertyType "RuleVariables" RuleGroupProperty = RuleVariablesProperty
  set newValue RuleGroupProperty {..}
    = RuleGroupProperty {ruleVariables = Prelude.pure newValue, ..}
instance Property "RulesSource" RuleGroupProperty where
  type PropertyType "RulesSource" RuleGroupProperty = RulesSourceProperty
  set newValue RuleGroupProperty {..}
    = RuleGroupProperty {rulesSource = newValue, ..}
instance Property "StatefulRuleOptions" RuleGroupProperty where
  type PropertyType "StatefulRuleOptions" RuleGroupProperty = StatefulRuleOptionsProperty
  set newValue RuleGroupProperty {..}
    = RuleGroupProperty
        {statefulRuleOptions = Prelude.pure newValue, ..}