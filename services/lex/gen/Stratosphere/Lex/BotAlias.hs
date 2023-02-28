module Stratosphere.Lex.BotAlias (
        module Exports, BotAlias(..), mkBotAlias
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.BotAliasLocaleSettingsItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.ConversationLogSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.SentimentAnalysisSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data BotAlias
  = BotAlias {botAliasLocaleSettings :: (Prelude.Maybe [BotAliasLocaleSettingsItemProperty]),
              botAliasName :: (Value Prelude.Text),
              botAliasTags :: (Prelude.Maybe [Tag]),
              botId :: (Value Prelude.Text),
              botVersion :: (Prelude.Maybe (Value Prelude.Text)),
              conversationLogSettings :: (Prelude.Maybe ConversationLogSettingsProperty),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              sentimentAnalysisSettings :: (Prelude.Maybe SentimentAnalysisSettingsProperty)}
mkBotAlias :: Value Prelude.Text -> Value Prelude.Text -> BotAlias
mkBotAlias botAliasName botId
  = BotAlias
      {botAliasName = botAliasName, botId = botId,
       botAliasLocaleSettings = Prelude.Nothing,
       botAliasTags = Prelude.Nothing, botVersion = Prelude.Nothing,
       conversationLogSettings = Prelude.Nothing,
       description = Prelude.Nothing,
       sentimentAnalysisSettings = Prelude.Nothing}
instance ToResourceProperties BotAlias where
  toResourceProperties BotAlias {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BotAliasName" JSON..= botAliasName, "BotId" JSON..= botId]
                           (Prelude.catMaybes
                              [(JSON..=) "BotAliasLocaleSettings"
                                 Prelude.<$> botAliasLocaleSettings,
                               (JSON..=) "BotAliasTags" Prelude.<$> botAliasTags,
                               (JSON..=) "BotVersion" Prelude.<$> botVersion,
                               (JSON..=) "ConversationLogSettings"
                                 Prelude.<$> conversationLogSettings,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "SentimentAnalysisSettings"
                                 Prelude.<$> sentimentAnalysisSettings]))}
instance JSON.ToJSON BotAlias where
  toJSON BotAlias {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BotAliasName" JSON..= botAliasName, "BotId" JSON..= botId]
              (Prelude.catMaybes
                 [(JSON..=) "BotAliasLocaleSettings"
                    Prelude.<$> botAliasLocaleSettings,
                  (JSON..=) "BotAliasTags" Prelude.<$> botAliasTags,
                  (JSON..=) "BotVersion" Prelude.<$> botVersion,
                  (JSON..=) "ConversationLogSettings"
                    Prelude.<$> conversationLogSettings,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "SentimentAnalysisSettings"
                    Prelude.<$> sentimentAnalysisSettings])))
instance Property "BotAliasLocaleSettings" BotAlias where
  type PropertyType "BotAliasLocaleSettings" BotAlias = [BotAliasLocaleSettingsItemProperty]
  set newValue BotAlias {..}
    = BotAlias {botAliasLocaleSettings = Prelude.pure newValue, ..}
instance Property "BotAliasName" BotAlias where
  type PropertyType "BotAliasName" BotAlias = Value Prelude.Text
  set newValue BotAlias {..} = BotAlias {botAliasName = newValue, ..}
instance Property "BotAliasTags" BotAlias where
  type PropertyType "BotAliasTags" BotAlias = [Tag]
  set newValue BotAlias {..}
    = BotAlias {botAliasTags = Prelude.pure newValue, ..}
instance Property "BotId" BotAlias where
  type PropertyType "BotId" BotAlias = Value Prelude.Text
  set newValue BotAlias {..} = BotAlias {botId = newValue, ..}
instance Property "BotVersion" BotAlias where
  type PropertyType "BotVersion" BotAlias = Value Prelude.Text
  set newValue BotAlias {..}
    = BotAlias {botVersion = Prelude.pure newValue, ..}
instance Property "ConversationLogSettings" BotAlias where
  type PropertyType "ConversationLogSettings" BotAlias = ConversationLogSettingsProperty
  set newValue BotAlias {..}
    = BotAlias {conversationLogSettings = Prelude.pure newValue, ..}
instance Property "Description" BotAlias where
  type PropertyType "Description" BotAlias = Value Prelude.Text
  set newValue BotAlias {..}
    = BotAlias {description = Prelude.pure newValue, ..}
instance Property "SentimentAnalysisSettings" BotAlias where
  type PropertyType "SentimentAnalysisSettings" BotAlias = SentimentAnalysisSettingsProperty
  set newValue BotAlias {..}
    = BotAlias {sentimentAnalysisSettings = Prelude.pure newValue, ..}