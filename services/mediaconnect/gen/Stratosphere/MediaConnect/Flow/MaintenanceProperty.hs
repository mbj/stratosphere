module Stratosphere.MediaConnect.Flow.MaintenanceProperty (
        MaintenanceProperty(..), mkMaintenanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-maintenance.html>
    MaintenanceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-maintenance.html#cfn-mediaconnect-flow-maintenance-maintenanceday>
                         maintenanceDay :: (Value Prelude.Text),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-mediaconnect-flow-maintenance.html#cfn-mediaconnect-flow-maintenance-maintenancestarthour>
                         maintenanceStartHour :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MaintenanceProperty
mkMaintenanceProperty maintenanceDay maintenanceStartHour
  = MaintenanceProperty
      {haddock_workaround_ = (), maintenanceDay = maintenanceDay,
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