module Stratosphere.WorkSpacesThinClient.Environment.MaintenanceWindowProperty (
        MaintenanceWindowProperty(..), mkMaintenanceWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowProperty
  = MaintenanceWindowProperty {applyTimeOf :: (Prelude.Maybe (Value Prelude.Text)),
                               daysOfTheWeek :: (Prelude.Maybe (ValueList Prelude.Text)),
                               endTimeHour :: (Prelude.Maybe (Value Prelude.Integer)),
                               endTimeMinute :: (Prelude.Maybe (Value Prelude.Integer)),
                               startTimeHour :: (Prelude.Maybe (Value Prelude.Integer)),
                               startTimeMinute :: (Prelude.Maybe (Value Prelude.Integer)),
                               type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceWindowProperty ::
  Value Prelude.Text -> MaintenanceWindowProperty
mkMaintenanceWindowProperty type'
  = MaintenanceWindowProperty
      {type' = type', applyTimeOf = Prelude.Nothing,
       daysOfTheWeek = Prelude.Nothing, endTimeHour = Prelude.Nothing,
       endTimeMinute = Prelude.Nothing, startTimeHour = Prelude.Nothing,
       startTimeMinute = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowProperty where
  toResourceProperties MaintenanceWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkSpacesThinClient::Environment.MaintenanceWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "ApplyTimeOf" Prelude.<$> applyTimeOf,
                               (JSON..=) "DaysOfTheWeek" Prelude.<$> daysOfTheWeek,
                               (JSON..=) "EndTimeHour" Prelude.<$> endTimeHour,
                               (JSON..=) "EndTimeMinute" Prelude.<$> endTimeMinute,
                               (JSON..=) "StartTimeHour" Prelude.<$> startTimeHour,
                               (JSON..=) "StartTimeMinute" Prelude.<$> startTimeMinute]))}
instance JSON.ToJSON MaintenanceWindowProperty where
  toJSON MaintenanceWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "ApplyTimeOf" Prelude.<$> applyTimeOf,
                  (JSON..=) "DaysOfTheWeek" Prelude.<$> daysOfTheWeek,
                  (JSON..=) "EndTimeHour" Prelude.<$> endTimeHour,
                  (JSON..=) "EndTimeMinute" Prelude.<$> endTimeMinute,
                  (JSON..=) "StartTimeHour" Prelude.<$> startTimeHour,
                  (JSON..=) "StartTimeMinute" Prelude.<$> startTimeMinute])))
instance Property "ApplyTimeOf" MaintenanceWindowProperty where
  type PropertyType "ApplyTimeOf" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {applyTimeOf = Prelude.pure newValue, ..}
instance Property "DaysOfTheWeek" MaintenanceWindowProperty where
  type PropertyType "DaysOfTheWeek" MaintenanceWindowProperty = ValueList Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {daysOfTheWeek = Prelude.pure newValue, ..}
instance Property "EndTimeHour" MaintenanceWindowProperty where
  type PropertyType "EndTimeHour" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {endTimeHour = Prelude.pure newValue, ..}
instance Property "EndTimeMinute" MaintenanceWindowProperty where
  type PropertyType "EndTimeMinute" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {endTimeMinute = Prelude.pure newValue, ..}
instance Property "StartTimeHour" MaintenanceWindowProperty where
  type PropertyType "StartTimeHour" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {startTimeHour = Prelude.pure newValue, ..}
instance Property "StartTimeMinute" MaintenanceWindowProperty where
  type PropertyType "StartTimeMinute" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {startTimeMinute = Prelude.pure newValue, ..}
instance Property "Type" MaintenanceWindowProperty where
  type PropertyType "Type" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {type' = newValue, ..}