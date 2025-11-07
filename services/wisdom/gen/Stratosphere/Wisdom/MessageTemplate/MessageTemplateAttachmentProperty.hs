module Stratosphere.Wisdom.MessageTemplate.MessageTemplateAttachmentProperty (
        MessageTemplateAttachmentProperty(..),
        mkMessageTemplateAttachmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageTemplateAttachmentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattachment.html>
    MessageTemplateAttachmentProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattachment.html#cfn-wisdom-messagetemplate-messagetemplateattachment-attachmentid>
                                       attachmentId :: (Prelude.Maybe (Value Prelude.Text)),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattachment.html#cfn-wisdom-messagetemplate-messagetemplateattachment-attachmentname>
                                       attachmentName :: (Value Prelude.Text),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-messagetemplateattachment.html#cfn-wisdom-messagetemplate-messagetemplateattachment-s3presignedurl>
                                       s3PresignedUrl :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplateAttachmentProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MessageTemplateAttachmentProperty
mkMessageTemplateAttachmentProperty attachmentName s3PresignedUrl
  = MessageTemplateAttachmentProperty
      {haddock_workaround_ = (), attachmentName = attachmentName,
       s3PresignedUrl = s3PresignedUrl, attachmentId = Prelude.Nothing}
instance ToResourceProperties MessageTemplateAttachmentProperty where
  toResourceProperties MessageTemplateAttachmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.MessageTemplateAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AttachmentName" JSON..= attachmentName,
                            "S3PresignedUrl" JSON..= s3PresignedUrl]
                           (Prelude.catMaybes
                              [(JSON..=) "AttachmentId" Prelude.<$> attachmentId]))}
instance JSON.ToJSON MessageTemplateAttachmentProperty where
  toJSON MessageTemplateAttachmentProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AttachmentName" JSON..= attachmentName,
               "S3PresignedUrl" JSON..= s3PresignedUrl]
              (Prelude.catMaybes
                 [(JSON..=) "AttachmentId" Prelude.<$> attachmentId])))
instance Property "AttachmentId" MessageTemplateAttachmentProperty where
  type PropertyType "AttachmentId" MessageTemplateAttachmentProperty = Value Prelude.Text
  set newValue MessageTemplateAttachmentProperty {..}
    = MessageTemplateAttachmentProperty
        {attachmentId = Prelude.pure newValue, ..}
instance Property "AttachmentName" MessageTemplateAttachmentProperty where
  type PropertyType "AttachmentName" MessageTemplateAttachmentProperty = Value Prelude.Text
  set newValue MessageTemplateAttachmentProperty {..}
    = MessageTemplateAttachmentProperty {attachmentName = newValue, ..}
instance Property "S3PresignedUrl" MessageTemplateAttachmentProperty where
  type PropertyType "S3PresignedUrl" MessageTemplateAttachmentProperty = Value Prelude.Text
  set newValue MessageTemplateAttachmentProperty {..}
    = MessageTemplateAttachmentProperty {s3PresignedUrl = newValue, ..}