module Stratosphere.MediaLive.Channel.Mp2SettingsProperty (
        Mp2SettingsProperty(..), mkMp2SettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Mp2SettingsProperty
  = Mp2SettingsProperty {bitrate :: (Prelude.Maybe (Value Prelude.Double)),
                         codingMode :: (Prelude.Maybe (Value Prelude.Text)),
                         sampleRate :: (Prelude.Maybe (Value Prelude.Double))}
mkMp2SettingsProperty :: Mp2SettingsProperty
mkMp2SettingsProperty
  = Mp2SettingsProperty
      {bitrate = Prelude.Nothing, codingMode = Prelude.Nothing,
       sampleRate = Prelude.Nothing}
instance ToResourceProperties Mp2SettingsProperty where
  toResourceProperties Mp2SettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.Mp2Settings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Bitrate" Prelude.<$> bitrate,
                            (JSON..=) "CodingMode" Prelude.<$> codingMode,
                            (JSON..=) "SampleRate" Prelude.<$> sampleRate])}
instance JSON.ToJSON Mp2SettingsProperty where
  toJSON Mp2SettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Bitrate" Prelude.<$> bitrate,
               (JSON..=) "CodingMode" Prelude.<$> codingMode,
               (JSON..=) "SampleRate" Prelude.<$> sampleRate]))
instance Property "Bitrate" Mp2SettingsProperty where
  type PropertyType "Bitrate" Mp2SettingsProperty = Value Prelude.Double
  set newValue Mp2SettingsProperty {..}
    = Mp2SettingsProperty {bitrate = Prelude.pure newValue, ..}
instance Property "CodingMode" Mp2SettingsProperty where
  type PropertyType "CodingMode" Mp2SettingsProperty = Value Prelude.Text
  set newValue Mp2SettingsProperty {..}
    = Mp2SettingsProperty {codingMode = Prelude.pure newValue, ..}
instance Property "SampleRate" Mp2SettingsProperty where
  type PropertyType "SampleRate" Mp2SettingsProperty = Value Prelude.Double
  set newValue Mp2SettingsProperty {..}
    = Mp2SettingsProperty {sampleRate = Prelude.pure newValue, ..}