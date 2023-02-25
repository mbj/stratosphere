module Stratosphere.MediaLive.Channel.VideoSelectorColorSpaceSettingsProperty (
        module Exports, VideoSelectorColorSpaceSettingsProperty(..),
        mkVideoSelectorColorSpaceSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Hdr10SettingsProperty as Exports
import Stratosphere.ResourceProperties
data VideoSelectorColorSpaceSettingsProperty
  = VideoSelectorColorSpaceSettingsProperty {hdr10Settings :: (Prelude.Maybe Hdr10SettingsProperty)}
mkVideoSelectorColorSpaceSettingsProperty ::
  VideoSelectorColorSpaceSettingsProperty
mkVideoSelectorColorSpaceSettingsProperty
  = VideoSelectorColorSpaceSettingsProperty
      {hdr10Settings = Prelude.Nothing}
instance ToResourceProperties VideoSelectorColorSpaceSettingsProperty where
  toResourceProperties VideoSelectorColorSpaceSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.VideoSelectorColorSpaceSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings])}
instance JSON.ToJSON VideoSelectorColorSpaceSettingsProperty where
  toJSON VideoSelectorColorSpaceSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Hdr10Settings" Prelude.<$> hdr10Settings]))
instance Property "Hdr10Settings" VideoSelectorColorSpaceSettingsProperty where
  type PropertyType "Hdr10Settings" VideoSelectorColorSpaceSettingsProperty = Hdr10SettingsProperty
  set newValue VideoSelectorColorSpaceSettingsProperty {}
    = VideoSelectorColorSpaceSettingsProperty
        {hdr10Settings = Prelude.pure newValue, ..}