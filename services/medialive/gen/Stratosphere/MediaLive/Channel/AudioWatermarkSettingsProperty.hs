module Stratosphere.MediaLive.Channel.AudioWatermarkSettingsProperty (
        module Exports, AudioWatermarkSettingsProperty(..),
        mkAudioWatermarkSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.NielsenWatermarksSettingsProperty as Exports
import Stratosphere.ResourceProperties
data AudioWatermarkSettingsProperty
  = AudioWatermarkSettingsProperty {nielsenWatermarksSettings :: (Prelude.Maybe NielsenWatermarksSettingsProperty)}
mkAudioWatermarkSettingsProperty :: AudioWatermarkSettingsProperty
mkAudioWatermarkSettingsProperty
  = AudioWatermarkSettingsProperty
      {nielsenWatermarksSettings = Prelude.Nothing}
instance ToResourceProperties AudioWatermarkSettingsProperty where
  toResourceProperties AudioWatermarkSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioWatermarkSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NielsenWatermarksSettings"
                              Prelude.<$> nielsenWatermarksSettings])}
instance JSON.ToJSON AudioWatermarkSettingsProperty where
  toJSON AudioWatermarkSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NielsenWatermarksSettings"
                 Prelude.<$> nielsenWatermarksSettings]))
instance Property "NielsenWatermarksSettings" AudioWatermarkSettingsProperty where
  type PropertyType "NielsenWatermarksSettings" AudioWatermarkSettingsProperty = NielsenWatermarksSettingsProperty
  set newValue AudioWatermarkSettingsProperty {}
    = AudioWatermarkSettingsProperty
        {nielsenWatermarksSettings = Prelude.pure newValue, ..}