module Stratosphere.EntityResolution.IdMappingWorkflow (
        module Exports, IdMappingWorkflow(..), mkIdMappingWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingIncrementalRunConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingTechniquesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowInputSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowOutputSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdMappingWorkflow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html>
    IdMappingWorkflow {haddock_workaround_ :: (),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-description>
                       description :: (Prelude.Maybe (Value Prelude.Text)),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-idmappingincrementalrunconfig>
                       idMappingIncrementalRunConfig :: (Prelude.Maybe IdMappingIncrementalRunConfigProperty),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-idmappingtechniques>
                       idMappingTechniques :: IdMappingTechniquesProperty,
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-inputsourceconfig>
                       inputSourceConfig :: [IdMappingWorkflowInputSourceProperty],
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-outputsourceconfig>
                       outputSourceConfig :: (Prelude.Maybe [IdMappingWorkflowOutputSourceProperty]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-rolearn>
                       roleArn :: (Value Prelude.Text),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-tags>
                       tags :: (Prelude.Maybe [Tag]),
                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-idmappingworkflow.html#cfn-entityresolution-idmappingworkflow-workflowname>
                       workflowName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIdMappingWorkflow ::
  IdMappingTechniquesProperty
  -> [IdMappingWorkflowInputSourceProperty]
     -> Value Prelude.Text -> Value Prelude.Text -> IdMappingWorkflow
mkIdMappingWorkflow
  idMappingTechniques
  inputSourceConfig
  roleArn
  workflowName
  = IdMappingWorkflow
      {haddock_workaround_ = (),
       idMappingTechniques = idMappingTechniques,
       inputSourceConfig = inputSourceConfig, roleArn = roleArn,
       workflowName = workflowName, description = Prelude.Nothing,
       idMappingIncrementalRunConfig = Prelude.Nothing,
       outputSourceConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties IdMappingWorkflow where
  toResourceProperties IdMappingWorkflow {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::IdMappingWorkflow",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IdMappingTechniques" JSON..= idMappingTechniques,
                            "InputSourceConfig" JSON..= inputSourceConfig,
                            "RoleArn" JSON..= roleArn, "WorkflowName" JSON..= workflowName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IdMappingIncrementalRunConfig"
                                 Prelude.<$> idMappingIncrementalRunConfig,
                               (JSON..=) "OutputSourceConfig" Prelude.<$> outputSourceConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON IdMappingWorkflow where
  toJSON IdMappingWorkflow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IdMappingTechniques" JSON..= idMappingTechniques,
               "InputSourceConfig" JSON..= inputSourceConfig,
               "RoleArn" JSON..= roleArn, "WorkflowName" JSON..= workflowName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IdMappingIncrementalRunConfig"
                    Prelude.<$> idMappingIncrementalRunConfig,
                  (JSON..=) "OutputSourceConfig" Prelude.<$> outputSourceConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IdMappingWorkflow where
  type PropertyType "Description" IdMappingWorkflow = Value Prelude.Text
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {description = Prelude.pure newValue, ..}
instance Property "IdMappingIncrementalRunConfig" IdMappingWorkflow where
  type PropertyType "IdMappingIncrementalRunConfig" IdMappingWorkflow = IdMappingIncrementalRunConfigProperty
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow
        {idMappingIncrementalRunConfig = Prelude.pure newValue, ..}
instance Property "IdMappingTechniques" IdMappingWorkflow where
  type PropertyType "IdMappingTechniques" IdMappingWorkflow = IdMappingTechniquesProperty
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {idMappingTechniques = newValue, ..}
instance Property "InputSourceConfig" IdMappingWorkflow where
  type PropertyType "InputSourceConfig" IdMappingWorkflow = [IdMappingWorkflowInputSourceProperty]
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {inputSourceConfig = newValue, ..}
instance Property "OutputSourceConfig" IdMappingWorkflow where
  type PropertyType "OutputSourceConfig" IdMappingWorkflow = [IdMappingWorkflowOutputSourceProperty]
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow
        {outputSourceConfig = Prelude.pure newValue, ..}
instance Property "RoleArn" IdMappingWorkflow where
  type PropertyType "RoleArn" IdMappingWorkflow = Value Prelude.Text
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {roleArn = newValue, ..}
instance Property "Tags" IdMappingWorkflow where
  type PropertyType "Tags" IdMappingWorkflow = [Tag]
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {tags = Prelude.pure newValue, ..}
instance Property "WorkflowName" IdMappingWorkflow where
  type PropertyType "WorkflowName" IdMappingWorkflow = Value Prelude.Text
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {workflowName = newValue, ..}