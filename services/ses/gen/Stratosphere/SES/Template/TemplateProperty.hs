module Stratosphere.SES.Template.TemplateProperty (
        TemplateProperty(..), mkTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TemplateProperty
  = TemplateProperty {htmlPart :: (Prelude.Maybe (Value Prelude.Text)),
                      subjectPart :: (Value Prelude.Text),
                      templateName :: (Prelude.Maybe (Value Prelude.Text)),
                      textPart :: (Prelude.Maybe (Value Prelude.Text))}
mkTemplateProperty :: Value Prelude.Text -> TemplateProperty
mkTemplateProperty subjectPart
  = TemplateProperty
      {subjectPart = subjectPart, htmlPart = Prelude.Nothing,
       templateName = Prelude.Nothing, textPart = Prelude.Nothing}
instance ToResourceProperties TemplateProperty where
  toResourceProperties TemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SES::Template.Template",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubjectPart" JSON..= subjectPart]
                           (Prelude.catMaybes
                              [(JSON..=) "HtmlPart" Prelude.<$> htmlPart,
                               (JSON..=) "TemplateName" Prelude.<$> templateName,
                               (JSON..=) "TextPart" Prelude.<$> textPart]))}
instance JSON.ToJSON TemplateProperty where
  toJSON TemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubjectPart" JSON..= subjectPart]
              (Prelude.catMaybes
                 [(JSON..=) "HtmlPart" Prelude.<$> htmlPart,
                  (JSON..=) "TemplateName" Prelude.<$> templateName,
                  (JSON..=) "TextPart" Prelude.<$> textPart])))
instance Property "HtmlPart" TemplateProperty where
  type PropertyType "HtmlPart" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {htmlPart = Prelude.pure newValue, ..}
instance Property "SubjectPart" TemplateProperty where
  type PropertyType "SubjectPart" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {subjectPart = newValue, ..}
instance Property "TemplateName" TemplateProperty where
  type PropertyType "TemplateName" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {templateName = Prelude.pure newValue, ..}
instance Property "TextPart" TemplateProperty where
  type PropertyType "TextPart" TemplateProperty = Value Prelude.Text
  set newValue TemplateProperty {..}
    = TemplateProperty {textPart = Prelude.pure newValue, ..}