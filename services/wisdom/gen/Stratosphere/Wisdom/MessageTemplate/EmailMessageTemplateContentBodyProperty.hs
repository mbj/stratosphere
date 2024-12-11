module Stratosphere.Wisdom.MessageTemplate.EmailMessageTemplateContentBodyProperty (
        module Exports, EmailMessageTemplateContentBodyProperty(..),
        mkEmailMessageTemplateContentBodyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Wisdom.MessageTemplate.MessageTemplateBodyContentProviderProperty as Exports
import Stratosphere.ResourceProperties
data EmailMessageTemplateContentBodyProperty
  = EmailMessageTemplateContentBodyProperty {html :: (Prelude.Maybe MessageTemplateBodyContentProviderProperty),
                                             plainText :: (Prelude.Maybe MessageTemplateBodyContentProviderProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailMessageTemplateContentBodyProperty ::
  EmailMessageTemplateContentBodyProperty
mkEmailMessageTemplateContentBodyProperty
  = EmailMessageTemplateContentBodyProperty
      {html = Prelude.Nothing, plainText = Prelude.Nothing}
instance ToResourceProperties EmailMessageTemplateContentBodyProperty where
  toResourceProperties EmailMessageTemplateContentBodyProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.EmailMessageTemplateContentBody",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Html" Prelude.<$> html,
                            (JSON..=) "PlainText" Prelude.<$> plainText])}
instance JSON.ToJSON EmailMessageTemplateContentBodyProperty where
  toJSON EmailMessageTemplateContentBodyProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Html" Prelude.<$> html,
               (JSON..=) "PlainText" Prelude.<$> plainText]))
instance Property "Html" EmailMessageTemplateContentBodyProperty where
  type PropertyType "Html" EmailMessageTemplateContentBodyProperty = MessageTemplateBodyContentProviderProperty
  set newValue EmailMessageTemplateContentBodyProperty {..}
    = EmailMessageTemplateContentBodyProperty
        {html = Prelude.pure newValue, ..}
instance Property "PlainText" EmailMessageTemplateContentBodyProperty where
  type PropertyType "PlainText" EmailMessageTemplateContentBodyProperty = MessageTemplateBodyContentProviderProperty
  set newValue EmailMessageTemplateContentBodyProperty {..}
    = EmailMessageTemplateContentBodyProperty
        {plainText = Prelude.pure newValue, ..}