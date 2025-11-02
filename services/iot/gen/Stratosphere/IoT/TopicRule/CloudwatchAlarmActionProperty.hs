module Stratosphere.IoT.TopicRule.CloudwatchAlarmActionProperty (
        CloudwatchAlarmActionProperty(..), mkCloudwatchAlarmActionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CloudwatchAlarmActionProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html>
    CloudwatchAlarmActionProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-alarmname>
                                   alarmName :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-rolearn>
                                   roleArn :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statereason>
                                   stateReason :: (Value Prelude.Text),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iot-topicrule-cloudwatchalarmaction.html#cfn-iot-topicrule-cloudwatchalarmaction-statevalue>
                                   stateValue :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCloudwatchAlarmActionProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text -> CloudwatchAlarmActionProperty
mkCloudwatchAlarmActionProperty
  alarmName
  roleArn
  stateReason
  stateValue
  = CloudwatchAlarmActionProperty
      {haddock_workaround_ = (), alarmName = alarmName,
       roleArn = roleArn, stateReason = stateReason,
       stateValue = stateValue}
instance ToResourceProperties CloudwatchAlarmActionProperty where
  toResourceProperties CloudwatchAlarmActionProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::TopicRule.CloudwatchAlarmAction",
         supportsTags = Prelude.False,
         properties = ["AlarmName" JSON..= alarmName,
                       "RoleArn" JSON..= roleArn, "StateReason" JSON..= stateReason,
                       "StateValue" JSON..= stateValue]}
instance JSON.ToJSON CloudwatchAlarmActionProperty where
  toJSON CloudwatchAlarmActionProperty {..}
    = JSON.object
        ["AlarmName" JSON..= alarmName, "RoleArn" JSON..= roleArn,
         "StateReason" JSON..= stateReason, "StateValue" JSON..= stateValue]
instance Property "AlarmName" CloudwatchAlarmActionProperty where
  type PropertyType "AlarmName" CloudwatchAlarmActionProperty = Value Prelude.Text
  set newValue CloudwatchAlarmActionProperty {..}
    = CloudwatchAlarmActionProperty {alarmName = newValue, ..}
instance Property "RoleArn" CloudwatchAlarmActionProperty where
  type PropertyType "RoleArn" CloudwatchAlarmActionProperty = Value Prelude.Text
  set newValue CloudwatchAlarmActionProperty {..}
    = CloudwatchAlarmActionProperty {roleArn = newValue, ..}
instance Property "StateReason" CloudwatchAlarmActionProperty where
  type PropertyType "StateReason" CloudwatchAlarmActionProperty = Value Prelude.Text
  set newValue CloudwatchAlarmActionProperty {..}
    = CloudwatchAlarmActionProperty {stateReason = newValue, ..}
instance Property "StateValue" CloudwatchAlarmActionProperty where
  type PropertyType "StateValue" CloudwatchAlarmActionProperty = Value Prelude.Text
  set newValue CloudwatchAlarmActionProperty {..}
    = CloudwatchAlarmActionProperty {stateValue = newValue, ..}