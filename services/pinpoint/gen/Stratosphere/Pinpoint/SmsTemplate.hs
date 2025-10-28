module Stratosphere.Pinpoint.SmsTemplate (
        SmsTemplate(..), mkSmsTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SmsTemplate
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html>
    SmsTemplate {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-body>
                 body :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-defaultsubstitutions>
                 defaultSubstitutions :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-tags>
                 tags :: (Prelude.Maybe JSON.Object),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatedescription>
                 templateDescription :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-pinpoint-smstemplate.html#cfn-pinpoint-smstemplate-templatename>
                 templateName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSmsTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> SmsTemplate
mkSmsTemplate body templateName
  = SmsTemplate
      {haddock_workaround_ = (), body = body,
       templateName = templateName,
       defaultSubstitutions = Prelude.Nothing, tags = Prelude.Nothing,
       templateDescription = Prelude.Nothing}
instance ToResourceProperties SmsTemplate where
  toResourceProperties SmsTemplate {..}
    = ResourceProperties
        {awsType = "AWS::Pinpoint::SmsTemplate",
         supportsTags = Prelude.True,
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