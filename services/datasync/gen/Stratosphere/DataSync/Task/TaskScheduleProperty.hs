module Stratosphere.DataSync.Task.TaskScheduleProperty (
        TaskScheduleProperty(..), mkTaskScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskScheduleProperty
  = TaskScheduleProperty {scheduleExpression :: (Prelude.Maybe (Value Prelude.Text)),
                          status :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskScheduleProperty :: TaskScheduleProperty
mkTaskScheduleProperty
  = TaskScheduleProperty
      {scheduleExpression = Prelude.Nothing, status = Prelude.Nothing}
instance ToResourceProperties TaskScheduleProperty where
  toResourceProperties TaskScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task.TaskSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
                            (JSON..=) "Status" Prelude.<$> status])}
instance JSON.ToJSON TaskScheduleProperty where
  toJSON TaskScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression,
               (JSON..=) "Status" Prelude.<$> status]))
instance Property "ScheduleExpression" TaskScheduleProperty where
  type PropertyType "ScheduleExpression" TaskScheduleProperty = Value Prelude.Text
  set newValue TaskScheduleProperty {..}
    = TaskScheduleProperty
        {scheduleExpression = Prelude.pure newValue, ..}
instance Property "Status" TaskScheduleProperty where
  type PropertyType "Status" TaskScheduleProperty = Value Prelude.Text
  set newValue TaskScheduleProperty {..}
    = TaskScheduleProperty {status = Prelude.pure newValue, ..}