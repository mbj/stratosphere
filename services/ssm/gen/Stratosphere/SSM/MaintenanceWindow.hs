module Stratosphere.SSM.MaintenanceWindow (
        MaintenanceWindow(..), mkMaintenanceWindow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MaintenanceWindow
  = MaintenanceWindow {allowUnassociatedTargets :: (Value Prelude.Bool),
                       cutoff :: (Value Prelude.Integer),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       duration :: (Value Prelude.Integer),
                       endDate :: (Prelude.Maybe (Value Prelude.Text)),
                       name :: (Value Prelude.Text),
                       schedule :: (Value Prelude.Text),
                       scheduleOffset :: (Prelude.Maybe (Value Prelude.Integer)),
                       scheduleTimezone :: (Prelude.Maybe (Value Prelude.Text)),
                       startDate :: (Prelude.Maybe (Value Prelude.Text)),
                       tags :: (Prelude.Maybe [Tag])}
mkMaintenanceWindow ::
  Value Prelude.Bool
  -> Value Prelude.Integer
     -> Value Prelude.Integer
        -> Value Prelude.Text -> Value Prelude.Text -> MaintenanceWindow
mkMaintenanceWindow
  allowUnassociatedTargets
  cutoff
  duration
  name
  schedule
  = MaintenanceWindow
      {allowUnassociatedTargets = allowUnassociatedTargets,
       cutoff = cutoff, duration = duration, name = name,
       schedule = schedule, description = Prelude.Nothing,
       endDate = Prelude.Nothing, scheduleOffset = Prelude.Nothing,
       scheduleTimezone = Prelude.Nothing, startDate = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindow where
  toResourceProperties MaintenanceWindow {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindow",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AllowUnassociatedTargets" JSON..= allowUnassociatedTargets,
                            "Cutoff" JSON..= cutoff, "Duration" JSON..= duration,
                            "Name" JSON..= name, "Schedule" JSON..= schedule]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "EndDate" Prelude.<$> endDate,
                               (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                               (JSON..=) "ScheduleTimezone" Prelude.<$> scheduleTimezone,
                               (JSON..=) "StartDate" Prelude.<$> startDate,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MaintenanceWindow where
  toJSON MaintenanceWindow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AllowUnassociatedTargets" JSON..= allowUnassociatedTargets,
               "Cutoff" JSON..= cutoff, "Duration" JSON..= duration,
               "Name" JSON..= name, "Schedule" JSON..= schedule]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "EndDate" Prelude.<$> endDate,
                  (JSON..=) "ScheduleOffset" Prelude.<$> scheduleOffset,
                  (JSON..=) "ScheduleTimezone" Prelude.<$> scheduleTimezone,
                  (JSON..=) "StartDate" Prelude.<$> startDate,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AllowUnassociatedTargets" MaintenanceWindow where
  type PropertyType "AllowUnassociatedTargets" MaintenanceWindow = Value Prelude.Bool
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {allowUnassociatedTargets = newValue, ..}
instance Property "Cutoff" MaintenanceWindow where
  type PropertyType "Cutoff" MaintenanceWindow = Value Prelude.Integer
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {cutoff = newValue, ..}
instance Property "Description" MaintenanceWindow where
  type PropertyType "Description" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {description = Prelude.pure newValue, ..}
instance Property "Duration" MaintenanceWindow where
  type PropertyType "Duration" MaintenanceWindow = Value Prelude.Integer
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {duration = newValue, ..}
instance Property "EndDate" MaintenanceWindow where
  type PropertyType "EndDate" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {endDate = Prelude.pure newValue, ..}
instance Property "Name" MaintenanceWindow where
  type PropertyType "Name" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {name = newValue, ..}
instance Property "Schedule" MaintenanceWindow where
  type PropertyType "Schedule" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {schedule = newValue, ..}
instance Property "ScheduleOffset" MaintenanceWindow where
  type PropertyType "ScheduleOffset" MaintenanceWindow = Value Prelude.Integer
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {scheduleOffset = Prelude.pure newValue, ..}
instance Property "ScheduleTimezone" MaintenanceWindow where
  type PropertyType "ScheduleTimezone" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {scheduleTimezone = Prelude.pure newValue, ..}
instance Property "StartDate" MaintenanceWindow where
  type PropertyType "StartDate" MaintenanceWindow = Value Prelude.Text
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {startDate = Prelude.pure newValue, ..}
instance Property "Tags" MaintenanceWindow where
  type PropertyType "Tags" MaintenanceWindow = [Tag]
  set newValue MaintenanceWindow {..}
    = MaintenanceWindow {tags = Prelude.pure newValue, ..}