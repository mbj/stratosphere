module Stratosphere.AmazonMQ.Broker.MaintenanceWindowProperty (
        MaintenanceWindowProperty(..), mkMaintenanceWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowProperty
  = MaintenanceWindowProperty {dayOfWeek :: (Value Prelude.Text),
                               timeOfDay :: (Value Prelude.Text),
                               timeZone :: (Value Prelude.Text)}
mkMaintenanceWindowProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MaintenanceWindowProperty
mkMaintenanceWindowProperty dayOfWeek timeOfDay timeZone
  = MaintenanceWindowProperty
      {dayOfWeek = dayOfWeek, timeOfDay = timeOfDay, timeZone = timeZone}
instance ToResourceProperties MaintenanceWindowProperty where
  toResourceProperties MaintenanceWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::AmazonMQ::Broker.MaintenanceWindow",
         supportsTags = Prelude.False,
         properties = ["DayOfWeek" JSON..= dayOfWeek,
                       "TimeOfDay" JSON..= timeOfDay, "TimeZone" JSON..= timeZone]}
instance JSON.ToJSON MaintenanceWindowProperty where
  toJSON MaintenanceWindowProperty {..}
    = JSON.object
        ["DayOfWeek" JSON..= dayOfWeek, "TimeOfDay" JSON..= timeOfDay,
         "TimeZone" JSON..= timeZone]
instance Property "DayOfWeek" MaintenanceWindowProperty where
  type PropertyType "DayOfWeek" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {dayOfWeek = newValue, ..}
instance Property "TimeOfDay" MaintenanceWindowProperty where
  type PropertyType "TimeOfDay" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {timeOfDay = newValue, ..}
instance Property "TimeZone" MaintenanceWindowProperty where
  type PropertyType "TimeZone" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {timeZone = newValue, ..}