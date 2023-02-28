module Stratosphere.MediaLive.Channel.Fmp4HlsSettingsProperty (
        Fmp4HlsSettingsProperty(..), mkFmp4HlsSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Fmp4HlsSettingsProperty
  = Fmp4HlsSettingsProperty {audioRenditionSets :: (Prelude.Maybe (Value Prelude.Text)),
                             nielsenId3Behavior :: (Prelude.Maybe (Value Prelude.Text)),
                             timedMetadataBehavior :: (Prelude.Maybe (Value Prelude.Text))}
mkFmp4HlsSettingsProperty :: Fmp4HlsSettingsProperty
mkFmp4HlsSettingsProperty
  = Fmp4HlsSettingsProperty
      {audioRenditionSets = Prelude.Nothing,
       nielsenId3Behavior = Prelude.Nothing,
       timedMetadataBehavior = Prelude.Nothing}
instance ToResourceProperties Fmp4HlsSettingsProperty where
  toResourceProperties Fmp4HlsSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Fmp4HlsSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
                            (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
                            (JSON..=) "TimedMetadataBehavior"
                              Prelude.<$> timedMetadataBehavior])}
instance JSON.ToJSON Fmp4HlsSettingsProperty where
  toJSON Fmp4HlsSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioRenditionSets" Prelude.<$> audioRenditionSets,
               (JSON..=) "NielsenId3Behavior" Prelude.<$> nielsenId3Behavior,
               (JSON..=) "TimedMetadataBehavior"
                 Prelude.<$> timedMetadataBehavior]))
instance Property "AudioRenditionSets" Fmp4HlsSettingsProperty where
  type PropertyType "AudioRenditionSets" Fmp4HlsSettingsProperty = Value Prelude.Text
  set newValue Fmp4HlsSettingsProperty {..}
    = Fmp4HlsSettingsProperty
        {audioRenditionSets = Prelude.pure newValue, ..}
instance Property "NielsenId3Behavior" Fmp4HlsSettingsProperty where
  type PropertyType "NielsenId3Behavior" Fmp4HlsSettingsProperty = Value Prelude.Text
  set newValue Fmp4HlsSettingsProperty {..}
    = Fmp4HlsSettingsProperty
        {nielsenId3Behavior = Prelude.pure newValue, ..}
instance Property "TimedMetadataBehavior" Fmp4HlsSettingsProperty where
  type PropertyType "TimedMetadataBehavior" Fmp4HlsSettingsProperty = Value Prelude.Text
  set newValue Fmp4HlsSettingsProperty {..}
    = Fmp4HlsSettingsProperty
        {timedMetadataBehavior = Prelude.pure newValue, ..}