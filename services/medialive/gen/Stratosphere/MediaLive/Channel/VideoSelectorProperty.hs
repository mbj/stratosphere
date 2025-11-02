module Stratosphere.MediaLive.Channel.VideoSelectorProperty (
        module Exports, VideoSelectorProperty(..), mkVideoSelectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoSelectorColorSpaceSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.VideoSelectorSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VideoSelectorProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html>
    VideoSelectorProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspace>
                           colorSpace :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspacesettings>
                           colorSpaceSettings :: (Prelude.Maybe VideoSelectorColorSpaceSettingsProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-colorspaceusage>
                           colorSpaceUsage :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-medialive-channel-videoselector.html#cfn-medialive-channel-videoselector-selectorsettings>
                           selectorSettings :: (Prelude.Maybe VideoSelectorSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVideoSelectorProperty :: VideoSelectorProperty
mkVideoSelectorProperty
  = VideoSelectorProperty
      {haddock_workaround_ = (), colorSpace = Prelude.Nothing,
       colorSpaceSettings = Prelude.Nothing,
       colorSpaceUsage = Prelude.Nothing,
       selectorSettings = Prelude.Nothing}
instance ToResourceProperties VideoSelectorProperty where
  toResourceProperties VideoSelectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoSelector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ColorSpace" Prelude.<$> colorSpace,
                            (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
                            (JSON..=) "ColorSpaceUsage" Prelude.<$> colorSpaceUsage,
                            (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings])}
instance JSON.ToJSON VideoSelectorProperty where
  toJSON VideoSelectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ColorSpace" Prelude.<$> colorSpace,
               (JSON..=) "ColorSpaceSettings" Prelude.<$> colorSpaceSettings,
               (JSON..=) "ColorSpaceUsage" Prelude.<$> colorSpaceUsage,
               (JSON..=) "SelectorSettings" Prelude.<$> selectorSettings]))
instance Property "ColorSpace" VideoSelectorProperty where
  type PropertyType "ColorSpace" VideoSelectorProperty = Value Prelude.Text
  set newValue VideoSelectorProperty {..}
    = VideoSelectorProperty {colorSpace = Prelude.pure newValue, ..}
instance Property "ColorSpaceSettings" VideoSelectorProperty where
  type PropertyType "ColorSpaceSettings" VideoSelectorProperty = VideoSelectorColorSpaceSettingsProperty
  set newValue VideoSelectorProperty {..}
    = VideoSelectorProperty
        {colorSpaceSettings = Prelude.pure newValue, ..}
instance Property "ColorSpaceUsage" VideoSelectorProperty where
  type PropertyType "ColorSpaceUsage" VideoSelectorProperty = Value Prelude.Text
  set newValue VideoSelectorProperty {..}
    = VideoSelectorProperty
        {colorSpaceUsage = Prelude.pure newValue, ..}
instance Property "SelectorSettings" VideoSelectorProperty where
  type PropertyType "SelectorSettings" VideoSelectorProperty = VideoSelectorSettingsProperty
  set newValue VideoSelectorProperty {..}
    = VideoSelectorProperty
        {selectorSettings = Prelude.pure newValue, ..}