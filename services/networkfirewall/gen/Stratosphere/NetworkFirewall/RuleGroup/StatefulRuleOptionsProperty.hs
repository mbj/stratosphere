module Stratosphere.NetworkFirewall.RuleGroup.StatefulRuleOptionsProperty (
        StatefulRuleOptionsProperty(..), mkStatefulRuleOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StatefulRuleOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulruleoptions.html>
    StatefulRuleOptionsProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-rulegroup-statefulruleoptions.html#cfn-networkfirewall-rulegroup-statefulruleoptions-ruleorder>
                                 ruleOrder :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStatefulRuleOptionsProperty :: StatefulRuleOptionsProperty
mkStatefulRuleOptionsProperty
  = StatefulRuleOptionsProperty
      {haddock_workaround_ = (), ruleOrder = Prelude.Nothing}
instance ToResourceProperties StatefulRuleOptionsProperty where
  toResourceProperties StatefulRuleOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::RuleGroup.StatefulRuleOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "RuleOrder" Prelude.<$> ruleOrder])}
instance JSON.ToJSON StatefulRuleOptionsProperty where
  toJSON StatefulRuleOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "RuleOrder" Prelude.<$> ruleOrder]))
instance Property "RuleOrder" StatefulRuleOptionsProperty where
  type PropertyType "RuleOrder" StatefulRuleOptionsProperty = Value Prelude.Text
  set newValue StatefulRuleOptionsProperty {..}
    = StatefulRuleOptionsProperty
        {ruleOrder = Prelude.pure newValue, ..}