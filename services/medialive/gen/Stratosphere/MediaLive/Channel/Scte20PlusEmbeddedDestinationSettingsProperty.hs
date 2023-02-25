module Stratosphere.MediaLive.Channel.Scte20PlusEmbeddedDestinationSettingsProperty (
        Scte20PlusEmbeddedDestinationSettingsProperty(..),
        mkScte20PlusEmbeddedDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.ResourceProperties
data Scte20PlusEmbeddedDestinationSettingsProperty
  = Scte20PlusEmbeddedDestinationSettingsProperty {}
mkScte20PlusEmbeddedDestinationSettingsProperty ::
  Scte20PlusEmbeddedDestinationSettingsProperty
mkScte20PlusEmbeddedDestinationSettingsProperty
  = Scte20PlusEmbeddedDestinationSettingsProperty {}
instance ToResourceProperties Scte20PlusEmbeddedDestinationSettingsProperty where
  toResourceProperties
    Scte20PlusEmbeddedDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte20PlusEmbeddedDestinationSettings",
         properties = []}
instance JSON.ToJSON Scte20PlusEmbeddedDestinationSettingsProperty where
  toJSON Scte20PlusEmbeddedDestinationSettingsProperty {}
    = JSON.object []