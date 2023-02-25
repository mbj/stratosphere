module Stratosphere.IoT.ProvisioningTemplate (
        module Exports, ProvisioningTemplate(..), mkProvisioningTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoT.ProvisioningTemplate.ProvisioningHookProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ProvisioningTemplate
  = ProvisioningTemplate {description :: (Prelude.Maybe (Value Prelude.Text)),
                          enabled :: (Prelude.Maybe (Value Prelude.Bool)),
                          preProvisioningHook :: (Prelude.Maybe ProvisioningHookProperty),
                          provisioningRoleArn :: (Value Prelude.Text),
                          tags :: (Prelude.Maybe [Tag]),
                          templateBody :: (Value Prelude.Text),
                          templateName :: (Prelude.Maybe (Value Prelude.Text)),
                          templateType :: (Prelude.Maybe (Value Prelude.Text))}
mkProvisioningTemplate ::
  Value Prelude.Text -> Value Prelude.Text -> ProvisioningTemplate
mkProvisioningTemplate provisioningRoleArn templateBody
  = ProvisioningTemplate
      {provisioningRoleArn = provisioningRoleArn,
       templateBody = templateBody, description = Prelude.Nothing,
       enabled = Prelude.Nothing, preProvisioningHook = Prelude.Nothing,
       tags = Prelude.Nothing, templateName = Prelude.Nothing,
       templateType = Prelude.Nothing}
instance ToResourceProperties ProvisioningTemplate where
  toResourceProperties ProvisioningTemplate {..}
    = ResourceProperties
        {awsType = "AWS::IoT::ProvisioningTemplate",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ProvisioningRoleArn" JSON..= provisioningRoleArn,
                            "TemplateBody" JSON..= templateBody]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "Enabled" Prelude.<$> enabled,
                               (JSON..=) "PreProvisioningHook" Prelude.<$> preProvisioningHook,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TemplateName" Prelude.<$> templateName,
                               (JSON..=) "TemplateType" Prelude.<$> templateType]))}
instance JSON.ToJSON ProvisioningTemplate where
  toJSON ProvisioningTemplate {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ProvisioningRoleArn" JSON..= provisioningRoleArn,
               "TemplateBody" JSON..= templateBody]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "Enabled" Prelude.<$> enabled,
                  (JSON..=) "PreProvisioningHook" Prelude.<$> preProvisioningHook,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TemplateName" Prelude.<$> templateName,
                  (JSON..=) "TemplateType" Prelude.<$> templateType])))
instance Property "Description" ProvisioningTemplate where
  type PropertyType "Description" ProvisioningTemplate = Value Prelude.Text
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {description = Prelude.pure newValue, ..}
instance Property "Enabled" ProvisioningTemplate where
  type PropertyType "Enabled" ProvisioningTemplate = Value Prelude.Bool
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {enabled = Prelude.pure newValue, ..}
instance Property "PreProvisioningHook" ProvisioningTemplate where
  type PropertyType "PreProvisioningHook" ProvisioningTemplate = ProvisioningHookProperty
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate
        {preProvisioningHook = Prelude.pure newValue, ..}
instance Property "ProvisioningRoleArn" ProvisioningTemplate where
  type PropertyType "ProvisioningRoleArn" ProvisioningTemplate = Value Prelude.Text
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {provisioningRoleArn = newValue, ..}
instance Property "Tags" ProvisioningTemplate where
  type PropertyType "Tags" ProvisioningTemplate = [Tag]
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {tags = Prelude.pure newValue, ..}
instance Property "TemplateBody" ProvisioningTemplate where
  type PropertyType "TemplateBody" ProvisioningTemplate = Value Prelude.Text
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {templateBody = newValue, ..}
instance Property "TemplateName" ProvisioningTemplate where
  type PropertyType "TemplateName" ProvisioningTemplate = Value Prelude.Text
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {templateName = Prelude.pure newValue, ..}
instance Property "TemplateType" ProvisioningTemplate where
  type PropertyType "TemplateType" ProvisioningTemplate = Value Prelude.Text
  set newValue ProvisioningTemplate {..}
    = ProvisioningTemplate {templateType = Prelude.pure newValue, ..}