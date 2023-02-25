module Stratosphere.MediaLive.Channel.TeletextDestinationSettingsProperty (
        TeletextDestinationSettingsProperty(..),
        mkTeletextDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data TeletextDestinationSettingsProperty
  = TeletextDestinationSettingsProperty {}
mkTeletextDestinationSettingsProperty ::
  TeletextDestinationSettingsProperty
mkTeletextDestinationSettingsProperty
  = TeletextDestinationSettingsProperty {}
instance ToResourceProperties TeletextDestinationSettingsProperty where
  toResourceProperties TeletextDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TeletextDestinationSettings",
         properties = []}
instance JSON.ToJSON TeletextDestinationSettingsProperty where
  toJSON TeletextDestinationSettingsProperty {} = JSON.object []