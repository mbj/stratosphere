module Stratosphere.Lex.BotAlias.BotAliasLocaleSettingsProperty (
        module Exports, BotAliasLocaleSettingsProperty(..),
        mkBotAliasLocaleSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.CodeHookSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BotAliasLocaleSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html>
    BotAliasLocaleSettingsProperty {haddock_workaround_ :: (),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html#cfn-lex-botalias-botaliaslocalesettings-codehookspecification>
                                    codeHookSpecification :: (Prelude.Maybe CodeHookSpecificationProperty),
                                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-botaliaslocalesettings.html#cfn-lex-botalias-botaliaslocalesettings-enabled>
                                    enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBotAliasLocaleSettingsProperty ::
  Value Prelude.Bool -> BotAliasLocaleSettingsProperty
mkBotAliasLocaleSettingsProperty enabled
  = BotAliasLocaleSettingsProperty
      {haddock_workaround_ = (), enabled = enabled,
       codeHookSpecification = Prelude.Nothing}
instance ToResourceProperties BotAliasLocaleSettingsProperty where
  toResourceProperties BotAliasLocaleSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.BotAliasLocaleSettings",
         supportsTags = Prelude.False,
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