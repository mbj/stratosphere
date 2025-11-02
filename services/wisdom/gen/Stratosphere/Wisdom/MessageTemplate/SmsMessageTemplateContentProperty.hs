module Stratosphere.Wisdom.MessageTemplate.SmsMessageTemplateContentProperty (
        module Exports, SmsMessageTemplateContentProperty(..),
        mkSmsMessageTemplateContentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.SmsMessageTemplateContentBodyProperty as Exports
import Stratosphere.ResourceProperties
data SmsMessageTemplateContentProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontent.html>
    SmsMessageTemplateContentProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontent.html#cfn-wisdom-messagetemplate-smsmessagetemplatecontent-body>
                                       body :: SmsMessageTemplateContentBodyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsMessageTemplateContentProperty ::
  SmsMessageTemplateContentBodyProperty
  -> SmsMessageTemplateContentProperty
mkSmsMessageTemplateContentProperty body
  = SmsMessageTemplateContentProperty
      {haddock_workaround_ = (), body = body}
instance ToResourceProperties SmsMessageTemplateContentProperty where
  toResourceProperties SmsMessageTemplateContentProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.SmsMessageTemplateContent",
         supportsTags = Prelude.False, properties = ["Body" JSON..= body]}
instance JSON.ToJSON SmsMessageTemplateContentProperty where
  toJSON SmsMessageTemplateContentProperty {..}
    = JSON.object ["Body" JSON..= body]
instance Property "Body" SmsMessageTemplateContentProperty where
  type PropertyType "Body" SmsMessageTemplateContentProperty = SmsMessageTemplateContentBodyProperty
  set newValue SmsMessageTemplateContentProperty {..}
    = SmsMessageTemplateContentProperty {body = newValue, ..}