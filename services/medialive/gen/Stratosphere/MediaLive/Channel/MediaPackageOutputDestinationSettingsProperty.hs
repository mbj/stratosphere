module Stratosphere.MediaLive.Channel.MediaPackageOutputDestinationSettingsProperty (
        MediaPackageOutputDestinationSettingsProperty(..),
        mkMediaPackageOutputDestinationSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MediaPackageOutputDestinationSettingsProperty
  = MediaPackageOutputDestinationSettingsProperty {channelId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageOutputDestinationSettingsProperty ::
  MediaPackageOutputDestinationSettingsProperty
mkMediaPackageOutputDestinationSettingsProperty
  = MediaPackageOutputDestinationSettingsProperty
      {channelId = Prelude.Nothing}
instance ToResourceProperties MediaPackageOutputDestinationSettingsProperty where
  toResourceProperties
    MediaPackageOutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageOutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "ChannelId" Prelude.<$> channelId])}
instance JSON.ToJSON MediaPackageOutputDestinationSettingsProperty where
  toJSON MediaPackageOutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "ChannelId" Prelude.<$> channelId]))
instance Property "ChannelId" MediaPackageOutputDestinationSettingsProperty where
  type PropertyType "ChannelId" MediaPackageOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageOutputDestinationSettingsProperty {}
    = MediaPackageOutputDestinationSettingsProperty
        {channelId = Prelude.pure newValue, ..}