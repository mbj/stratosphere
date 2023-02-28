module Stratosphere.Lex.BotAlias.BotAliasLocaleSettingsItemProperty (
        module Exports, BotAliasLocaleSettingsItemProperty(..),
        mkBotAliasLocaleSettingsItemProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.BotAliasLocaleSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotAliasLocaleSettingsItemProperty
  = BotAliasLocaleSettingsItemProperty {botAliasLocaleSetting :: BotAliasLocaleSettingsProperty,
                                        localeId :: (Value Prelude.Text)}
mkBotAliasLocaleSettingsItemProperty ::
  BotAliasLocaleSettingsProperty
  -> Value Prelude.Text -> BotAliasLocaleSettingsItemProperty
mkBotAliasLocaleSettingsItemProperty botAliasLocaleSetting localeId
  = BotAliasLocaleSettingsItemProperty
      {botAliasLocaleSetting = botAliasLocaleSetting,
       localeId = localeId}
instance ToResourceProperties BotAliasLocaleSettingsItemProperty where
  toResourceProperties BotAliasLocaleSettingsItemProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.BotAliasLocaleSettingsItem",
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