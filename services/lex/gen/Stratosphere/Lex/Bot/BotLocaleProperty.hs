module Stratosphere.Lex.Bot.BotLocaleProperty (
        module Exports, BotLocaleProperty(..), mkBotLocaleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CustomVocabularyProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.IntentProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SlotTypeProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.VoiceSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotLocaleProperty
  = BotLocaleProperty {customVocabulary :: (Prelude.Maybe CustomVocabularyProperty),
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       intents :: (Prelude.Maybe [IntentProperty]),
                       localeId :: (Value Prelude.Text),
                       nluConfidenceThreshold :: (Value Prelude.Double),
                       slotTypes :: (Prelude.Maybe [SlotTypeProperty]),
                       voiceSettings :: (Prelude.Maybe VoiceSettingsProperty)}
mkBotLocaleProperty ::
  Value Prelude.Text -> Value Prelude.Double -> BotLocaleProperty
mkBotLocaleProperty localeId nluConfidenceThreshold
  = BotLocaleProperty
      {localeId = localeId,
       nluConfidenceThreshold = nluConfidenceThreshold,
       customVocabulary = Prelude.Nothing, description = Prelude.Nothing,
       intents = Prelude.Nothing, slotTypes = Prelude.Nothing,
       voiceSettings = Prelude.Nothing}
instance ToResourceProperties BotLocaleProperty where
  toResourceProperties BotLocaleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BotLocale",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LocaleId" JSON..= localeId,
                            "NluConfidenceThreshold" JSON..= nluConfidenceThreshold]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomVocabulary" Prelude.<$> customVocabulary,
                               (JSON..=) "Description" Prelude.<$> description,
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