module Stratosphere.Scheduler.Schedule (
        module Exports, Schedule(..), mkSchedule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.FlexibleTimeWindowProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.TargetProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Schedule
  = Schedule {description :: (Prelude.Maybe (Value Prelude.Text)),
              endDate :: (Prelude.Maybe (Value Prelude.Text)),
              flexibleTimeWindow :: FlexibleTimeWindowProperty,
              groupName :: (Prelude.Maybe (Value Prelude.Text)),
              kmsKeyArn :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              scheduleExpression :: (Value Prelude.Text),
              scheduleExpressionTimezone :: (Prelude.Maybe (Value Prelude.Text)),
              startDate :: (Prelude.Maybe (Value Prelude.Text)),
              state :: (Prelude.Maybe (Value Prelude.Text)),
              target :: TargetProperty}
mkSchedule ::
  FlexibleTimeWindowProperty
  -> Value Prelude.Text -> TargetProperty -> Schedule
mkSchedule flexibleTimeWindow scheduleExpression target
  = Schedule
      {flexibleTimeWindow = flexibleTimeWindow,
       scheduleExpression = scheduleExpression, target = target,
       description = Prelude.Nothing, endDate = Prelude.Nothing,
       groupName = Prelude.Nothing, kmsKeyArn = Prelude.Nothing,
       name = Prelude.Nothing,
       scheduleExpressionTimezone = Prelude.Nothing,
       startDate = Prelude.Nothing, state = Prelude.Nothing}
instance ToResourceProperties Schedule where
  toResourceProperties Schedule {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FlexibleTimeWindow" JSON..= flexibleTimeWindow,
                            "ScheduleExpression" JSON..= scheduleExpression,
                            "Target" JSON..= target]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EndDate" Prelude.<$> endDate,
                               (JSON..=) "GroupName" Prelude.<$> groupName,
                               (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "ScheduleExpressionTimezone"
                                 Prelude.<$> scheduleExpressionTimezone,
                               (JSON..=) "StartDate" Prelude.<$> startDate,
                               (JSON..=) "State" Prelude.<$> state]))}
instance JSON.ToJSON Schedule where
  toJSON Schedule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FlexibleTimeWindow" JSON..= flexibleTimeWindow,
               "ScheduleExpression" JSON..= scheduleExpression,
               "Target" JSON..= target]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EndDate" Prelude.<$> endDate,
                  (JSON..=) "GroupName" Prelude.<$> groupName,
                  (JSON..=) "KmsKeyArn" Prelude.<$> kmsKeyArn,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "ScheduleExpressionTimezone"
                    Prelude.<$> scheduleExpressionTimezone,
                  (JSON..=) "StartDate" Prelude.<$> startDate,
                  (JSON..=) "State" Prelude.<$> state])))
instance Property "Description" Schedule where
  type PropertyType "Description" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {description = Prelude.pure newValue, ..}
instance Property "EndDate" Schedule where
  type PropertyType "EndDate" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {endDate = Prelude.pure newValue, ..}
instance Property "FlexibleTimeWindow" Schedule where
  type PropertyType "FlexibleTimeWindow" Schedule = FlexibleTimeWindowProperty
  set newValue Schedule {..}
    = Schedule {flexibleTimeWindow = newValue, ..}
instance Property "GroupName" Schedule where
  type PropertyType "GroupName" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {groupName = Prelude.pure newValue, ..}
instance Property "KmsKeyArn" Schedule where
  type PropertyType "KmsKeyArn" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {kmsKeyArn = Prelude.pure newValue, ..}
instance Property "Name" Schedule where
  type PropertyType "Name" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {name = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" Schedule where
  type PropertyType "ScheduleExpression" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {scheduleExpression = newValue, ..}
instance Property "ScheduleExpressionTimezone" Schedule where
  type PropertyType "ScheduleExpressionTimezone" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {scheduleExpressionTimezone = Prelude.pure newValue, ..}
instance Property "StartDate" Schedule where
  type PropertyType "StartDate" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {startDate = Prelude.pure newValue, ..}
instance Property "State" Schedule where
  type PropertyType "State" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {state = Prelude.pure newValue, ..}
instance Property "Target" Schedule where
  type PropertyType "Target" Schedule = TargetProperty
  set newValue Schedule {..} = Schedule {target = newValue, ..}