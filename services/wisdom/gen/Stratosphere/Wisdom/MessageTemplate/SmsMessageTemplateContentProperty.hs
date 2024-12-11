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
  = SmsMessageTemplateContentProperty {body :: SmsMessageTemplateContentBodyProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsMessageTemplateContentProperty ::
  SmsMessageTemplateContentBodyProperty
  -> SmsMessageTemplateContentProperty
mkSmsMessageTemplateContentProperty body
  = SmsMessageTemplateContentProperty {body = body}
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
  set newValue SmsMessageTemplateContentProperty {}
    = SmsMessageTemplateContentProperty {body = newValue, ..}