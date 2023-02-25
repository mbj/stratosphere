module Stratosphere.Lex.Bot.BotAliasLocaleSettingsProperty (
        module Exports, BotAliasLocaleSettingsProperty(..),
        mkBotAliasLocaleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.CodeHookSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotAliasLocaleSettingsProperty
  = BotAliasLocaleSettingsProperty {codeHookSpecification :: (Prelude.Maybe CodeHookSpecificationProperty),
                                    enabled :: (Value Prelude.Bool)}
mkBotAliasLocaleSettingsProperty ::
  Value Prelude.Bool -> BotAliasLocaleSettingsProperty
mkBotAliasLocaleSettingsProperty enabled
  = BotAliasLocaleSettingsProperty
      {enabled = enabled, codeHookSpecification = Prelude.Nothing}
instance ToResourceProperties BotAliasLocaleSettingsProperty where
  toResourceProperties BotAliasLocaleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.BotAliasLocaleSettings",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Enabled" JSON..= enabled]
                           (Prelude.catMaybes
                              [(JSON..=) "CodeHookSpecification"
                                 Prelude.<$> codeHookSpecification]))}
instance JSON.ToJSON BotAliasLocaleSettingsProperty where
  toJSON BotAliasLocaleSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Enabled" JSON..= enabled]
              (Prelude.catMaybes
                 [(JSON..=) "CodeHookSpecification"
                    Prelude.<$> codeHookSpecification])))
instance Property "CodeHookSpecification" BotAliasLocaleSettingsProperty where
  type PropertyType "CodeHookSpecification" BotAliasLocaleSettingsProperty = CodeHookSpecificationProperty
  set newValue BotAliasLocaleSettingsProperty {..}
    = BotAliasLocaleSettingsProperty
        {codeHookSpecification = Prelude.pure newValue, ..}
instance Property "Enabled" BotAliasLocaleSettingsProperty where
  type PropertyType "Enabled" BotAliasLocaleSettingsProperty = Value Prelude.Bool
  set newValue BotAliasLocaleSettingsProperty {..}
    = BotAliasLocaleSettingsProperty {enabled = newValue, ..}