module Stratosphere.MediaLive.Channel.MaintenanceCreateSettingsProperty (
        MaintenanceCreateSettingsProperty(..),
        mkMaintenanceCreateSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceCreateSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-maintenancecreatesettings.html>
    MaintenanceCreateSettingsProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-maintenancecreatesettings.html#cfn-medialive-channel-maintenancecreatesettings-maintenanceday>
                                       maintenanceDay :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-maintenancecreatesettings.html#cfn-medialive-channel-maintenancecreatesettings-maintenancestarttime>
                                       maintenanceStartTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMaintenanceCreateSettingsProperty ::
  MaintenanceCreateSettingsProperty
mkMaintenanceCreateSettingsProperty
  = MaintenanceCreateSettingsProperty
      {haddock_workaround_ = (), maintenanceDay = Prelude.Nothing,
       maintenanceStartTime = Prelude.Nothing}
instance ToResourceProperties MaintenanceCreateSettingsProperty where
  toResourceProperties MaintenanceCreateSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MaintenanceCreateSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaintenanceDay" Prelude.<$> maintenanceDay,
                            (JSON..=) "MaintenanceStartTime"
                              Prelude.<$> maintenanceStartTime])}
instance JSON.ToJSON MaintenanceCreateSettingsProperty where
  toJSON MaintenanceCreateSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaintenanceDay" Prelude.<$> maintenanceDay,
               (JSON..=) "MaintenanceStartTime"
                 Prelude.<$> maintenanceStartTime]))
instance Property "MaintenanceDay" MaintenanceCreateSettingsProperty where
  type PropertyType "MaintenanceDay" MaintenanceCreateSettingsProperty = Value Prelude.Text
  set newValue MaintenanceCreateSettingsProperty {..}
    = MaintenanceCreateSettingsProperty
        {maintenanceDay = Prelude.pure newValue, ..}
instance Property "MaintenanceStartTime" MaintenanceCreateSettingsProperty where
  type PropertyType "MaintenanceStartTime" MaintenanceCreateSettingsProperty = Value Prelude.Text
  set newValue MaintenanceCreateSettingsProperty {..}
    = MaintenanceCreateSettingsProperty
        {maintenanceStartTime = Prelude.pure newValue, ..}