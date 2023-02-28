module Stratosphere.Lex.Bot.AdvancedRecognitionSettingProperty (
        AdvancedRecognitionSettingProperty(..),
        mkAdvancedRecognitionSettingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AdvancedRecognitionSettingProperty
  = AdvancedRecognitionSettingProperty {audioRecognitionStrategy :: (Prelude.Maybe (Value Prelude.Text))}
mkAdvancedRecognitionSettingProperty ::
  AdvancedRecognitionSettingProperty
mkAdvancedRecognitionSettingProperty
  = AdvancedRecognitionSettingProperty
      {audioRecognitionStrategy = Prelude.Nothing}
instance ToResourceProperties AdvancedRecognitionSettingProperty where
  toResourceProperties AdvancedRecognitionSettingProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.AdvancedRecognitionSetting",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioRecognitionStrategy"
                              Prelude.<$> audioRecognitionStrategy])}
instance JSON.ToJSON AdvancedRecognitionSettingProperty where
  toJSON AdvancedRecognitionSettingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioRecognitionStrategy"
                 Prelude.<$> audioRecognitionStrategy]))
instance Property "AudioRecognitionStrategy" AdvancedRecognitionSettingProperty where
  type PropertyType "AudioRecognitionStrategy" AdvancedRecognitionSettingProperty = Value Prelude.Text
  set newValue AdvancedRecognitionSettingProperty {}
    = AdvancedRecognitionSettingProperty
        {audioRecognitionStrategy = Prelude.pure newValue, ..}