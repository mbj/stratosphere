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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-advancedrecognitionsetting.html>
    AdvancedRecognitionSettingProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-advancedrecognitionsetting.html#cfn-lex-bot-advancedrecognitionsetting-audiorecognitionstrategy>
                                        audioRecognitionStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAdvancedRecognitionSettingProperty ::
  AdvancedRecognitionSettingProperty
mkAdvancedRecognitionSettingProperty
  = AdvancedRecognitionSettingProperty
      {haddock_workaround_ = (),
       audioRecognitionStrategy = Prelude.Nothing}
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
  set newValue AdvancedRecognitionSettingProperty {..}
    = AdvancedRecognitionSettingProperty
        {audioRecognitionStrategy = Prelude.pure newValue, ..}