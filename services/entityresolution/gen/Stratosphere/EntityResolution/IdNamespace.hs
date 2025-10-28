module Stratosphere.EntityResolution.IdNamespace (
        module Exports, IdNamespace(..), mkIdNamespace
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdNamespace.IdNamespaceIdMappingWorkflowPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdNamespace.IdNamespaceInputSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdNamespace
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html>
    IdNamespace {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-description>
                 description :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-idmappingworkflowproperties>
                 idMappingWorkflowProperties :: (Prelude.Maybe [IdNamespaceIdMappingWorkflowPropertiesProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-idnamespacename>
                 idNamespaceName :: (Value Prelude.Text),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-inputsourceconfig>
                 inputSourceConfig :: (Prelude.Maybe [IdNamespaceInputSourceProperty]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-rolearn>
                 roleArn :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-tags>
                 tags :: (Prelude.Maybe [Tag]),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idnamespace.html#cfn-entityresolution-idnamespace-type>
                 type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdNamespace ::
  Value Prelude.Text -> Value Prelude.Text -> IdNamespace
mkIdNamespace idNamespaceName type'
  = IdNamespace
      {haddock_workaround_ = (), idNamespaceName = idNamespaceName,
       type' = type', description = Prelude.Nothing,
       idMappingWorkflowProperties = Prelude.Nothing,
       inputSourceConfig = Prelude.Nothing, roleArn = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties IdNamespace where
  toResourceProperties IdNamespace {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdNamespace",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdNamespaceName" JSON..= idNamespaceName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IdMappingWorkflowProperties"
                                 Prelude.<$> idMappingWorkflowProperties,
                               (JSON..=) "InputSourceConfig" Prelude.<$> inputSourceConfig,
                               (JSON..=) "RoleArn" Prelude.<$> roleArn,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdNamespace where
  toJSON IdNamespace {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdNamespaceName" JSON..= idNamespaceName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IdMappingWorkflowProperties"
                    Prelude.<$> idMappingWorkflowProperties,
                  (JSON..=) "InputSourceConfig" Prelude.<$> inputSourceConfig,
                  (JSON..=) "RoleArn" Prelude.<$> roleArn,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IdNamespace where
  type PropertyType "Description" IdNamespace = Value Prelude.Text
  set newValue IdNamespace {..}
    = IdNamespace {description = Prelude.pure newValue, ..}
instance Property "IdMappingWorkflowProperties" IdNamespace where
  type PropertyType "IdMappingWorkflowProperties" IdNamespace = [IdNamespaceIdMappingWorkflowPropertiesProperty]
  set newValue IdNamespace {..}
    = IdNamespace
        {idMappingWorkflowProperties = Prelude.pure newValue, ..}
instance Property "IdNamespaceName" IdNamespace where
  type PropertyType "IdNamespaceName" IdNamespace = Value Prelude.Text
  set newValue IdNamespace {..}
    = IdNamespace {idNamespaceName = newValue, ..}
instance Property "InputSourceConfig" IdNamespace where
  type PropertyType "InputSourceConfig" IdNamespace = [IdNamespaceInputSourceProperty]
  set newValue IdNamespace {..}
    = IdNamespace {inputSourceConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" IdNamespace where
  type PropertyType "RoleArn" IdNamespace = Value Prelude.Text
  set newValue IdNamespace {..}
    = IdNamespace {roleArn = Prelude.pure newValue, ..}
instance Property "Tags" IdNamespace where
  type PropertyType "Tags" IdNamespace = [Tag]
  set newValue IdNamespace {..}
    = IdNamespace {tags = Prelude.pure newValue, ..}
instance Property "Type" IdNamespace where
  type PropertyType "Type" IdNamespace = Value Prelude.Text
  set newValue IdNamespace {..} = IdNamespace {type' = newValue, ..}