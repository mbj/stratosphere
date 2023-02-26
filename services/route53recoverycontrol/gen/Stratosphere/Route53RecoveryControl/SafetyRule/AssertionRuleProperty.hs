module Stratosphere.Route53RecoveryControl.SafetyRule.AssertionRuleProperty (
        AssertionRuleProperty(..), mkAssertionRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AssertionRuleProperty
  = AssertionRuleProperty {assertedControls :: (ValueList Prelude.Text),
                           waitPeriodMs :: (Value Prelude.Integer)}
mkAssertionRuleProperty ::
  ValueList Prelude.Text
  -> Value Prelude.Integer -> AssertionRuleProperty
mkAssertionRuleProperty assertedControls waitPeriodMs
  = AssertionRuleProperty
      {assertedControls = assertedControls, waitPeriodMs = waitPeriodMs}
instance ToResourceProperties AssertionRuleProperty where
  toResourceProperties AssertionRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::SafetyRule.AssertionRule",
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