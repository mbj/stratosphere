module Stratosphere.MediaConnect.Flow.MaintenanceProperty (
        MaintenanceProperty(..), mkMaintenanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceProperty
  = MaintenanceProperty {maintenanceDay :: (Value Prelude.Text),
                         maintenanceStartHour :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MaintenanceProperty
mkMaintenanceProperty maintenanceDay maintenanceStartHour
  = MaintenanceProperty
      {maintenanceDay = maintenanceDay,
       maintenanceStartHour = maintenanceStartHour}
instance ToResourceProperties MaintenanceProperty where
  toResourceProperties MaintenanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaConnect::Flow.Maintenance",
         supportsTags = Prelude.False,
         properties = ["MaintenanceDay" JSON..= maintenanceDay,
                       "MaintenanceStartHour" JSON..= maintenanceStartHour]}
instance JSON.ToJSON MaintenanceProperty where
  toJSON MaintenanceProperty {..}
    = JSON.object
        ["MaintenanceDay" JSON..= maintenanceDay,
         "MaintenanceStartHour" JSON..= maintenanceStartHour]
instance Property "MaintenanceDay" MaintenanceProperty where
  type PropertyType "MaintenanceDay" MaintenanceProperty = Value Prelude.Text
  set newValue MaintenanceProperty {..}
    = MaintenanceProperty {maintenanceDay = newValue, ..}
instance Property "MaintenanceStartHour" MaintenanceProperty where
  type PropertyType "MaintenanceStartHour" MaintenanceProperty = Value Prelude.Text
  set newValue MaintenanceProperty {..}
    = MaintenanceProperty {maintenanceStartHour = newValue, ..}