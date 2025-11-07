module Stratosphere.QuickSight.Template (
        module Exports, Template(..), mkTemplate
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ResourcePermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateSourceEntityProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.TemplateVersionDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.QuickSight.Template.ValidationStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Template
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html>
    Template {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-awsaccountid>
              awsAccountId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-definition>
              definition :: (Prelude.Maybe TemplateVersionDefinitionProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-permissions>
              permissions :: (Prelude.Maybe [ResourcePermissionProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-sourceentity>
              sourceEntity :: (Prelude.Maybe TemplateSourceEntityProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-templateid>
              templateId :: (Value Prelude.Text),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-validationstrategy>
              validationStrategy :: (Prelude.Maybe ValidationStrategyProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-quicksight-template.html#cfn-quicksight-template-versiondescription>
              versionDescription :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTemplate :: Value Prelude.Text -> Value Prelude.Text -> Template
mkTemplate awsAccountId templateId
  = Template
      {haddock_workaround_ = (), awsAccountId = awsAccountId,
       templateId = templateId, definition = Prelude.Nothing,
       name = Prelude.Nothing, permissions = Prelude.Nothing,
       sourceEntity = Prelude.Nothing, tags = Prelude.Nothing,
       validationStrategy = Prelude.Nothing,
       versionDescription = Prelude.Nothing}
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
                               (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy,
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
                  (JSON..=) "ValidationStrategy" Prelude.<$> validationStrategy,
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
instance Property "ValidationStrategy" Template where
  type PropertyType "ValidationStrategy" Template = ValidationStrategyProperty
  set newValue Template {..}
    = Template {validationStrategy = Prelude.pure newValue, ..}
instance Property "VersionDescription" Template where
  type PropertyType "VersionDescription" Template = Value Prelude.Text
  set newValue Template {..}
    = Template {versionDescription = Prelude.pure newValue, ..}