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
  = ContentProperty {emailMessageTemplateContent :: (Prelude.Maybe EmailMessageTemplateContentProperty),
                     smsMessageTemplateContent :: (Prelude.Maybe SmsMessageTemplateContentProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContentProperty :: ContentProperty
mkContentProperty
  = ContentProperty
      {emailMessageTemplateContent = Prelude.Nothing,
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