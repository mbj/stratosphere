module Stratosphere.MediaLive.Channel.AudioLanguageSelectionProperty (
        AudioLanguageSelectionProperty(..),
        mkAudioLanguageSelectionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AudioLanguageSelectionProperty
  = AudioLanguageSelectionProperty {languageCode :: (Prelude.Maybe (Value Prelude.Text)),
                                    languageSelectionPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAudioLanguageSelectionProperty :: AudioLanguageSelectionProperty
mkAudioLanguageSelectionProperty
  = AudioLanguageSelectionProperty
      {languageCode = Prelude.Nothing,
       languageSelectionPolicy = Prelude.Nothing}
instance ToResourceProperties AudioLanguageSelectionProperty where
  toResourceProperties AudioLanguageSelectionProperty {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Channel.AudioLanguageSelection",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LanguageCode" Prelude.<$> languageCode,
                            (JSON..=) "LanguageSelectionPolicy"
                              Prelude.<$> languageSelectionPolicy])}
instance JSON.ToJSON AudioLanguageSelectionProperty where
  toJSON AudioLanguageSelectionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LanguageCode" Prelude.<$> languageCode,
               (JSON..=) "LanguageSelectionPolicy"
                 Prelude.<$> languageSelectionPolicy]))
instance Property "LanguageCode" AudioLanguageSelectionProperty where
  type PropertyType "LanguageCode" AudioLanguageSelectionProperty = Value Prelude.Text
  set newValue AudioLanguageSelectionProperty {..}
    = AudioLanguageSelectionProperty
        {languageCode = Prelude.pure newValue, ..}
instance Property "LanguageSelectionPolicy" AudioLanguageSelectionProperty where
  type PropertyType "LanguageSelectionPolicy" AudioLanguageSelectionProperty = Value Prelude.Text
  set newValue AudioLanguageSelectionProperty {..}
    = AudioLanguageSelectionProperty
        {languageSelectionPolicy = Prelude.pure newValue, ..}