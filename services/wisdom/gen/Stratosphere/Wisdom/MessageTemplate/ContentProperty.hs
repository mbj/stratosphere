module Stratosphere.Wisdom.MessageTemplate.ContentProperty (
        module Exports, ContentProperty(..), mkContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateContentProperty as Exports
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.SmsMessageTemplateContentProperty as Exports
import Stratosphere.ResourceProperties
data ContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html>
    ContentProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html#cfn-wisdom-messagetemplate-content-emailmessagetemplatecontent>
                     emailMessageTemplateContent :: (Prelude.Maybe EmailMessageTemplateContentProperty),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-content.html#cfn-wisdom-messagetemplate-content-smsmessagetemplatecontent>
                     smsMessageTemplateContent :: (Prelude.Maybe SmsMessageTemplateContentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentProperty :: ContentProperty
mkContentProperty
  = ContentProperty
      {haddock_workaround_ = (),
       emailMessageTemplateContent = Prelude.Nothing,
       smsMessageTemplateContent = Prelude.Nothing}
instance ToResourceProperties ContentProperty where
  toResourceProperties ContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.Content",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EmailMessageTemplateContent"
                              Prelude.<$> emailMessageTemplateContent,
                            (JSON..=) "SmsMessageTemplateContent"
                              Prelude.<$> smsMessageTemplateContent])}
instance JSON.ToJSON ContentProperty where
  toJSON ContentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EmailMessageTemplateContent"
                 Prelude.<$> emailMessageTemplateContent,
               (JSON..=) "SmsMessageTemplateContent"
                 Prelude.<$> smsMessageTemplateContent]))
instance Property "EmailMessageTemplateContent" ContentProperty where
  type PropertyType "EmailMessageTemplateContent" ContentProperty = EmailMessageTemplateContentProperty
  set newValue ContentProperty {..}
    = ContentProperty
        {emailMessageTemplateContent = Prelude.pure newValue, ..}
instance Property "SmsMessageTemplateContent" ContentProperty where
  type PropertyType "SmsMessageTemplateContent" ContentProperty = SmsMessageTemplateContentProperty
  set newValue ContentProperty {..}
    = ContentProperty
        {smsMessageTemplateContent = Prelude.pure newValue, ..}