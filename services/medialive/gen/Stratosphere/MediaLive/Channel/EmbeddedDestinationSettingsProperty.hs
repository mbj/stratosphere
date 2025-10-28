module Stratosphere.MediaLive.Channel.EmbeddedDestinationSettingsProperty (
        EmbeddedDestinationSettingsProperty(..),
        mkEmbeddedDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EmbeddedDestinationSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddeddestinationsettings.html>
    EmbeddedDestinationSettingsProperty {}
  deriving stock (Prelude.Eq, Prelude.Show)
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