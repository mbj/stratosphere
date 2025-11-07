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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html>
    MediaPackageOutputDestinationSettingsProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelgroup>
                                                   channelGroup :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelid>
                                                   channelId :: (Prelude.Maybe (Value Prelude.Text)),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-mediapackageoutputdestinationsettings.html#cfn-medialive-channel-mediapackageoutputdestinationsettings-channelname>
                                                   channelName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMediaPackageOutputDestinationSettingsProperty ::
  MediaPackageOutputDestinationSettingsProperty
mkMediaPackageOutputDestinationSettingsProperty
  = MediaPackageOutputDestinationSettingsProperty
      {haddock_workaround_ = (), channelGroup = Prelude.Nothing,
       channelId = Prelude.Nothing, channelName = Prelude.Nothing}
instance ToResourceProperties MediaPackageOutputDestinationSettingsProperty where
  toResourceProperties
    MediaPackageOutputDestinationSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.MediaPackageOutputDestinationSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ChannelGroup" Prelude.<$> channelGroup,
                            (JSON..=) "ChannelId" Prelude.<$> channelId,
                            (JSON..=) "ChannelName" Prelude.<$> channelName])}
instance JSON.ToJSON MediaPackageOutputDestinationSettingsProperty where
  toJSON MediaPackageOutputDestinationSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ChannelGroup" Prelude.<$> channelGroup,
               (JSON..=) "ChannelId" Prelude.<$> channelId,
               (JSON..=) "ChannelName" Prelude.<$> channelName]))
instance Property "ChannelGroup" MediaPackageOutputDestinationSettingsProperty where
  type PropertyType "ChannelGroup" MediaPackageOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageOutputDestinationSettingsProperty {..}
    = MediaPackageOutputDestinationSettingsProperty
        {channelGroup = Prelude.pure newValue, ..}
instance Property "ChannelId" MediaPackageOutputDestinationSettingsProperty where
  type PropertyType "ChannelId" MediaPackageOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageOutputDestinationSettingsProperty {..}
    = MediaPackageOutputDestinationSettingsProperty
        {channelId = Prelude.pure newValue, ..}
instance Property "ChannelName" MediaPackageOutputDestinationSettingsProperty where
  type PropertyType "ChannelName" MediaPackageOutputDestinationSettingsProperty = Value Prelude.Text
  set newValue MediaPackageOutputDestinationSettingsProperty {..}
    = MediaPackageOutputDestinationSettingsProperty
        {channelName = Prelude.pure newValue, ..}