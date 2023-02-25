module Stratosphere.Lex.Bot (
        module Exports, Bot(..), mkBot
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.BotLocaleProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.DataPrivacyProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.S3LocationProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.TestBotAliasSettingsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Bot
  = Bot {autoBuildBotLocales :: (Prelude.Maybe (Value Prelude.Bool)),
         botFileS3Location :: (Prelude.Maybe S3LocationProperty),
         botLocales :: (Prelude.Maybe [BotLocaleProperty]),
         botTags :: (Prelude.Maybe [Tag]),
         dataPrivacy :: DataPrivacyProperty,
         description :: (Prelude.Maybe (Value Prelude.Text)),
         idleSessionTTLInSeconds :: (Value Prelude.Integer),
         name :: (Value Prelude.Text),
         roleArn :: (Value Prelude.Text),
         testBotAliasSettings :: (Prelude.Maybe TestBotAliasSettingsProperty),
         testBotAliasTags :: (Prelude.Maybe [Tag])}
mkBot ::
  DataPrivacyProperty
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> Bot
mkBot dataPrivacy idleSessionTTLInSeconds name roleArn
  = Bot
      {dataPrivacy = dataPrivacy,
       idleSessionTTLInSeconds = idleSessionTTLInSeconds, name = name,
       roleArn = roleArn, autoBuildBotLocales = Prelude.Nothing,
       botFileS3Location = Prelude.Nothing, botLocales = Prelude.Nothing,
       botTags = Prelude.Nothing, description = Prelude.Nothing,
       testBotAliasSettings = Prelude.Nothing,
       testBotAliasTags = Prelude.Nothing}
instance ToResourceProperties Bot where
  toResourceProperties Bot {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DataPrivacy" JSON..= dataPrivacy,
                            "IdleSessionTTLInSeconds" JSON..= idleSessionTTLInSeconds,
                            "Name" JSON..= name, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoBuildBotLocales" Prelude.<$> autoBuildBotLocales,
                               (JSON..=) "BotFileS3Location" Prelude.<$> botFileS3Location,
                               (JSON..=) "BotLocales" Prelude.<$> botLocales,
                               (JSON..=) "BotTags" Prelude.<$> botTags,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "TestBotAliasSettings" Prelude.<$> testBotAliasSettings,
                               (JSON..=) "TestBotAliasTags" Prelude.<$> testBotAliasTags]))}
instance JSON.ToJSON Bot where
  toJSON Bot {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DataPrivacy" JSON..= dataPrivacy,
               "IdleSessionTTLInSeconds" JSON..= idleSessionTTLInSeconds,
               "Name" JSON..= name, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AutoBuildBotLocales" Prelude.<$> autoBuildBotLocales,
                  (JSON..=) "BotFileS3Location" Prelude.<$> botFileS3Location,
                  (JSON..=) "BotLocales" Prelude.<$> botLocales,
                  (JSON..=) "BotTags" Prelude.<$> botTags,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "TestBotAliasSettings" Prelude.<$> testBotAliasSettings,
                  (JSON..=) "TestBotAliasTags" Prelude.<$> testBotAliasTags])))
instance Property "AutoBuildBotLocales" Bot where
  type PropertyType "AutoBuildBotLocales" Bot = Value Prelude.Bool
  set newValue Bot {..}
    = Bot {autoBuildBotLocales = Prelude.pure newValue, ..}
instance Property "BotFileS3Location" Bot where
  type PropertyType "BotFileS3Location" Bot = S3LocationProperty
  set newValue Bot {..}
    = Bot {botFileS3Location = Prelude.pure newValue, ..}
instance Property "BotLocales" Bot where
  type PropertyType "BotLocales" Bot = [BotLocaleProperty]
  set newValue Bot {..}
    = Bot {botLocales = Prelude.pure newValue, ..}
instance Property "BotTags" Bot where
  type PropertyType "BotTags" Bot = [Tag]
  set newValue Bot {..} = Bot {botTags = Prelude.pure newValue, ..}
instance Property "DataPrivacy" Bot where
  type PropertyType "DataPrivacy" Bot = DataPrivacyProperty
  set newValue Bot {..} = Bot {dataPrivacy = newValue, ..}
instance Property "Description" Bot where
  type PropertyType "Description" Bot = Value Prelude.Text
  set newValue Bot {..}
    = Bot {description = Prelude.pure newValue, ..}
instance Property "IdleSessionTTLInSeconds" Bot where
  type PropertyType "IdleSessionTTLInSeconds" Bot = Value Prelude.Integer
  set newValue Bot {..}
    = Bot {idleSessionTTLInSeconds = newValue, ..}
instance Property "Name" Bot where
  type PropertyType "Name" Bot = Value Prelude.Text
  set newValue Bot {..} = Bot {name = newValue, ..}
instance Property "RoleArn" Bot where
  type PropertyType "RoleArn" Bot = Value Prelude.Text
  set newValue Bot {..} = Bot {roleArn = newValue, ..}
instance Property "TestBotAliasSettings" Bot where
  type PropertyType "TestBotAliasSettings" Bot = TestBotAliasSettingsProperty
  set newValue Bot {..}
    = Bot {testBotAliasSettings = Prelude.pure newValue, ..}
instance Property "TestBotAliasTags" Bot where
  type PropertyType "TestBotAliasTags" Bot = [Tag]
  set newValue Bot {..}
    = Bot {testBotAliasTags = Prelude.pure newValue, ..}