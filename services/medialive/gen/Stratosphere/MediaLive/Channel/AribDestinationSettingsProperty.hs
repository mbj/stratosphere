module Stratosphere.MediaLive.Channel.AribDestinationSettingsProperty (
        AribDestinationSettingsProperty(..),
        mkAribDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data AribDestinationSettingsProperty
  = AribDestinationSettingsProperty {}
mkAribDestinationSettingsProperty ::
  AribDestinationSettingsProperty
mkAribDestinationSettingsProperty
  = AribDestinationSettingsProperty {}
instance ToResourceProperties AribDestinationSettingsProperty where
  toResourceProperties AribDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AribDestinationSettings",
         properties = []}
instance JSON.ToJSON AribDestinationSettingsProperty where
  toJSON AribDestinationSettingsProperty {} = JSON.object []