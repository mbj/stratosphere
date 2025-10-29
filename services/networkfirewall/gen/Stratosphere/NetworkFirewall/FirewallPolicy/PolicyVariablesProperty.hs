module Stratosphere.NetworkFirewall.FirewallPolicy.PolicyVariablesProperty (
        module Exports, PolicyVariablesProperty(..),
        mkPolicyVariablesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.NetworkFirewall.FirewallPolicy.IPSetProperty as Exports
import Stratosphere.ResourceProperties
data PolicyVariablesProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-policyvariables.html>
    PolicyVariablesProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-policyvariables.html#cfn-networkfirewall-firewallpolicy-policyvariables-rulevariables>
                             ruleVariables :: (Prelude.Maybe (Prelude.Map Prelude.Text IPSetProperty))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPolicyVariablesProperty :: PolicyVariablesProperty
mkPolicyVariablesProperty
  = PolicyVariablesProperty {ruleVariables = Prelude.Nothing}
instance ToResourceProperties PolicyVariablesProperty where
  toResourceProperties PolicyVariablesProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.PolicyVariables",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RuleVariables" Prelude.<$> ruleVariables])}
instance JSON.ToJSON PolicyVariablesProperty where
  toJSON PolicyVariablesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RuleVariables" Prelude.<$> ruleVariables]))
instance Property "RuleVariables" PolicyVariablesProperty where
  type PropertyType "RuleVariables" PolicyVariablesProperty = Prelude.Map Prelude.Text IPSetProperty
  set newValue PolicyVariablesProperty {}
    = PolicyVariablesProperty
        {ruleVariables = Prelude.pure newValue, ..}