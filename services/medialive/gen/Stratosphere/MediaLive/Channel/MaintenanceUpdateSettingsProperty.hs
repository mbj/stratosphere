module Stratosphere.MediaLive.Channel.MaintenanceUpdateSettingsProperty (
        MaintenanceUpdateSettingsProperty(..),
        mkMaintenanceUpdateSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceUpdateSettingsProperty
  = MaintenanceUpdateSettingsProperty {maintenanceDay :: (Prelude.Maybe (Value Prelude.Text)),
                                       maintenanceScheduledDate :: (Prelude.Maybe (Value Prelude.Text)),
                                       maintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceUpdateSettingsProperty ::
  MaintenanceUpdateSettingsProperty
mkMaintenanceUpdateSettingsProperty
  = MaintenanceUpdateSettingsProperty
      {maintenanceDay = Prelude.Nothing,
       maintenanceScheduledDate = Prelude.Nothing,
       maintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties MaintenanceUpdateSettingsProperty where
  toResourceProperties MaintenanceUpdateSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MaintenanceUpdateSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaintenanceDay" Prelude.<$> maintenanceDay,
                            (JSON..=) "MaintenanceScheduledDate"
                              Prelude.<$> maintenanceScheduledDate,
                            (JSON..=) "MaintenanceStartTime"
                              Prelude.<$> maintenanceStartTime])}
instance JSON.ToJSON MaintenanceUpdateSettingsProperty where
  toJSON MaintenanceUpdateSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaintenanceDay" Prelude.<$> maintenanceDay,
               (JSON..=) "MaintenanceScheduledDate"
                 Prelude.<$> maintenanceScheduledDate,
               (JSON..=) "MaintenanceStartTime"
                 Prelude.<$> maintenanceStartTime]))
instance Property "MaintenanceDay" MaintenanceUpdateSettingsProperty where
  type PropertyType "MaintenanceDay" MaintenanceUpdateSettingsProperty = Value Prelude.Text
  set newValue MaintenanceUpdateSettingsProperty {..}
    = MaintenanceUpdateSettingsProperty
        {maintenanceDay = Prelude.pure newValue, ..}
instance Property "MaintenanceScheduledDate" MaintenanceUpdateSettingsProperty where
  type PropertyType "MaintenanceScheduledDate" MaintenanceUpdateSettingsProperty = Value Prelude.Text
  set newValue MaintenanceUpdateSettingsProperty {..}
    = MaintenanceUpdateSettingsProperty
        {maintenanceScheduledDate = Prelude.pure newValue, ..}
instance Property "MaintenanceStartTime" MaintenanceUpdateSettingsProperty where
  type PropertyType "MaintenanceStartTime" MaintenanceUpdateSettingsProperty = Value Prelude.Text
  set newValue MaintenanceUpdateSettingsProperty {..}
    = MaintenanceUpdateSettingsProperty
        {maintenanceStartTime = Prelude.pure newValue, ..}