module Stratosphere.Cognito.UserPool.VerificationMessageTemplateProperty (
        VerificationMessageTemplateProperty(..),
        mkVerificationMessageTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VerificationMessageTemplateProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html>
    VerificationMessageTemplateProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-defaultemailoption>
                                         defaultEmailOption :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessage>
                                         emailMessage :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailmessagebylink>
                                         emailMessageByLink :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubject>
                                         emailSubject :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-emailsubjectbylink>
                                         emailSubjectByLink :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpool-verificationmessagetemplate.html#cfn-cognito-userpool-verificationmessagetemplate-smsmessage>
                                         smsMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVerificationMessageTemplateProperty ::
  VerificationMessageTemplateProperty
mkVerificationMessageTemplateProperty
  = VerificationMessageTemplateProperty
      {haddock_workaround_ = (), defaultEmailOption = Prelude.Nothing,
       emailMessage = Prelude.Nothing,
       emailMessageByLink = Prelude.Nothing,
       emailSubject = Prelude.Nothing,
       emailSubjectByLink = Prelude.Nothing, smsMessage = Prelude.Nothing}
instance ToResourceProperties VerificationMessageTemplateProperty where
  toResourceProperties VerificationMessageTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.VerificationMessageTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefaultEmailOption" Prelude.<$> defaultEmailOption,
                            (JSON..=) "EmailMessage" Prelude.<$> emailMessage,
                            (JSON..=) "EmailMessageByLink" Prelude.<$> emailMessageByLink,
                            (JSON..=) "EmailSubject" Prelude.<$> emailSubject,
                            (JSON..=) "EmailSubjectByLink" Prelude.<$> emailSubjectByLink,
                            (JSON..=) "SmsMessage" Prelude.<$> smsMessage])}
instance JSON.ToJSON VerificationMessageTemplateProperty where
  toJSON VerificationMessageTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DefaultEmailOption" Prelude.<$> defaultEmailOption,
               (JSON..=) "EmailMessage" Prelude.<$> emailMessage,
               (JSON..=) "EmailMessageByLink" Prelude.<$> emailMessageByLink,
               (JSON..=) "EmailSubject" Prelude.<$> emailSubject,
               (JSON..=) "EmailSubjectByLink" Prelude.<$> emailSubjectByLink,
               (JSON..=) "SmsMessage" Prelude.<$> smsMessage]))
instance Property "DefaultEmailOption" VerificationMessageTemplateProperty where
  type PropertyType "DefaultEmailOption" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {defaultEmailOption = Prelude.pure newValue, ..}
instance Property "EmailMessage" VerificationMessageTemplateProperty where
  type PropertyType "EmailMessage" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {emailMessage = Prelude.pure newValue, ..}
instance Property "EmailMessageByLink" VerificationMessageTemplateProperty where
  type PropertyType "EmailMessageByLink" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {emailMessageByLink = Prelude.pure newValue, ..}
instance Property "EmailSubject" VerificationMessageTemplateProperty where
  type PropertyType "EmailSubject" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {emailSubject = Prelude.pure newValue, ..}
instance Property "EmailSubjectByLink" VerificationMessageTemplateProperty where
  type PropertyType "EmailSubjectByLink" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {emailSubjectByLink = Prelude.pure newValue, ..}
instance Property "SmsMessage" VerificationMessageTemplateProperty where
  type PropertyType "SmsMessage" VerificationMessageTemplateProperty = Value Prelude.Text
  set newValue VerificationMessageTemplateProperty {..}
    = VerificationMessageTemplateProperty
        {smsMessage = Prelude.pure newValue, ..}