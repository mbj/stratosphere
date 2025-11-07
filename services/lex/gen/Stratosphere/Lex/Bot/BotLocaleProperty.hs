module Stratosphere.Lex.Bot.BotLocaleProperty (
        module Exports, BotLocaleProperty(..), mkBotLocaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CustomVocabularyProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.GenerativeAISettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.IntentProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.VoiceSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotLocaleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html>
    BotLocaleProperty {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-customvocabulary>
                       customVocabulary :: (Prelude.Maybe CustomVocabularyProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-generativeaisettings>
                       generativeAISettings :: (Prelude.Maybe GenerativeAISettingsProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-intents>
                       intents :: (Prelude.Maybe [IntentProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-localeid>
                       localeId :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-nluconfidencethreshold>
                       nluConfidenceThreshold :: (Value Prelude.Double),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-slottypes>
                       slotTypes :: (Prelude.Maybe [SlotTypeProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botlocale.html#cfn-lex-bot-botlocale-voicesettings>
                       voiceSettings :: (Prelude.Maybe VoiceSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotLocaleProperty ::
  Value Prelude.Text -> Value Prelude.Double -> BotLocaleProperty
mkBotLocaleProperty localeId nluConfidenceThreshold
  = BotLocaleProperty
      {haddock_workaround_ = (), localeId = localeId,
       nluConfidenceThreshold = nluConfidenceThreshold,
       customVocabulary = Prelude.Nothing, description = Prelude.Nothing,
       generativeAISettings = Prelude.Nothing, intents = Prelude.Nothing,
       slotTypes = Prelude.Nothing, voiceSettings = Prelude.Nothing}
instance ToResourceProperties BotLocaleProperty where
  toResourceProperties BotLocaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BotLocale", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocaleId" JSON..= localeId,
                            "NluConfidenceThreshold" JSON..= nluConfidenceThreshold]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomVocabulary" Prelude.<$> customVocabulary,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GenerativeAISettings" Prelude.<$> generativeAISettings,
                               (JSON..=) "Intents" Prelude.<$> intents,
                               (JSON..=) "SlotTypes" Prelude.<$> slotTypes,
                               (JSON..=) "VoiceSettings" Prelude.<$> voiceSettings]))}
instance JSON.ToJSON BotLocaleProperty where
  toJSON BotLocaleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LocaleId" JSON..= localeId,
               "NluConfidenceThreshold" JSON..= nluConfidenceThreshold]
              (Prelude.catMaybes
                 [(JSON..=) "CustomVocabulary" Prelude.<$> customVocabulary,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GenerativeAISettings" Prelude.<$> generativeAISettings,
                  (JSON..=) "Intents" Prelude.<$> intents,
                  (JSON..=) "SlotTypes" Prelude.<$> slotTypes,
                  (JSON..=) "VoiceSettings" Prelude.<$> voiceSettings])))
instance Property "CustomVocabulary" BotLocaleProperty where
  type PropertyType "CustomVocabulary" BotLocaleProperty = CustomVocabularyProperty
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {customVocabulary = Prelude.pure newValue, ..}
instance Property "Description" BotLocaleProperty where
  type PropertyType "Description" BotLocaleProperty = Value Prelude.Text
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {description = Prelude.pure newValue, ..}
instance Property "GenerativeAISettings" BotLocaleProperty where
  type PropertyType "GenerativeAISettings" BotLocaleProperty = GenerativeAISettingsProperty
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty
        {generativeAISettings = Prelude.pure newValue, ..}
instance Property "Intents" BotLocaleProperty where
  type PropertyType "Intents" BotLocaleProperty = [IntentProperty]
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {intents = Prelude.pure newValue, ..}
instance Property "LocaleId" BotLocaleProperty where
  type PropertyType "LocaleId" BotLocaleProperty = Value Prelude.Text
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {localeId = newValue, ..}
instance Property "NluConfidenceThreshold" BotLocaleProperty where
  type PropertyType "NluConfidenceThreshold" BotLocaleProperty = Value Prelude.Double
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {nluConfidenceThreshold = newValue, ..}
instance Property "SlotTypes" BotLocaleProperty where
  type PropertyType "SlotTypes" BotLocaleProperty = [SlotTypeProperty]
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {slotTypes = Prelude.pure newValue, ..}
instance Property "VoiceSettings" BotLocaleProperty where
  type PropertyType "VoiceSettings" BotLocaleProperty = VoiceSettingsProperty
  set newValue BotLocaleProperty {..}
    = BotLocaleProperty {voiceSettings = Prelude.pure newValue, ..}