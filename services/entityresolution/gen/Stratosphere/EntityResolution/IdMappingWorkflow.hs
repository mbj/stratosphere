module Stratosphere.EntityResolution.IdMappingWorkflow (
        module Exports, IdMappingWorkflow(..), mkIdMappingWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingTechniquesProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowInputSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.IdMappingWorkflow.IdMappingWorkflowOutputSourceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data IdMappingWorkflow
  = IdMappingWorkflow {description :: (Prelude.Maybe (Value Prelude.Text)),
                       idMappingTechniques :: IdMappingTechniquesProperty,
                       inputSourceConfig :: [IdMappingWorkflowInputSourceProperty],
                       outputSourceConfig :: (Prelude.Maybe [IdMappingWorkflowOutputSourceProperty]),
                       roleArn :: (Value Prelude.Text),
                       tags :: (Prelude.Maybe [Tag]),
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
      {idMappingTechniques = idMappingTechniques,
       inputSourceConfig = inputSourceConfig, roleArn = roleArn,
       workflowName = workflowName, description = Prelude.Nothing,
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
                  (JSON..=) "OutputSourceConfig" Prelude.<$> outputSourceConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" IdMappingWorkflow where
  type PropertyType "Description" IdMappingWorkflow = Value Prelude.Text
  set newValue IdMappingWorkflow {..}
    = IdMappingWorkflow {description = Prelude.pure newValue, ..}
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