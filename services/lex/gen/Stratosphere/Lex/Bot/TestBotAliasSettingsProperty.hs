module Stratosphere.Lex.Bot.TestBotAliasSettingsProperty (
        module Exports, TestBotAliasSettingsProperty(..),
        mkTestBotAliasSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BotAliasLocaleSettingsItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.ConversationLogSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.SentimentAnalysisSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TestBotAliasSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-testbotaliassettings.html>
    TestBotAliasSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-testbotaliassettings.html#cfn-lex-bot-testbotaliassettings-botaliaslocalesettings>
                                  botAliasLocaleSettings :: (Prelude.Maybe [BotAliasLocaleSettingsItemProperty]),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-testbotaliassettings.html#cfn-lex-bot-testbotaliassettings-conversationlogsettings>
                                  conversationLogSettings :: (Prelude.Maybe ConversationLogSettingsProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-testbotaliassettings.html#cfn-lex-bot-testbotaliassettings-description>
                                  description :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-testbotaliassettings.html#cfn-lex-bot-testbotaliassettings-sentimentanalysissettings>
                                  sentimentAnalysisSettings :: (Prelude.Maybe SentimentAnalysisSettingsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTestBotAliasSettingsProperty :: TestBotAliasSettingsProperty
mkTestBotAliasSettingsProperty
  = TestBotAliasSettingsProperty
      {botAliasLocaleSettings = Prelude.Nothing,
       conversationLogSettings = Prelude.Nothing,
       description = Prelude.Nothing,
       sentimentAnalysisSettings = Prelude.Nothing}
instance ToResourceProperties TestBotAliasSettingsProperty where
  toResourceProperties TestBotAliasSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.TestBotAliasSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BotAliasLocaleSettings"
                              Prelude.<$> botAliasLocaleSettings,
                            (JSON..=) "ConversationLogSettings"
                              Prelude.<$> conversationLogSettings,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "SentimentAnalysisSettings"
                              Prelude.<$> sentimentAnalysisSettings])}
instance JSON.ToJSON TestBotAliasSettingsProperty where
  toJSON TestBotAliasSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BotAliasLocaleSettings"
                 Prelude.<$> botAliasLocaleSettings,
               (JSON..=) "ConversationLogSettings"
                 Prelude.<$> conversationLogSettings,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "SentimentAnalysisSettings"
                 Prelude.<$> sentimentAnalysisSettings]))
instance Property "BotAliasLocaleSettings" TestBotAliasSettingsProperty where
  type PropertyType "BotAliasLocaleSettings" TestBotAliasSettingsProperty = [BotAliasLocaleSettingsItemProperty]
  set newValue TestBotAliasSettingsProperty {..}
    = TestBotAliasSettingsProperty
        {botAliasLocaleSettings = Prelude.pure newValue, ..}
instance Property "ConversationLogSettings" TestBotAliasSettingsProperty where
  type PropertyType "ConversationLogSettings" TestBotAliasSettingsProperty = ConversationLogSettingsProperty
  set newValue TestBotAliasSettingsProperty {..}
    = TestBotAliasSettingsProperty
        {conversationLogSettings = Prelude.pure newValue, ..}
instance Property "Description" TestBotAliasSettingsProperty where
  type PropertyType "Description" TestBotAliasSettingsProperty = Value Prelude.Text
  set newValue TestBotAliasSettingsProperty {..}
    = TestBotAliasSettingsProperty
        {description = Prelude.pure newValue, ..}
instance Property "SentimentAnalysisSettings" TestBotAliasSettingsProperty where
  type PropertyType "SentimentAnalysisSettings" TestBotAliasSettingsProperty = SentimentAnalysisSettingsProperty
  set newValue TestBotAliasSettingsProperty {..}
    = TestBotAliasSettingsProperty
        {sentimentAnalysisSettings = Prelude.pure newValue, ..}