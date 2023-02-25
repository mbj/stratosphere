module Stratosphere.DataSync.Task.TaskScheduleProperty (
        TaskScheduleProperty(..), mkTaskScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskScheduleProperty
  = TaskScheduleProperty {scheduleExpression :: (Value Prelude.Text)}
mkTaskScheduleProperty ::
  Value Prelude.Text -> TaskScheduleProperty
mkTaskScheduleProperty scheduleExpression
  = TaskScheduleProperty {scheduleExpression = scheduleExpression}
instance ToResourceProperties TaskScheduleProperty where
  toResourceProperties TaskScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.TaskSchedule",
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON TaskScheduleProperty where
  toJSON TaskScheduleProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" TaskScheduleProperty where
  type PropertyType "ScheduleExpression" TaskScheduleProperty = Value Prelude.Text
  set newValue TaskScheduleProperty {}
    = TaskScheduleProperty {scheduleExpression = newValue, ..}