module Stratosphere.MediaLive.Channel.StandardHlsSettingsProperty (
        module Exports, StandardHlsSettingsProperty(..),
        mkStandardHlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Channel.M3u8SettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StandardHlsSettingsProperty
  = StandardHlsSettingsProperty {audioRenditionSets :: (Prelude.Maybe (Value Prelude.Text)),
                                 m3u8Settings :: (Prelude.Maybe M3u8SettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStandardHlsSettingsProperty :: StandardHlsSettingsProperty
mkStandardHlsSettingsProperty
  = StandardHlsSettingsProperty
      {audioRenditionSets = Prelude.Nothing,
       m3u8Settings = Prelude.Nothing}
instance ToResourceProperties StandardHlsSettingsProperty where
  toResourceProperties StandardHlsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.StandardHlsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
                            (JSON..=) "M3u8Settings" Prelude.<$> m3u8Settings])}
instance JSON.ToJSON StandardHlsSettingsProperty where
  toJSON StandardHlsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
               (JSON..=) "M3u8Settings" Prelude.<$> m3u8Settings]))
instance Property "AudioRenditionSets" StandardHlsSettingsProperty where
  type PropertyType "AudioRenditionSets" StandardHlsSettingsProperty = Value Prelude.Text
  set newValue StandardHlsSettingsProperty {..}
    = StandardHlsSettingsProperty
        {audioRenditionSets = Prelude.pure newValue, ..}
instance Property "M3u8Settings" StandardHlsSettingsProperty where
  type PropertyType "M3u8Settings" StandardHlsSettingsProperty = M3u8SettingsProperty
  set newValue StandardHlsSettingsProperty {..}
    = StandardHlsSettingsProperty
        {m3u8Settings = Prelude.pure newValue, ..}