module Stratosphere.MediaLive.Channel.AudioDescriptionProperty (
        module Exports, AudioDescriptionProperty(..),
        mkAudioDescriptionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioCodecSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioNormalizationSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AudioWatermarkSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.RemixSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioDescriptionProperty
  = AudioDescriptionProperty {audioDashRoles :: (Prelude.Maybe (ValueList Prelude.Text)),
                              audioNormalizationSettings :: (Prelude.Maybe AudioNormalizationSettingsProperty),
                              audioSelectorName :: (Prelude.Maybe (Value Prelude.Text)),
                              audioType :: (Prelude.Maybe (Value Prelude.Text)),
                              audioTypeControl :: (Prelude.Maybe (Value Prelude.Text)),
                              audioWatermarkingSettings :: (Prelude.Maybe AudioWatermarkSettingsProperty),
                              codecSettings :: (Prelude.Maybe AudioCodecSettingsProperty),
                              dvbDashAccessibility :: (Prelude.Maybe (Value Prelude.Text)),
                              languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                              languageCodeControl :: (Prelude.Maybe (Value Prelude.Text)),
                              name :: (Prelude.Maybe (Value Prelude.Text)),
                              remixSettings :: (Prelude.Maybe RemixSettingsProperty),
                              streamName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioDescriptionProperty :: AudioDescriptionProperty
mkAudioDescriptionProperty
  = AudioDescriptionProperty
      {audioDashRoles = Prelude.Nothing,
       audioNormalizationSettings = Prelude.Nothing,
       audioSelectorName = Prelude.Nothing, audioType = Prelude.Nothing,
       audioTypeControl = Prelude.Nothing,
       audioWatermarkingSettings = Prelude.Nothing,
       codecSettings = Prelude.Nothing,
       dvbDashAccessibility = Prelude.Nothing,
       languageCode = Prelude.Nothing,
       languageCodeControl = Prelude.Nothing, name = Prelude.Nothing,
       remixSettings = Prelude.Nothing, streamName = Prelude.Nothing}
instance ToResourceProperties AudioDescriptionProperty where
  toResourceProperties AudioDescriptionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioDescription",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioDashRoles" Prelude.<$> audioDashRoles,
                            (JSON..=) "AudioNormalizationSettings"
                              Prelude.<$> audioNormalizationSettings,
                            (JSON..=) "AudioSelectorName" Prelude.<$> audioSelectorName,
                            (JSON..=) "AudioType" Prelude.<$> audioType,
                            (JSON..=) "AudioTypeControl" Prelude.<$> audioTypeControl,
                            (JSON..=) "AudioWatermarkingSettings"
                              Prelude.<$> audioWatermarkingSettings,
                            (JSON..=) "CodecSettings" Prelude.<$> codecSettings,
                            (JSON..=) "DvbDashAccessibility" Prelude.<$> dvbDashAccessibility,
                            (JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "LanguageCodeControl" Prelude.<$> languageCodeControl,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "RemixSettings" Prelude.<$> remixSettings,
                            (JSON..=) "StreamName" Prelude.<$> streamName])}
instance JSON.ToJSON AudioDescriptionProperty where
  toJSON AudioDescriptionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioDashRoles" Prelude.<$> audioDashRoles,
               (JSON..=) "AudioNormalizationSettings"
                 Prelude.<$> audioNormalizationSettings,
               (JSON..=) "AudioSelectorName" Prelude.<$> audioSelectorName,
               (JSON..=) "AudioType" Prelude.<$> audioType,
               (JSON..=) "AudioTypeControl" Prelude.<$> audioTypeControl,
               (JSON..=) "AudioWatermarkingSettings"
                 Prelude.<$> audioWatermarkingSettings,
               (JSON..=) "CodecSettings" Prelude.<$> codecSettings,
               (JSON..=) "DvbDashAccessibility" Prelude.<$> dvbDashAccessibility,
               (JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "LanguageCodeControl" Prelude.<$> languageCodeControl,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "RemixSettings" Prelude.<$> remixSettings,
               (JSON..=) "StreamName" Prelude.<$> streamName]))
instance Property "AudioDashRoles" AudioDescriptionProperty where
  type PropertyType "AudioDashRoles" AudioDescriptionProperty = ValueList Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {audioDashRoles = Prelude.pure newValue, ..}
instance Property "AudioNormalizationSettings" AudioDescriptionProperty where
  type PropertyType "AudioNormalizationSettings" AudioDescriptionProperty = AudioNormalizationSettingsProperty
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {audioNormalizationSettings = Prelude.pure newValue, ..}
instance Property "AudioSelectorName" AudioDescriptionProperty where
  type PropertyType "AudioSelectorName" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {audioSelectorName = Prelude.pure newValue, ..}
instance Property "AudioType" AudioDescriptionProperty where
  type PropertyType "AudioType" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty {audioType = Prelude.pure newValue, ..}
instance Property "AudioTypeControl" AudioDescriptionProperty where
  type PropertyType "AudioTypeControl" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {audioTypeControl = Prelude.pure newValue, ..}
instance Property "AudioWatermarkingSettings" AudioDescriptionProperty where
  type PropertyType "AudioWatermarkingSettings" AudioDescriptionProperty = AudioWatermarkSettingsProperty
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {audioWatermarkingSettings = Prelude.pure newValue, ..}
instance Property "CodecSettings" AudioDescriptionProperty where
  type PropertyType "CodecSettings" AudioDescriptionProperty = AudioCodecSettingsProperty
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {codecSettings = Prelude.pure newValue, ..}
instance Property "DvbDashAccessibility" AudioDescriptionProperty where
  type PropertyType "DvbDashAccessibility" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {dvbDashAccessibility = Prelude.pure newValue, ..}
instance Property "LanguageCode" AudioDescriptionProperty where
  type PropertyType "LanguageCode" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "LanguageCodeControl" AudioDescriptionProperty where
  type PropertyType "LanguageCodeControl" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {languageCodeControl = Prelude.pure newValue, ..}
instance Property "Name" AudioDescriptionProperty where
  type PropertyType "Name" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty {name = Prelude.pure newValue, ..}
instance Property "RemixSettings" AudioDescriptionProperty where
  type PropertyType "RemixSettings" AudioDescriptionProperty = RemixSettingsProperty
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty
        {remixSettings = Prelude.pure newValue, ..}
instance Property "StreamName" AudioDescriptionProperty where
  type PropertyType "StreamName" AudioDescriptionProperty = Value Prelude.Text
  set newValue AudioDescriptionProperty {..}
    = AudioDescriptionProperty {streamName = Prelude.pure newValue, ..}