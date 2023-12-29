module Stratosphere.IoT.JobTemplate.MaintenanceWindowProperty (
        MaintenanceWindowProperty(..), mkMaintenanceWindowProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowProperty
  = MaintenanceWindowProperty {durationInMinutes :: (Prelude.Maybe (Value Prelude.Integer)),
                               startTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceWindowProperty :: MaintenanceWindowProperty
mkMaintenanceWindowProperty
  = MaintenanceWindowProperty
      {durationInMinutes = Prelude.Nothing, startTime = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowProperty where
  toResourceProperties MaintenanceWindowProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::JobTemplate.MaintenanceWindow",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DurationInMinutes" Prelude.<$> durationInMinutes,
                            (JSON..=) "StartTime" Prelude.<$> startTime])}
instance JSON.ToJSON MaintenanceWindowProperty where
  toJSON MaintenanceWindowProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DurationInMinutes" Prelude.<$> durationInMinutes,
               (JSON..=) "StartTime" Prelude.<$> startTime]))
instance Property "DurationInMinutes" MaintenanceWindowProperty where
  type PropertyType "DurationInMinutes" MaintenanceWindowProperty = Value Prelude.Integer
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty
        {durationInMinutes = Prelude.pure newValue, ..}
instance Property "StartTime" MaintenanceWindowProperty where
  type PropertyType "StartTime" MaintenanceWindowProperty = Value Prelude.Text
  set newValue MaintenanceWindowProperty {..}
    = MaintenanceWindowProperty {startTime = Prelude.pure newValue, ..}