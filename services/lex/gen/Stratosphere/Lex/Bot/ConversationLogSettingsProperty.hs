module Stratosphere.Lex.Bot.ConversationLogSettingsProperty (
        module Exports, ConversationLogSettingsProperty(..),
        mkConversationLogSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lex.Bot.AudioLogSettingProperty as Exports
import {-# SOURCE #-} Stratosphere.Lex.Bot.TextLogSettingProperty as Exports
import Stratosphere.ResourceProperties
data ConversationLogSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conversationlogsettings.html>
    ConversationLogSettingsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conversationlogsettings.html#cfn-lex-bot-conversationlogsettings-audiologsettings>
                                     audioLogSettings :: (Prelude.Maybe [AudioLogSettingProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lex-bot-conversationlogsettings.html#cfn-lex-bot-conversationlogsettings-textlogsettings>
                                     textLogSettings :: (Prelude.Maybe [TextLogSettingProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConversationLogSettingsProperty ::
  ConversationLogSettingsProperty
mkConversationLogSettingsProperty
  = ConversationLogSettingsProperty
      {haddock_workaround_ = (), audioLogSettings = Prelude.Nothing,
       textLogSettings = Prelude.Nothing}
instance ToResourceProperties ConversationLogSettingsProperty where
  toResourceProperties ConversationLogSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lex::Bot.ConversationLogSettings",
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