module Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateContentProperty (
        module Exports, EmailMessageTemplateContentProperty(..),
        mkEmailMessageTemplateContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateContentBodyProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateHeaderProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailMessageTemplateContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontent.html>
    EmailMessageTemplateContentProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontent.html#cfn-wisdom-messagetemplate-emailmessagetemplatecontent-body>
                                         body :: EmailMessageTemplateContentBodyProperty,
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontent.html#cfn-wisdom-messagetemplate-emailmessagetemplatecontent-headers>
                                         headers :: [EmailMessageTemplateHeaderProperty],
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-emailmessagetemplatecontent.html#cfn-wisdom-messagetemplate-emailmessagetemplatecontent-subject>
                                         subject :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailMessageTemplateContentProperty ::
  EmailMessageTemplateContentBodyProperty
  -> [EmailMessageTemplateHeaderProperty]
     -> Value Prelude.Text -> EmailMessageTemplateContentProperty
mkEmailMessageTemplateContentProperty body headers subject
  = EmailMessageTemplateContentProperty
      {haddock_workaround_ = (), body = body, headers = headers,
       subject = subject}
instance ToResourceProperties EmailMessageTemplateContentProperty where
  toResourceProperties EmailMessageTemplateContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.EmailMessageTemplateContent",
         supportsTags = Prelude.False,
         properties = ["Body" JSON..= body, "Headers" JSON..= headers,
                       "Subject" JSON..= subject]}
instance JSON.ToJSON EmailMessageTemplateContentProperty where
  toJSON EmailMessageTemplateContentProperty {..}
    = JSON.object
        ["Body" JSON..= body, "Headers" JSON..= headers,
         "Subject" JSON..= subject]
instance Property "Body" EmailMessageTemplateContentProperty where
  type PropertyType "Body" EmailMessageTemplateContentProperty = EmailMessageTemplateContentBodyProperty
  set newValue EmailMessageTemplateContentProperty {..}
    = EmailMessageTemplateContentProperty {body = newValue, ..}
instance Property "Headers" EmailMessageTemplateContentProperty where
  type PropertyType "Headers" EmailMessageTemplateContentProperty = [EmailMessageTemplateHeaderProperty]
  set newValue EmailMessageTemplateContentProperty {..}
    = EmailMessageTemplateContentProperty {headers = newValue, ..}
instance Property "Subject" EmailMessageTemplateContentProperty where
  type PropertyType "Subject" EmailMessageTemplateContentProperty = Value Prelude.Text
  set newValue EmailMessageTemplateContentProperty {..}
    = EmailMessageTemplateContentProperty {subject = newValue, ..}