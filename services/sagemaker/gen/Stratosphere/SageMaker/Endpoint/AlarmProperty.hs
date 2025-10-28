module Stratosphere.SageMaker.Endpoint.AlarmProperty (
        AlarmProperty(..), mkAlarmProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AlarmProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-alarm.html>
    AlarmProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpoint-alarm.html#cfn-sagemaker-endpoint-alarm-alarmname>
                   alarmName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAlarmProperty :: Value Prelude.Text -> AlarmProperty
mkAlarmProperty alarmName = AlarmProperty {alarmName = alarmName}
instance ToResourceProperties AlarmProperty where
  toResourceProperties AlarmProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Endpoint.Alarm",
         supportsTags = Prelude.False,
         properties = ["AlarmName" JSON..= alarmName]}
instance JSON.ToJSON AlarmProperty where
  toJSON AlarmProperty {..}
    = JSON.object ["AlarmName" JSON..= alarmName]
instance Property "AlarmName" AlarmProperty where
  type PropertyType "AlarmName" AlarmProperty = Value Prelude.Text
  set newValue AlarmProperty {}
    = AlarmProperty {alarmName = newValue, ..}