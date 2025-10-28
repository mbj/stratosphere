module Stratosphere.IoTAnalytics.Dataset.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-schedule.html>
    ScheduleProperty {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotanalytics-dataset-schedule.html#cfn-iotanalytics-dataset-schedule-scheduleexpression>
                      scheduleExpression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: Value Prelude.Text -> ScheduleProperty
mkScheduleProperty scheduleExpression
  = ScheduleProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Schedule",
         supportsTags = Prelude.False,
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" ScheduleProperty where
  type PropertyType "ScheduleExpression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {scheduleExpression = newValue, ..}