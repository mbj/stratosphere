module Stratosphere.MediaLive.Channel.SmpteTtDestinationSettingsProperty (
        SmpteTtDestinationSettingsProperty(..),
        mkSmpteTtDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data SmpteTtDestinationSettingsProperty
  = SmpteTtDestinationSettingsProperty {}
mkSmpteTtDestinationSettingsProperty ::
  SmpteTtDestinationSettingsProperty
mkSmpteTtDestinationSettingsProperty
  = SmpteTtDestinationSettingsProperty {}
instance ToResourceProperties SmpteTtDestinationSettingsProperty where
  toResourceProperties SmpteTtDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.SmpteTtDestinationSettings",
         properties = []}
instance JSON.ToJSON SmpteTtDestinationSettingsProperty where
  toJSON SmpteTtDestinationSettingsProperty {} = JSON.object []