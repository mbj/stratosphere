module Stratosphere.QuickSight.Template (
        module Exports, Template(..), mkTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateVersionDefinitionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Template
  = Template {awsAccountId :: (Value Prelude.Text),
              definition :: (Prelude.Maybe TemplateVersionDefinitionProperty),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              sourceEntity :: (Prelude.Maybe TemplateSourceEntityProperty),
              tags :: (Prelude.Maybe [Tag]),
              templateId :: (Value Prelude.Text),
              versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
mkTemplate :: Value Prelude.Text -> Value Prelude.Text -> Template
mkTemplate awsAccountId templateId
  = Template
      {awsAccountId = awsAccountId, templateId = templateId,
       definition = Prelude.Nothing, name = Prelude.Nothing,
       permissions = Prelude.Nothing, sourceEntity = Prelude.Nothing,
       tags = Prelude.Nothing, versionDescription = Prelude.Nothing}
instance ToResourceProperties Template where
  toResourceProperties Template {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::Template",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AwsAccountId" JSON..= awsAccountId,
                            "TemplateId" JSON..= templateId]
                           (Prelude.catMaybes
                              [(JSON..=) "Definition" Prelude.<$> definition,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Permissions" Prelude.<$> permissions,
                               (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VersionDescription" Prelude.<$> versionDescription]))}
instance JSON.ToJSON Template where
  toJSON Template {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AwsAccountId" JSON..= awsAccountId,
               "TemplateId" JSON..= templateId]
              (Prelude.catMaybes
                 [(JSON..=) "Definition" Prelude.<$> definition,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Permissions" Prelude.<$> permissions,
                  (JSON..=) "SourceEntity" Prelude.<$> sourceEntity,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VersionDescription" Prelude.<$> versionDescription])))
instance Property "AwsAccountId" Template where
  type PropertyType "AwsAccountId" Template = Value Prelude.Text
  set newValue Template {..} = Template {awsAccountId = newValue, ..}
instance Property "Definition" Template where
  type PropertyType "Definition" Template = TemplateVersionDefinitionProperty
  set newValue Template {..}
    = Template {definition = Prelude.pure newValue, ..}
instance Property "Name" Template where
  type PropertyType "Name" Template = Value Prelude.Text
  set newValue Template {..}
    = Template {name = Prelude.pure newValue, ..}
instance Property "Permissions" Template where
  type PropertyType "Permissions" Template = [ResourcePermissionProperty]
  set newValue Template {..}
    = Template {permissions = Prelude.pure newValue, ..}
instance Property "SourceEntity" Template where
  type PropertyType "SourceEntity" Template = TemplateSourceEntityProperty
  set newValue Template {..}
    = Template {sourceEntity = Prelude.pure newValue, ..}
instance Property "Tags" Template where
  type PropertyType "Tags" Template = [Tag]
  set newValue Template {..}
    = Template {tags = Prelude.pure newValue, ..}
instance Property "TemplateId" Template where
  type PropertyType "TemplateId" Template = Value Prelude.Text
  set newValue Template {..} = Template {templateId = newValue, ..}
instance Property "VersionDescription" Template where
  type PropertyType "VersionDescription" Template = Value Prelude.Text
  set newValue Template {..}
    = Template {versionDescription = Prelude.pure newValue, ..}