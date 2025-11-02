module Stratosphere.Pinpoint.EmailTemplate (
        EmailTemplate(..), mkEmailTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EmailTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html>
    EmailTemplate {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-defaultsubstitutions>
                   defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-htmlpart>
                   htmlPart :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-subject>
                   subject :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-tags>
                   tags :: (Prelude.Maybe JSON.Object),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatedescription>
                   templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-templatename>
                   templateName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-emailtemplate.html#cfn-pinpoint-emailtemplate-textpart>
                   textPart :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEmailTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> EmailTemplate
mkEmailTemplate subject templateName
  = EmailTemplate
      {haddock_workaround_ = (), subject = subject,
       templateName = templateName,
       defaultSubstitutions = Prelude.Nothing, htmlPart = Prelude.Nothing,
       tags = Prelude.Nothing, templateDescription = Prelude.Nothing,
       textPart = Prelude.Nothing}
instance ToResourceProperties EmailTemplate where
  toResourceProperties EmailTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::EmailTemplate",
         supportsTags = Prelude.True,
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