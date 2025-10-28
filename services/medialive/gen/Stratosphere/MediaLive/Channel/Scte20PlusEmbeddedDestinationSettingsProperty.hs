module Stratosphere.MediaLive.Channel.Scte20PlusEmbeddedDestinationSettingsProperty (
        Scte20PlusEmbeddedDestinationSettingsProperty(..),
        mkScte20PlusEmbeddedDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data Scte20PlusEmbeddedDestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-scte20plusembeddeddestinationsettings.html>
    Scte20PlusEmbeddedDestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScte20PlusEmbeddedDestinationSettingsProperty ::
  Scte20PlusEmbeddedDestinationSettingsProperty
mkScte20PlusEmbeddedDestinationSettingsProperty
  = Scte20PlusEmbeddedDestinationSettingsProperty
      {haddock_workaround_ = ()}
instance ToResourceProperties Scte20PlusEmbeddedDestinationSettingsProperty where
  toResourceProperties
    Scte20PlusEmbeddedDestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Scte20PlusEmbeddedDestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON Scte20PlusEmbeddedDestinationSettingsProperty where
  toJSON Scte20PlusEmbeddedDestinationSettingsProperty {}
    = JSON.object []