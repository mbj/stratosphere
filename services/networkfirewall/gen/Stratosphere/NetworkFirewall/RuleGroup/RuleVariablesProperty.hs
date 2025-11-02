module Stratosphere.NetworkFirewall.RuleGroup.RuleVariablesProperty (
        module Exports, RuleVariablesProperty(..), mkRuleVariablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.IPSetProperty as Exports
import {-# SOURCE #-} Stratosphere.NetworkFirewall.RuleGroup.PortSetProperty as Exports
import Stratosphere.ResourceProperties
data RuleVariablesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulevariables.html>
    RuleVariablesProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulevariables.html#cfn-networkfirewall-rulegroup-rulevariables-ipsets>
                           iPSets :: (Prelude.Maybe (Prelude.Map Prelude.Text IPSetProperty)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-rulevariables.html#cfn-networkfirewall-rulegroup-rulevariables-portsets>
                           portSets :: (Prelude.Maybe (Prelude.Map Prelude.Text PortSetProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRuleVariablesProperty :: RuleVariablesProperty
mkRuleVariablesProperty
  = RuleVariablesProperty
      {haddock_workaround_ = (), iPSets = Prelude.Nothing,
       portSets = Prelude.Nothing}
instance ToResourceProperties RuleVariablesProperty where
  toResourceProperties RuleVariablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.RuleVariables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "IPSets" Prelude.<$> iPSets,
                            (JSON..=) "PortSets" Prelude.<$> portSets])}
instance JSON.ToJSON RuleVariablesProperty where
  toJSON RuleVariablesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "IPSets" Prelude.<$> iPSets,
               (JSON..=) "PortSets" Prelude.<$> portSets]))
instance Property "IPSets" RuleVariablesProperty where
  type PropertyType "IPSets" RuleVariablesProperty = Prelude.Map Prelude.Text IPSetProperty
  set newValue RuleVariablesProperty {..}
    = RuleVariablesProperty {iPSets = Prelude.pure newValue, ..}
instance Property "PortSets" RuleVariablesProperty where
  type PropertyType "PortSets" RuleVariablesProperty = Prelude.Map Prelude.Text PortSetProperty
  set newValue RuleVariablesProperty {..}
    = RuleVariablesProperty {portSets = Prelude.pure newValue, ..}