module Stratosphere.MediaLive.Channel.HlsSettingsProperty (
        module Exports, HlsSettingsProperty(..), mkHlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioOnlyHlsSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Fmp4HlsSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.FrameCaptureHlsSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.StandardHlsSettingsProperty as Exports
import Stratosphere.ResourceProperties
data HlsSettingsProperty
  = HlsSettingsProperty {audioOnlyHlsSettings :: (Prelude.Maybe AudioOnlyHlsSettingsProperty),
                         fmp4HlsSettings :: (Prelude.Maybe Fmp4HlsSettingsProperty),
                         frameCaptureHlsSettings :: (Prelude.Maybe FrameCaptureHlsSettingsProperty),
                         standardHlsSettings :: (Prelude.Maybe StandardHlsSettingsProperty)}
mkHlsSettingsProperty :: HlsSettingsProperty
mkHlsSettingsProperty
  = HlsSettingsProperty
      {audioOnlyHlsSettings = Prelude.Nothing,
       fmp4HlsSettings = Prelude.Nothing,
       frameCaptureHlsSettings = Prelude.Nothing,
       standardHlsSettings = Prelude.Nothing}
instance ToResourceProperties HlsSettingsProperty where
  toResourceProperties HlsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.HlsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioOnlyHlsSettings" Prelude.<$> audioOnlyHlsSettings,
                            (JSON..=) "Fmp4HlsSettings" Prelude.<$> fmp4HlsSettings,
                            (JSON..=) "FrameCaptureHlsSettings"
                              Prelude.<$> frameCaptureHlsSettings,
                            (JSON..=) "StandardHlsSettings" Prelude.<$> standardHlsSettings])}
instance JSON.ToJSON HlsSettingsProperty where
  toJSON HlsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioOnlyHlsSettings" Prelude.<$> audioOnlyHlsSettings,
               (JSON..=) "Fmp4HlsSettings" Prelude.<$> fmp4HlsSettings,
               (JSON..=) "FrameCaptureHlsSettings"
                 Prelude.<$> frameCaptureHlsSettings,
               (JSON..=) "StandardHlsSettings" Prelude.<$> standardHlsSettings]))
instance Property "AudioOnlyHlsSettings" HlsSettingsProperty where
  type PropertyType "AudioOnlyHlsSettings" HlsSettingsProperty = AudioOnlyHlsSettingsProperty
  set newValue HlsSettingsProperty {..}
    = HlsSettingsProperty
        {audioOnlyHlsSettings = Prelude.pure newValue, ..}
instance Property "Fmp4HlsSettings" HlsSettingsProperty where
  type PropertyType "Fmp4HlsSettings" HlsSettingsProperty = Fmp4HlsSettingsProperty
  set newValue HlsSettingsProperty {..}
    = HlsSettingsProperty {fmp4HlsSettings = Prelude.pure newValue, ..}
instance Property "FrameCaptureHlsSettings" HlsSettingsProperty where
  type PropertyType "FrameCaptureHlsSettings" HlsSettingsProperty = FrameCaptureHlsSettingsProperty
  set newValue HlsSettingsProperty {..}
    = HlsSettingsProperty
        {frameCaptureHlsSettings = Prelude.pure newValue, ..}
instance Property "StandardHlsSettings" HlsSettingsProperty where
  type PropertyType "StandardHlsSettings" HlsSettingsProperty = StandardHlsSettingsProperty
  set newValue HlsSettingsProperty {..}
    = HlsSettingsProperty
        {standardHlsSettings = Prelude.pure newValue, ..}