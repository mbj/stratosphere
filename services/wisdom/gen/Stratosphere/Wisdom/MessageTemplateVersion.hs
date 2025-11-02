module Stratosphere.Wisdom.MessageTemplateVersion (
        MessageTemplateVersion(..), mkMessageTemplateVersion
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageTemplateVersion
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-messagetemplateversion.html>
    MessageTemplateVersion {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-messagetemplateversion.html#cfn-wisdom-messagetemplateversion-messagetemplatearn>
                            messageTemplateArn :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-wisdom-messagetemplateversion.html#cfn-wisdom-messagetemplateversion-messagetemplatecontentsha256>
                            messageTemplateContentSha256 :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplateVersion ::
  Value Prelude.Text -> MessageTemplateVersion
mkMessageTemplateVersion messageTemplateArn
  = MessageTemplateVersion
      {haddock_workaround_ = (), messageTemplateArn = messageTemplateArn,
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