module Stratosphere.NetworkFirewall.FirewallPolicy.StatefulRuleGroupOverrideProperty (
        StatefulRuleGroupOverrideProperty(..),
        mkStatefulRuleGroupOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulRuleGroupOverrideProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupoverride.html>
    StatefulRuleGroupOverrideProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-statefulrulegroupoverride.html#cfn-networkfirewall-firewallpolicy-statefulrulegroupoverride-action>
                                       action :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulRuleGroupOverrideProperty ::
  StatefulRuleGroupOverrideProperty
mkStatefulRuleGroupOverrideProperty
  = StatefulRuleGroupOverrideProperty
      {haddock_workaround_ = (), action = Prelude.Nothing}
instance ToResourceProperties StatefulRuleGroupOverrideProperty where
  toResourceProperties StatefulRuleGroupOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.StatefulRuleGroupOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action])}
instance JSON.ToJSON StatefulRuleGroupOverrideProperty where
  toJSON StatefulRuleGroupOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Action" Prelude.<$> action]))
instance Property "Action" StatefulRuleGroupOverrideProperty where
  type PropertyType "Action" StatefulRuleGroupOverrideProperty = Value Prelude.Text
  set newValue StatefulRuleGroupOverrideProperty {..}
    = StatefulRuleGroupOverrideProperty
        {action = Prelude.pure newValue, ..}