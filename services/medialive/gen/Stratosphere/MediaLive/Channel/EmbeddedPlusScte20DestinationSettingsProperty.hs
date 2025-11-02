module Stratosphere.MediaLive.Channel.EmbeddedPlusScte20DestinationSettingsProperty (
        EmbeddedPlusScte20DestinationSettingsProperty(..),
        mkEmbeddedPlusScte20DestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data EmbeddedPlusScte20DestinationSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-embeddedplusscte20destinationsettings.html>
    EmbeddedPlusScte20DestinationSettingsProperty {haddock_workaround_ :: ()}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmbeddedPlusScte20DestinationSettingsProperty ::
  EmbeddedPlusScte20DestinationSettingsProperty
mkEmbeddedPlusScte20DestinationSettingsProperty
  = EmbeddedPlusScte20DestinationSettingsProperty
      {haddock_workaround_ = ()}
instance ToResourceProperties EmbeddedPlusScte20DestinationSettingsProperty where
  toResourceProperties
    EmbeddedPlusScte20DestinationSettingsProperty {}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.EmbeddedPlusScte20DestinationSettings",
         supportsTags = Prelude.False, properties = []}
instance JSON.ToJSON EmbeddedPlusScte20DestinationSettingsProperty where
  toJSON EmbeddedPlusScte20DestinationSettingsProperty {}
    = JSON.object []