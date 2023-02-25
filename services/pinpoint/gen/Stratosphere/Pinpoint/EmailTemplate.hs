module Stratosphere.Pinpoint.EmailTemplate (
        EmailTemplate(..), mkEmailTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailTemplate
  = EmailTemplate {defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                   htmlPart :: (Prelude.Maybe (Value Prelude.Text)),
                   subject :: (Value Prelude.Text),
                   tags :: (Prelude.Maybe JSON.Object),
                   templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                   templateName :: (Value Prelude.Text),
                   textPart :: (Prelude.Maybe (Value Prelude.Text))}
mkEmailTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> EmailTemplate
mkEmailTemplate subject templateName
  = EmailTemplate
      {subject = subject, templateName = templateName,
       defaultSubstitutions = Prelude.Nothing, htmlPart = Prelude.Nothing,
       tags = Prelude.Nothing, templateDescription = Prelude.Nothing,
       textPart = Prelude.Nothing}
instance ToResourceProperties EmailTemplate where
  toResourceProperties EmailTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::EmailTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Subject" JSON..= subject, "TemplateName" JSON..= templateName]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                               (JSON..=) "HtmlPart" Prelude.<$> htmlPart,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateDescription" Prelude.<$> templateDescription,
                               (JSON..=) "TextPart" Prelude.<$> textPart]))}
instance JSON.ToJSON EmailTemplate where
  toJSON EmailTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Subject" JSON..= subject, "TemplateName" JSON..= templateName]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultSubstitutions" Prelude.<$> defaultSubstitutions,
                  (JSON..=) "HtmlPart" Prelude.<$> htmlPart,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateDescription" Prelude.<$> templateDescription,
                  (JSON..=) "TextPart" Prelude.<$> textPart])))
instance Property "DefaultSubstitutions" EmailTemplate where
  type PropertyType "DefaultSubstitutions" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {defaultSubstitutions = Prelude.pure newValue, ..}
instance Property "HtmlPart" EmailTemplate where
  type PropertyType "HtmlPart" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {htmlPart = Prelude.pure newValue, ..}
instance Property "Subject" EmailTemplate where
  type PropertyType "Subject" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {subject = newValue, ..}
instance Property "Tags" EmailTemplate where
  type PropertyType "Tags" EmailTemplate = JSON.Object
  set newValue EmailTemplate {..}
    = EmailTemplate {tags = Prelude.pure newValue, ..}
instance Property "TemplateDescription" EmailTemplate where
  type PropertyType "TemplateDescription" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {templateDescription = Prelude.pure newValue, ..}
instance Property "TemplateName" EmailTemplate where
  type PropertyType "TemplateName" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {templateName = newValue, ..}
instance Property "TextPart" EmailTemplate where
  type PropertyType "TextPart" EmailTemplate = Value Prelude.Text
  set newValue EmailTemplate {..}
    = EmailTemplate {textPart = Prelude.pure newValue, ..}