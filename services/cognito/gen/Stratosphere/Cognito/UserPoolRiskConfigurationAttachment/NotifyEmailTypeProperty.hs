module Stratosphere.Cognito.UserPoolRiskConfigurationAttachment.NotifyEmailTypeProperty (
        NotifyEmailTypeProperty(..), mkNotifyEmailTypeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NotifyEmailTypeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html>
    NotifyEmailTypeProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-htmlbody>
                             htmlBody :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-subject>
                             subject :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-userpoolriskconfigurationattachment-notifyemailtype.html#cfn-cognito-userpoolriskconfigurationattachment-notifyemailtype-textbody>
                             textBody :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNotifyEmailTypeProperty ::
  Value Prelude.Text -> NotifyEmailTypeProperty
mkNotifyEmailTypeProperty subject
  = NotifyEmailTypeProperty
      {haddock_workaround_ = (), subject = subject,
       htmlBody = Prelude.Nothing, textBody = Prelude.Nothing}
instance ToResourceProperties NotifyEmailTypeProperty where
  toResourceProperties NotifyEmailTypeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPoolRiskConfigurationAttachment.NotifyEmailType",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Subject" JSON..= subject]
                           (Prelude.catMaybes
                              [(JSON..=) "HtmlBody" Prelude.<$> htmlBody,
                               (JSON..=) "TextBody" Prelude.<$> textBody]))}
instance JSON.ToJSON NotifyEmailTypeProperty where
  toJSON NotifyEmailTypeProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Subject" JSON..= subject]
              (Prelude.catMaybes
                 [(JSON..=) "HtmlBody" Prelude.<$> htmlBody,
                  (JSON..=) "TextBody" Prelude.<$> textBody])))
instance Property "HtmlBody" NotifyEmailTypeProperty where
  type PropertyType "HtmlBody" NotifyEmailTypeProperty = Value Prelude.Text
  set newValue NotifyEmailTypeProperty {..}
    = NotifyEmailTypeProperty {htmlBody = Prelude.pure newValue, ..}
instance Property "Subject" NotifyEmailTypeProperty where
  type PropertyType "Subject" NotifyEmailTypeProperty = Value Prelude.Text
  set newValue NotifyEmailTypeProperty {..}
    = NotifyEmailTypeProperty {subject = newValue, ..}
instance Property "TextBody" NotifyEmailTypeProperty where
  type PropertyType "TextBody" NotifyEmailTypeProperty = Value Prelude.Text
  set newValue NotifyEmailTypeProperty {..}
    = NotifyEmailTypeProperty {textBody = Prelude.pure newValue, ..}