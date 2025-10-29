module Stratosphere.Lex.BotAlias.ConversationLogSettingsProperty (
        module Exports, ConversationLogSettingsProperty(..),
        mkConversationLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.AudioLogSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.BotAlias.TextLogSettingProperty as Exports
import Stratosphere.ResourceProperties
data ConversationLogSettingsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-conversationlogsettings.html>
    ConversationLogSettingsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-conversationlogsettings.html#cfn-lex-botalias-conversationlogsettings-audiologsettings>
                                     audioLogSettings :: (Prelude.Maybe [AudioLogSettingProperty]),
                                     -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-botalias-conversationlogsettings.html#cfn-lex-botalias-conversationlogsettings-textlogsettings>
                                     textLogSettings :: (Prelude.Maybe [TextLogSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConversationLogSettingsProperty ::
  ConversationLogSettingsProperty
mkConversationLogSettingsProperty
  = ConversationLogSettingsProperty
      {audioLogSettings = Prelude.Nothing,
       textLogSettings = Prelude.Nothing}
instance ToResourceProperties ConversationLogSettingsProperty where
  toResourceProperties ConversationLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::BotAlias.ConversationLogSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AudioLogSettings" Prelude.<$> audioLogSettings,
                            (JSON..=) "TextLogSettings" Prelude.<$> textLogSettings])}
instance JSON.ToJSON ConversationLogSettingsProperty where
  toJSON ConversationLogSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AudioLogSettings" Prelude.<$> audioLogSettings,
               (JSON..=) "TextLogSettings" Prelude.<$> textLogSettings]))
instance Property "AudioLogSettings" ConversationLogSettingsProperty where
  type PropertyType "AudioLogSettings" ConversationLogSettingsProperty = [AudioLogSettingProperty]
  set newValue ConversationLogSettingsProperty {..}
    = ConversationLogSettingsProperty
        {audioLogSettings = Prelude.pure newValue, ..}
instance Property "TextLogSettings" ConversationLogSettingsProperty where
  type PropertyType "TextLogSettings" ConversationLogSettingsProperty = [TextLogSettingProperty]
  set newValue ConversationLogSettingsProperty {..}
    = ConversationLogSettingsProperty
        {textLogSettings = Prelude.pure newValue, ..}