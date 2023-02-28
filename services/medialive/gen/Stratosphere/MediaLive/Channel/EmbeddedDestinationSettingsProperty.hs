module Stratosphere.MediaLive.Channel.EmbeddedDestinationSettingsProperty (
        EmbeddedDestinationSettingsProperty(..),
        mkEmbeddedDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
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
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON EmbeddedDestinationSettingsProperty where
  toJSON EmbeddedDestinationSettingsProperty {} = JSON.object []