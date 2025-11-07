module Stratosphere.ARCRegionSwitch.Plan.TriggerConditionProperty (
        TriggerConditionProperty(..), mkTriggerConditionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TriggerConditionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-triggercondition.html>
    TriggerConditionProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-triggercondition.html#cfn-arcregionswitch-plan-triggercondition-associatedalarmname>
                              associatedAlarmName :: (Value Prelude.Text),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-arcregionswitch-plan-triggercondition.html#cfn-arcregionswitch-plan-triggercondition-condition>
                              condition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTriggerConditionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TriggerConditionProperty
mkTriggerConditionProperty associatedAlarmName condition
  = TriggerConditionProperty
      {haddock_workaround_ = (),
       associatedAlarmName = associatedAlarmName, condition = condition}
instance ToResourceProperties TriggerConditionProperty where
  toResourceProperties TriggerConditionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ARCRegionSwitch::Plan.TriggerCondition",
         supportsTags = Prelude.False,
         properties = ["AssociatedAlarmName" JSON..= associatedAlarmName,
                       "Condition" JSON..= condition]}
instance JSON.ToJSON TriggerConditionProperty where
  toJSON TriggerConditionProperty {..}
    = JSON.object
        ["AssociatedAlarmName" JSON..= associatedAlarmName,
         "Condition" JSON..= condition]
instance Property "AssociatedAlarmName" TriggerConditionProperty where
  type PropertyType "AssociatedAlarmName" TriggerConditionProperty = Value Prelude.Text
  set newValue TriggerConditionProperty {..}
    = TriggerConditionProperty {associatedAlarmName = newValue, ..}
instance Property "Condition" TriggerConditionProperty where
  type PropertyType "Condition" TriggerConditionProperty = Value Prelude.Text
  set newValue TriggerConditionProperty {..}
    = TriggerConditionProperty {condition = newValue, ..}