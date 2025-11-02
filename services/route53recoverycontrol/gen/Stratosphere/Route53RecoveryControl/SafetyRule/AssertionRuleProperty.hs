module Stratosphere.Route53RecoveryControl.SafetyRule.AssertionRuleProperty (
        AssertionRuleProperty(..), mkAssertionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssertionRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-safetyrule-assertionrule.html>
    AssertionRuleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-safetyrule-assertionrule.html#cfn-route53recoverycontrol-safetyrule-assertionrule-assertedcontrols>
                           assertedControls :: (ValueList Prelude.Text),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53recoverycontrol-safetyrule-assertionrule.html#cfn-route53recoverycontrol-safetyrule-assertionrule-waitperiodms>
                           waitPeriodMs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAssertionRuleProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Integer -> AssertionRuleProperty
mkAssertionRuleProperty assertedControls waitPeriodMs
  = AssertionRuleProperty
      {haddock_workaround_ = (), assertedControls = assertedControls,
       waitPeriodMs = waitPeriodMs}
instance ToResourceProperties AssertionRuleProperty where
  toResourceProperties AssertionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::SafetyRule.AssertionRule",
         supportsTags = Prelude.False,
         properties = ["AssertedControls" JSON..= assertedControls,
                       "WaitPeriodMs" JSON..= waitPeriodMs]}
instance JSON.ToJSON AssertionRuleProperty where
  toJSON AssertionRuleProperty {..}
    = JSON.object
        ["AssertedControls" JSON..= assertedControls,
         "WaitPeriodMs" JSON..= waitPeriodMs]
instance Property "AssertedControls" AssertionRuleProperty where
  type PropertyType "AssertedControls" AssertionRuleProperty = ValueList Prelude.Text
  set newValue AssertionRuleProperty {..}
    = AssertionRuleProperty {assertedControls = newValue, ..}
instance Property "WaitPeriodMs" AssertionRuleProperty where
  type PropertyType "WaitPeriodMs" AssertionRuleProperty = Value Prelude.Integer
  set newValue AssertionRuleProperty {..}
    = AssertionRuleProperty {waitPeriodMs = newValue, ..}