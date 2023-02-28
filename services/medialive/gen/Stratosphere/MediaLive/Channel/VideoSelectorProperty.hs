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
  = VideoSelectorProperty {colorSpace :: (Prelude.Maybe (Value Prelude.Text)),
                           colorSpaceSettings :: (Prelude.Maybe VideoSelectorColorSpaceSettingsProperty),
                           colorSpaceUsage :: (Prelude.Maybe (Value Prelude.Text)),
                           selectorSettings :: (Prelude.Maybe VideoSelectorSettingsProperty)}
mkVideoSelectorProperty :: VideoSelectorProperty
mkVideoSelectorProperty
  = VideoSelectorProperty
      {colorSpace = Prelude.Nothing,
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