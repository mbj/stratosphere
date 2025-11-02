module Stratosphere.Wisdom.MessageTemplate.SmsMessageTemplateContentBodyProperty (
        module Exports, SmsMessageTemplateContentBodyProperty(..),
        mkSmsMessageTemplateContentBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.MessageTemplateBodyContentProviderProperty as Exports
import Stratosphere.ResourceProperties
data SmsMessageTemplateContentBodyProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontentbody.html>
    SmsMessageTemplateContentBodyProperty {haddock_workaround_ :: (),
                                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-wisdom-messagetemplate-smsmessagetemplatecontentbody.html#cfn-wisdom-messagetemplate-smsmessagetemplatecontentbody-plaintext>
                                           plainText :: (Prelude.Maybe MessageTemplateBodyContentProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsMessageTemplateContentBodyProperty ::
  SmsMessageTemplateContentBodyProperty
mkSmsMessageTemplateContentBodyProperty
  = SmsMessageTemplateContentBodyProperty
      {haddock_workaround_ = (), plainText = Prelude.Nothing}
instance ToResourceProperties SmsMessageTemplateContentBodyProperty where
  toResourceProperties SmsMessageTemplateContentBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.SmsMessageTemplateContentBody",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "PlainText" Prelude.<$> plainText])}
instance JSON.ToJSON SmsMessageTemplateContentBodyProperty where
  toJSON SmsMessageTemplateContentBodyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "PlainText" Prelude.<$> plainText]))
instance Property "PlainText" SmsMessageTemplateContentBodyProperty where
  type PropertyType "PlainText" SmsMessageTemplateContentBodyProperty = MessageTemplateBodyContentProviderProperty
  set newValue SmsMessageTemplateContentBodyProperty {..}
    = SmsMessageTemplateContentBodyProperty
        {plainText = Prelude.pure newValue, ..}