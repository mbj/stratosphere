module Stratosphere.MediaLive.Channel.TemporalFilterSettingsProperty (
        TemporalFilterSettingsProperty(..),
        mkTemporalFilterSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemporalFilterSettingsProperty
  = TemporalFilterSettingsProperty {postFilterSharpening :: (Prelude.Maybe (Value Prelude.Text)),
                                    strength :: (Prelude.Maybe (Value Prelude.Text))}
mkTemporalFilterSettingsProperty :: TemporalFilterSettingsProperty
mkTemporalFilterSettingsProperty
  = TemporalFilterSettingsProperty
      {postFilterSharpening = Prelude.Nothing,
       strength = Prelude.Nothing}
instance ToResourceProperties TemporalFilterSettingsProperty where
  toResourceProperties TemporalFilterSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TemporalFilterSettings",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PostFilterSharpening" Prelude.<$> postFilterSharpening,
                            (JSON..=) "Strength" Prelude.<$> strength])}
instance JSON.ToJSON TemporalFilterSettingsProperty where
  toJSON TemporalFilterSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PostFilterSharpening" Prelude.<$> postFilterSharpening,
               (JSON..=) "Strength" Prelude.<$> strength]))
instance Property "PostFilterSharpening" TemporalFilterSettingsProperty where
  type PropertyType "PostFilterSharpening" TemporalFilterSettingsProperty = Value Prelude.Text
  set newValue TemporalFilterSettingsProperty {..}
    = TemporalFilterSettingsProperty
        {postFilterSharpening = Prelude.pure newValue, ..}
instance Property "Strength" TemporalFilterSettingsProperty where
  type PropertyType "Strength" TemporalFilterSettingsProperty = Value Prelude.Text
  set newValue TemporalFilterSettingsProperty {..}
    = TemporalFilterSettingsProperty
        {strength = Prelude.pure newValue, ..}