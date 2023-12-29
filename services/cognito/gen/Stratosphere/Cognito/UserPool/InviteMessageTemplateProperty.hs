module Stratosphere.Cognito.UserPool.InviteMessageTemplateProperty (
        InviteMessageTemplateProperty(..), mkInviteMessageTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InviteMessageTemplateProperty
  = InviteMessageTemplateProperty {emailMessage :: (Prelude.Maybe (Value Prelude.Text)),
                                   emailSubject :: (Prelude.Maybe (Value Prelude.Text)),
                                   sMSMessage :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInviteMessageTemplateProperty :: InviteMessageTemplateProperty
mkInviteMessageTemplateProperty
  = InviteMessageTemplateProperty
      {emailMessage = Prelude.Nothing, emailSubject = Prelude.Nothing,
       sMSMessage = Prelude.Nothing}
instance ToResourceProperties InviteMessageTemplateProperty where
  toResourceProperties InviteMessageTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::UserPool.InviteMessageTemplate",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailMessage" Prelude.<$> emailMessage,
                            (JSON..=) "EmailSubject" Prelude.<$> emailSubject,
                            (JSON..=) "SMSMessage" Prelude.<$> sMSMessage])}
instance JSON.ToJSON InviteMessageTemplateProperty where
  toJSON InviteMessageTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailMessage" Prelude.<$> emailMessage,
               (JSON..=) "EmailSubject" Prelude.<$> emailSubject,
               (JSON..=) "SMSMessage" Prelude.<$> sMSMessage]))
instance Property "EmailMessage" InviteMessageTemplateProperty where
  type PropertyType "EmailMessage" InviteMessageTemplateProperty = Value Prelude.Text
  set newValue InviteMessageTemplateProperty {..}
    = InviteMessageTemplateProperty
        {emailMessage = Prelude.pure newValue, ..}
instance Property "EmailSubject" InviteMessageTemplateProperty where
  type PropertyType "EmailSubject" InviteMessageTemplateProperty = Value Prelude.Text
  set newValue InviteMessageTemplateProperty {..}
    = InviteMessageTemplateProperty
        {emailSubject = Prelude.pure newValue, ..}
instance Property "SMSMessage" InviteMessageTemplateProperty where
  type PropertyType "SMSMessage" InviteMessageTemplateProperty = Value Prelude.Text
  set newValue InviteMessageTemplateProperty {..}
    = InviteMessageTemplateProperty
        {sMSMessage = Prelude.pure newValue, ..}