module Stratosphere.MediaLive.Channel.EmbeddedPlusScte20DestinationSettingsProperty (
        EmbeddedPlusScte20DestinationSettingsProperty(..),
        mkEmbeddedPlusScte20DestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data EmbeddedPlusScte20DestinationSettingsProperty
  = EmbeddedPlusScte20DestinationSettingsProperty {}
mkEmbeddedPlusScte20DestinationSettingsProperty ::
  EmbeddedPlusScte20DestinationSettingsProperty
mkEmbeddedPlusScte20DestinationSettingsProperty
  = EmbeddedPlusScte20DestinationSettingsProperty {}
instance ToResourceProperties EmbeddedPlusScte20DestinationSettingsProperty where
  toResourceProperties
    EmbeddedPlusScte20DestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EmbeddedPlusScte20DestinationSettings",
         properties = []}
instance JSON.ToJSON EmbeddedPlusScte20DestinationSettingsProperty where
  toJSON EmbeddedPlusScte20DestinationSettingsProperty {}
    = JSON.object []