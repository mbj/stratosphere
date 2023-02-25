module Stratosphere.MediaLive.Channel.EmbeddedDestinationSettingsProperty (
        EmbeddedDestinationSettingsProperty(..),
        mkEmbeddedDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data EmbeddedDestinationSettingsProperty
  = EmbeddedDestinationSettingsProperty {}
mkEmbeddedDestinationSettingsProperty ::
  EmbeddedDestinationSettingsProperty
mkEmbeddedDestinationSettingsProperty
  = EmbeddedDestinationSettingsProperty {}
instance ToResourceProperties EmbeddedDestinationSettingsProperty where
  toResourceProperties EmbeddedDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EmbeddedDestinationSettings",
         properties = []}
instance JSON.ToJSON EmbeddedDestinationSettingsProperty where
  toJSON EmbeddedDestinationSettingsProperty {} = JSON.object []