module Stratosphere.MediaLive.Channel.AudioCodecSettingsProperty (
        module Exports, AudioCodecSettingsProperty(..),
        mkAudioCodecSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.AacSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Ac3SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Eac3AtmosSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Eac3SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.Mp2SettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.PassThroughSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.WavSettingsProperty as Exports
import Stratosphere.ResourceProperties
data AudioCodecSettingsProperty
  = AudioCodecSettingsProperty {aacSettings :: (Prelude.Maybe AacSettingsProperty),
                                ac3Settings :: (Prelude.Maybe Ac3SettingsProperty),
                                eac3AtmosSettings :: (Prelude.Maybe Eac3AtmosSettingsProperty),
                                eac3Settings :: (Prelude.Maybe Eac3SettingsProperty),
                                mp2Settings :: (Prelude.Maybe Mp2SettingsProperty),
                                passThroughSettings :: (Prelude.Maybe PassThroughSettingsProperty),
                                wavSettings :: (Prelude.Maybe WavSettingsProperty)}
mkAudioCodecSettingsProperty :: AudioCodecSettingsProperty
mkAudioCodecSettingsProperty
  = AudioCodecSettingsProperty
      {aacSettings = Prelude.Nothing, ac3Settings = Prelude.Nothing,
       eac3AtmosSettings = Prelude.Nothing,
       eac3Settings = Prelude.Nothing, mp2Settings = Prelude.Nothing,
       passThroughSettings = Prelude.Nothing,
       wavSettings = Prelude.Nothing}
instance ToResourceProperties AudioCodecSettingsProperty where
  toResourceProperties AudioCodecSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioCodecSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AacSettings" Prelude.<$> aacSettings,
                            (JSON..=) "Ac3Settings" Prelude.<$> ac3Settings,
                            (JSON..=) "Eac3AtmosSettings" Prelude.<$> eac3AtmosSettings,
                            (JSON..=) "Eac3Settings" Prelude.<$> eac3Settings,
                            (JSON..=) "Mp2Settings" Prelude.<$> mp2Settings,
                            (JSON..=) "PassThroughSettings" Prelude.<$> passThroughSettings,
                            (JSON..=) "WavSettings" Prelude.<$> wavSettings])}
instance JSON.ToJSON AudioCodecSettingsProperty where
  toJSON AudioCodecSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AacSettings" Prelude.<$> aacSettings,
               (JSON..=) "Ac3Settings" Prelude.<$> ac3Settings,
               (JSON..=) "Eac3AtmosSettings" Prelude.<$> eac3AtmosSettings,
               (JSON..=) "Eac3Settings" Prelude.<$> eac3Settings,
               (JSON..=) "Mp2Settings" Prelude.<$> mp2Settings,
               (JSON..=) "PassThroughSettings" Prelude.<$> passThroughSettings,
               (JSON..=) "WavSettings" Prelude.<$> wavSettings]))
instance Property "AacSettings" AudioCodecSettingsProperty where
  type PropertyType "AacSettings" AudioCodecSettingsProperty = AacSettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {aacSettings = Prelude.pure newValue, ..}
instance Property "Ac3Settings" AudioCodecSettingsProperty where
  type PropertyType "Ac3Settings" AudioCodecSettingsProperty = Ac3SettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {ac3Settings = Prelude.pure newValue, ..}
instance Property "Eac3AtmosSettings" AudioCodecSettingsProperty where
  type PropertyType "Eac3AtmosSettings" AudioCodecSettingsProperty = Eac3AtmosSettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {eac3AtmosSettings = Prelude.pure newValue, ..}
instance Property "Eac3Settings" AudioCodecSettingsProperty where
  type PropertyType "Eac3Settings" AudioCodecSettingsProperty = Eac3SettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {eac3Settings = Prelude.pure newValue, ..}
instance Property "Mp2Settings" AudioCodecSettingsProperty where
  type PropertyType "Mp2Settings" AudioCodecSettingsProperty = Mp2SettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {mp2Settings = Prelude.pure newValue, ..}
instance Property "PassThroughSettings" AudioCodecSettingsProperty where
  type PropertyType "PassThroughSettings" AudioCodecSettingsProperty = PassThroughSettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {passThroughSettings = Prelude.pure newValue, ..}
instance Property "WavSettings" AudioCodecSettingsProperty where
  type PropertyType "WavSettings" AudioCodecSettingsProperty = WavSettingsProperty
  set newValue AudioCodecSettingsProperty {..}
    = AudioCodecSettingsProperty
        {wavSettings = Prelude.pure newValue, ..}