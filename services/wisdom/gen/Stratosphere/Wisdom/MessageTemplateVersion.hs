module Stratosphere.Wisdom.MessageTemplateVersion (
        MessageTemplateVersion(..), mkMessageTemplateVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageTemplateVersion
  = MessageTemplateVersion {messageTemplateArn :: (Value Prelude.Text),
                            messageTemplateContentSha256 :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplateVersion ::
  Value Prelude.Text -> MessageTemplateVersion
mkMessageTemplateVersion messageTemplateArn
  = MessageTemplateVersion
      {messageTemplateArn = messageTemplateArn,
       messageTemplateContentSha256 = Prelude.Nothing}
instance ToResourceProperties MessageTemplateVersion where
  toResourceProperties MessageTemplateVersion {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplateVersion",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MessageTemplateArn" JSON..= messageTemplateArn]
                           (Prelude.catMaybes
                              [(JSON..=) "MessageTemplateContentSha256"
                                 Prelude.<$> messageTemplateContentSha256]))}
instance JSON.ToJSON MessageTemplateVersion where
  toJSON MessageTemplateVersion {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MessageTemplateArn" JSON..= messageTemplateArn]
              (Prelude.catMaybes
                 [(JSON..=) "MessageTemplateContentSha256"
                    Prelude.<$> messageTemplateContentSha256])))
instance Property "MessageTemplateArn" MessageTemplateVersion where
  type PropertyType "MessageTemplateArn" MessageTemplateVersion = Value Prelude.Text
  set newValue MessageTemplateVersion {..}
    = MessageTemplateVersion {messageTemplateArn = newValue, ..}
instance Property "MessageTemplateContentSha256" MessageTemplateVersion where
  type PropertyType "MessageTemplateContentSha256" MessageTemplateVersion = Value Prelude.Text
  set newValue MessageTemplateVersion {..}
    = MessageTemplateVersion
        {messageTemplateContentSha256 = Prelude.pure newValue, ..}