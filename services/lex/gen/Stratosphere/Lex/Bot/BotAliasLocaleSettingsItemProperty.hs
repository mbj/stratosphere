module Stratosphere.Lex.Bot.BotAliasLocaleSettingsItemProperty (
        module Exports, BotAliasLocaleSettingsItemProperty(..),
        mkBotAliasLocaleSettingsItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BotAliasLocaleSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotAliasLocaleSettingsItemProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botaliaslocalesettingsitem.html>
    BotAliasLocaleSettingsItemProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botaliaslocalesettingsitem.html#cfn-lex-bot-botaliaslocalesettingsitem-botaliaslocalesetting>
                                        botAliasLocaleSetting :: BotAliasLocaleSettingsProperty,
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-botaliaslocalesettingsitem.html#cfn-lex-bot-botaliaslocalesettingsitem-localeid>
                                        localeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotAliasLocaleSettingsItemProperty ::
  BotAliasLocaleSettingsProperty
  -> Value Prelude.Text -> BotAliasLocaleSettingsItemProperty
mkBotAliasLocaleSettingsItemProperty botAliasLocaleSetting localeId
  = BotAliasLocaleSettingsItemProperty
      {haddock_workaround_ = (),
       botAliasLocaleSetting = botAliasLocaleSetting, localeId = localeId}
instance ToResourceProperties BotAliasLocaleSettingsItemProperty where
  toResourceProperties BotAliasLocaleSettingsItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BotAliasLocaleSettingsItem",
         supportsTags = Prelude.False,
         properties = ["BotAliasLocaleSetting"
                         JSON..= botAliasLocaleSetting,
                       "LocaleId" JSON..= localeId]}
instance JSON.ToJSON BotAliasLocaleSettingsItemProperty where
  toJSON BotAliasLocaleSettingsItemProperty {..}
    = JSON.object
        ["BotAliasLocaleSetting" JSON..= botAliasLocaleSetting,
         "LocaleId" JSON..= localeId]
instance Property "BotAliasLocaleSetting" BotAliasLocaleSettingsItemProperty where
  type PropertyType "BotAliasLocaleSetting" BotAliasLocaleSettingsItemProperty = BotAliasLocaleSettingsProperty
  set newValue BotAliasLocaleSettingsItemProperty {..}
    = BotAliasLocaleSettingsItemProperty
        {botAliasLocaleSetting = newValue, ..}
instance Property "LocaleId" BotAliasLocaleSettingsItemProperty where
  type PropertyType "LocaleId" BotAliasLocaleSettingsItemProperty = Value Prelude.Text
  set newValue BotAliasLocaleSettingsItemProperty {..}
    = BotAliasLocaleSettingsItemProperty {localeId = newValue, ..}