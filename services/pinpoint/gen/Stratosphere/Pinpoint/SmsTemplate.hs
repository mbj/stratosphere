module Stratosphere.Pinpoint.SmsTemplate (
        SmsTemplate(..), mkSmsTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmsTemplate
  = SmsTemplate {body :: (Value Prelude.Text),
                 defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                 tags :: (Prelude.Maybe JSON.Object),
                 templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 templateName :: (Value Prelude.Text)}
mkSmsTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> SmsTemplate
mkSmsTemplate body templateName
  = SmsTemplate
      {body = body, templateName = templateName,
       defaultSubstitutions = Prelude.Nothing, tags = Prelude.Nothing,
       templateDescription = Prelude.Nothing}
instance ToResourceProperties SmsTemplate where
  toResourceProperties SmsTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::SmsTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Body" JSON..= body, "TemplateName" JSON..= templateName]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateDescription" Prelude.<$> templateDescription]))}
instance JSON.ToJSON SmsTemplate where
  toJSON SmsTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Body" JSON..= body, "TemplateName" JSON..= templateName]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateDescription" Prelude.<$> templateDescription])))
instance Property "Body" SmsTemplate where
  type PropertyType "Body" SmsTemplate = Value Prelude.Text
  set newValue SmsTemplate {..} = SmsTemplate {body = newValue, ..}
instance Property "DefaultSubstitutions" SmsTemplate where
  type PropertyType "DefaultSubstitutions" SmsTemplate = Value Prelude.Text
  set newValue SmsTemplate {..}
    = SmsTemplate {defaultSubstitutions = Prelude.pure newValue, ..}
instance Property "Tags" SmsTemplate where
  type PropertyType "Tags" SmsTemplate = JSON.Object
  set newValue SmsTemplate {..}
    = SmsTemplate {tags = Prelude.pure newValue, ..}
instance Property "TemplateDescription" SmsTemplate where
  type PropertyType "TemplateDescription" SmsTemplate = Value Prelude.Text
  set newValue SmsTemplate {..}
    = SmsTemplate {templateDescription = Prelude.pure newValue, ..}
instance Property "TemplateName" SmsTemplate where
  type PropertyType "TemplateName" SmsTemplate = Value Prelude.Text
  set newValue SmsTemplate {..}
    = SmsTemplate {templateName = newValue, ..}