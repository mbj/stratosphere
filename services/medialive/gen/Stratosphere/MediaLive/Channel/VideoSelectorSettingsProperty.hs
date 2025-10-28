module Stratosphere.MediaLive.Channel.VideoSelectorSettingsProperty (
        module Exports, VideoSelectorSettingsProperty(..),
        mkVideoSelectorSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoSelectorPidProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoSelectorProgramIdProperty as Exports
import Stratosphere.ResourceProperties
data VideoSelectorSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html>
    VideoSelectorSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorpid>
                                   videoSelectorPid :: (Prelude.Maybe VideoSelectorPidProperty),
                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselectorsettings.html#cfn-medialive-channel-videoselectorsettings-videoselectorprogramid>
                                   videoSelectorProgramId :: (Prelude.Maybe VideoSelectorProgramIdProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoSelectorSettingsProperty :: VideoSelectorSettingsProperty
mkVideoSelectorSettingsProperty
  = VideoSelectorSettingsProperty
      {videoSelectorPid = Prelude.Nothing,
       videoSelectorProgramId = Prelude.Nothing}
instance ToResourceProperties VideoSelectorSettingsProperty where
  toResourceProperties VideoSelectorSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoSelectorSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "VideoSelectorPid" Prelude.<$> videoSelectorPid,
                            (JSON..=) "VideoSelectorProgramId"
                              Prelude.<$> videoSelectorProgramId])}
instance JSON.ToJSON VideoSelectorSettingsProperty where
  toJSON VideoSelectorSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "VideoSelectorPid" Prelude.<$> videoSelectorPid,
               (JSON..=) "VideoSelectorProgramId"
                 Prelude.<$> videoSelectorProgramId]))
instance Property "VideoSelectorPid" VideoSelectorSettingsProperty where
  type PropertyType "VideoSelectorPid" VideoSelectorSettingsProperty = VideoSelectorPidProperty
  set newValue VideoSelectorSettingsProperty {..}
    = VideoSelectorSettingsProperty
        {videoSelectorPid = Prelude.pure newValue, ..}
instance Property "VideoSelectorProgramId" VideoSelectorSettingsProperty where
  type PropertyType "VideoSelectorProgramId" VideoSelectorSettingsProperty = VideoSelectorProgramIdProperty
  set newValue VideoSelectorSettingsProperty {..}
    = VideoSelectorSettingsProperty
        {videoSelectorProgramId = Prelude.pure newValue, ..}