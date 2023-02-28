module Stratosphere.IoT.CACertificate.RegistrationConfigProperty (
        RegistrationConfigProperty(..), mkRegistrationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RegistrationConfigProperty
  = RegistrationConfigProperty {roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                templateBody :: (Prelude.Maybe (Value Prelude.Text)),
                                templateName :: (Prelude.Maybe (Value Prelude.Text))}
mkRegistrationConfigProperty :: RegistrationConfigProperty
mkRegistrationConfigProperty
  = RegistrationConfigProperty
      {roleArn = Prelude.Nothing, templateBody = Prelude.Nothing,
       templateName = Prelude.Nothing}
instance ToResourceProperties RegistrationConfigProperty where
  toResourceProperties RegistrationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT::CACertificate.RegistrationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RoleArn" Prelude.<$> roleArn,
                            (JSON..=) "TemplateBody" Prelude.<$> templateBody,
                            (JSON..=) "TemplateName" Prelude.<$> templateName])}
instance JSON.ToJSON RegistrationConfigProperty where
  toJSON RegistrationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RoleArn" Prelude.<$> roleArn,
               (JSON..=) "TemplateBody" Prelude.<$> templateBody,
               (JSON..=) "TemplateName" Prelude.<$> templateName]))
instance Property "RoleArn" RegistrationConfigProperty where
  type PropertyType "RoleArn" RegistrationConfigProperty = Value Prelude.Text
  set newValue RegistrationConfigProperty {..}
    = RegistrationConfigProperty {roleArn = Prelude.pure newValue, ..}
instance Property "TemplateBody" RegistrationConfigProperty where
  type PropertyType "TemplateBody" RegistrationConfigProperty = Value Prelude.Text
  set newValue RegistrationConfigProperty {..}
    = RegistrationConfigProperty
        {templateBody = Prelude.pure newValue, ..}
instance Property "TemplateName" RegistrationConfigProperty where
  type PropertyType "TemplateName" RegistrationConfigProperty = Value Prelude.Text
  set newValue RegistrationConfigProperty {..}
    = RegistrationConfigProperty
        {templateName = Prelude.pure newValue, ..}