module Stratosphere.MediaLive.Channel.TimecodeBurninSettingsProperty (
        TimecodeBurninSettingsProperty(..),
        mkTimecodeBurninSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TimecodeBurninSettingsProperty
  = TimecodeBurninSettingsProperty {fontSize :: (Prelude.Maybe (Value Prelude.Text)),
                                    position :: (Prelude.Maybe (Value Prelude.Text)),
                                    prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTimecodeBurninSettingsProperty :: TimecodeBurninSettingsProperty
mkTimecodeBurninSettingsProperty
  = TimecodeBurninSettingsProperty
      {fontSize = Prelude.Nothing, position = Prelude.Nothing,
       prefix = Prelude.Nothing}
instance ToResourceProperties TimecodeBurninSettingsProperty where
  toResourceProperties TimecodeBurninSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.TimecodeBurninSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "FontSize" Prelude.<$> fontSize,
                            (JSON..=) "Position" Prelude.<$> position,
                            (JSON..=) "Prefix" Prelude.<$> prefix])}
instance JSON.ToJSON TimecodeBurninSettingsProperty where
  toJSON TimecodeBurninSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "FontSize" Prelude.<$> fontSize,
               (JSON..=) "Position" Prelude.<$> position,
               (JSON..=) "Prefix" Prelude.<$> prefix]))
instance Property "FontSize" TimecodeBurninSettingsProperty where
  type PropertyType "FontSize" TimecodeBurninSettingsProperty = Value Prelude.Text
  set newValue TimecodeBurninSettingsProperty {..}
    = TimecodeBurninSettingsProperty
        {fontSize = Prelude.pure newValue, ..}
instance Property "Position" TimecodeBurninSettingsProperty where
  type PropertyType "Position" TimecodeBurninSettingsProperty = Value Prelude.Text
  set newValue TimecodeBurninSettingsProperty {..}
    = TimecodeBurninSettingsProperty
        {position = Prelude.pure newValue, ..}
instance Property "Prefix" TimecodeBurninSettingsProperty where
  type PropertyType "Prefix" TimecodeBurninSettingsProperty = Value Prelude.Text
  set newValue TimecodeBurninSettingsProperty {..}
    = TimecodeBurninSettingsProperty
        {prefix = Prelude.pure newValue, ..}