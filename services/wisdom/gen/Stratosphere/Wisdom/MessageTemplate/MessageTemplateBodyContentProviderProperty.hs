module Stratosphere.Wisdom.MessageTemplate.MessageTemplateBodyContentProviderProperty (
        MessageTemplateBodyContentProviderProperty(..),
        mkMessageTemplateBodyContentProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MessageTemplateBodyContentProviderProperty
  = MessageTemplateBodyContentProviderProperty {content :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMessageTemplateBodyContentProviderProperty ::
  MessageTemplateBodyContentProviderProperty
mkMessageTemplateBodyContentProviderProperty
  = MessageTemplateBodyContentProviderProperty
      {content = Prelude.Nothing}
instance ToResourceProperties MessageTemplateBodyContentProviderProperty where
  toResourceProperties
    MessageTemplateBodyContentProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::Wisdom::MessageTemplate.MessageTemplateBodyContentProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content])}
instance JSON.ToJSON MessageTemplateBodyContentProviderProperty where
  toJSON MessageTemplateBodyContentProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "Content" Prelude.<$> content]))
instance Property "Content" MessageTemplateBodyContentProviderProperty where
  type PropertyType "Content" MessageTemplateBodyContentProviderProperty = Value Prelude.Text
  set newValue MessageTemplateBodyContentProviderProperty {}
    = MessageTemplateBodyContentProviderProperty
        {content = Prelude.pure newValue, ..}