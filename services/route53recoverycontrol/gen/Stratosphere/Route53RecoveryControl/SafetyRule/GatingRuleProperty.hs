module Stratosphere.Route53RecoveryControl.SafetyRule.GatingRuleProperty (
        GatingRuleProperty(..), mkGatingRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data GatingRuleProperty
  = GatingRuleProperty {gatingControls :: (ValueList Prelude.Text),
                        targetControls :: (ValueList Prelude.Text),
                        waitPeriodMs :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkGatingRuleProperty ::
  ValueList Prelude.Text
  -> ValueList Prelude.Text
     -> Value Prelude.Integer -> GatingRuleProperty
mkGatingRuleProperty gatingControls targetControls waitPeriodMs
  = GatingRuleProperty
      {gatingControls = gatingControls, targetControls = targetControls,
       waitPeriodMs = waitPeriodMs}
instance ToResourceProperties GatingRuleProperty where
  toResourceProperties GatingRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53RecoveryControl::SafetyRule.GatingRule",
         supportsTags = Prelude.False,
         properties = ["GatingControls" JSON..= gatingControls,
                       "TargetControls" JSON..= targetControls,
                       "WaitPeriodMs" JSON..= waitPeriodMs]}
instance JSON.ToJSON GatingRuleProperty where
  toJSON GatingRuleProperty {..}
    = JSON.object
        ["GatingControls" JSON..= gatingControls,
         "TargetControls" JSON..= targetControls,
         "WaitPeriodMs" JSON..= waitPeriodMs]
instance Property "GatingControls" GatingRuleProperty where
  type PropertyType "GatingControls" GatingRuleProperty = ValueList Prelude.Text
  set newValue GatingRuleProperty {..}
    = GatingRuleProperty {gatingControls = newValue, ..}
instance Property "TargetControls" GatingRuleProperty where
  type PropertyType "TargetControls" GatingRuleProperty = ValueList Prelude.Text
  set newValue GatingRuleProperty {..}
    = GatingRuleProperty {targetControls = newValue, ..}
instance Property "WaitPeriodMs" GatingRuleProperty where
  type PropertyType "WaitPeriodMs" GatingRuleProperty = Value Prelude.Integer
  set newValue GatingRuleProperty {..}
    = GatingRuleProperty {waitPeriodMs = newValue, ..}