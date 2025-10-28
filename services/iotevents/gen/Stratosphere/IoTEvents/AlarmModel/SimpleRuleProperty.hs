module Stratosphere.IoTEvents.AlarmModel.SimpleRuleProperty (
        SimpleRuleProperty(..), mkSimpleRuleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SimpleRuleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-simplerule.html>
    SimpleRuleProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-simplerule.html#cfn-iotevents-alarmmodel-simplerule-comparisonoperator>
                        comparisonOperator :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-simplerule.html#cfn-iotevents-alarmmodel-simplerule-inputproperty>
                        inputProperty :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotevents-alarmmodel-simplerule.html#cfn-iotevents-alarmmodel-simplerule-threshold>
                        threshold :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSimpleRuleProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> SimpleRuleProperty
mkSimpleRuleProperty comparisonOperator inputProperty threshold
  = SimpleRuleProperty
      {haddock_workaround_ = (), comparisonOperator = comparisonOperator,
       inputProperty = inputProperty, threshold = threshold}
instance ToResourceProperties SimpleRuleProperty where
  toResourceProperties SimpleRuleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTEvents::AlarmModel.SimpleRule",
         supportsTags = Prelude.False,
         properties = ["ComparisonOperator" JSON..= comparisonOperator,
                       "InputProperty" JSON..= inputProperty,
                       "Threshold" JSON..= threshold]}
instance JSON.ToJSON SimpleRuleProperty where
  toJSON SimpleRuleProperty {..}
    = JSON.object
        ["ComparisonOperator" JSON..= comparisonOperator,
         "InputProperty" JSON..= inputProperty,
         "Threshold" JSON..= threshold]
instance Property "ComparisonOperator" SimpleRuleProperty where
  type PropertyType "ComparisonOperator" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {comparisonOperator = newValue, ..}
instance Property "InputProperty" SimpleRuleProperty where
  type PropertyType "InputProperty" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {inputProperty = newValue, ..}
instance Property "Threshold" SimpleRuleProperty where
  type PropertyType "Threshold" SimpleRuleProperty = Value Prelude.Text
  set newValue SimpleRuleProperty {..}
    = SimpleRuleProperty {threshold = newValue, ..}