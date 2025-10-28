module Stratosphere.EntityResolution.MatchingWorkflow (
        module Exports, MatchingWorkflow(..), mkMatchingWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.IncrementalRunConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.InputSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.OutputSourceProperty as Exports
import {-# SOURCE #-} Stratosphere.EntityResolution.MatchingWorkflow.ResolutionTechniquesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MatchingWorkflow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html>
    MatchingWorkflow {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-incrementalrunconfig>
                      incrementalRunConfig :: (Prelude.Maybe IncrementalRunConfigProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-inputsourceconfig>
                      inputSourceConfig :: [InputSourceProperty],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-outputsourceconfig>
                      outputSourceConfig :: [OutputSourceProperty],
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-resolutiontechniques>
                      resolutionTechniques :: ResolutionTechniquesProperty,
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-rolearn>
                      roleArn :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-tags>
                      tags :: (Prelude.Maybe [Tag]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-entityresolution-matchingworkflow.html#cfn-entityresolution-matchingworkflow-workflowname>
                      workflowName :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMatchingWorkflow ::
  [InputSourceProperty]
  -> [OutputSourceProperty]
     -> ResolutionTechniquesProperty
        -> Value Prelude.Text -> Value Prelude.Text -> MatchingWorkflow
mkMatchingWorkflow
  inputSourceConfig
  outputSourceConfig
  resolutionTechniques
  roleArn
  workflowName
  = MatchingWorkflow
      {haddock_workaround_ = (), inputSourceConfig = inputSourceConfig,
       outputSourceConfig = outputSourceConfig,
       resolutionTechniques = resolutionTechniques, roleArn = roleArn,
       workflowName = workflowName, description = Prelude.Nothing,
       incrementalRunConfig = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MatchingWorkflow where
  toResourceProperties MatchingWorkflow {..}
    = ResourceProperties
        {awsType = "AWS::EntityResolution::MatchingWorkflow",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InputSourceConfig" JSON..= inputSourceConfig,
                            "OutputSourceConfig" JSON..= outputSourceConfig,
                            "ResolutionTechniques" JSON..= resolutionTechniques,
                            "RoleArn" JSON..= roleArn, "WorkflowName" JSON..= workflowName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IncrementalRunConfig" Prelude.<$> incrementalRunConfig,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MatchingWorkflow where
  toJSON MatchingWorkflow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InputSourceConfig" JSON..= inputSourceConfig,
               "OutputSourceConfig" JSON..= outputSourceConfig,
               "ResolutionTechniques" JSON..= resolutionTechniques,
               "RoleArn" JSON..= roleArn, "WorkflowName" JSON..= workflowName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IncrementalRunConfig" Prelude.<$> incrementalRunConfig,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" MatchingWorkflow where
  type PropertyType "Description" MatchingWorkflow = Value Prelude.Text
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {description = Prelude.pure newValue, ..}
instance Property "IncrementalRunConfig" MatchingWorkflow where
  type PropertyType "IncrementalRunConfig" MatchingWorkflow = IncrementalRunConfigProperty
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow
        {incrementalRunConfig = Prelude.pure newValue, ..}
instance Property "InputSourceConfig" MatchingWorkflow where
  type PropertyType "InputSourceConfig" MatchingWorkflow = [InputSourceProperty]
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {inputSourceConfig = newValue, ..}
instance Property "OutputSourceConfig" MatchingWorkflow where
  type PropertyType "OutputSourceConfig" MatchingWorkflow = [OutputSourceProperty]
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {outputSourceConfig = newValue, ..}
instance Property "ResolutionTechniques" MatchingWorkflow where
  type PropertyType "ResolutionTechniques" MatchingWorkflow = ResolutionTechniquesProperty
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {resolutionTechniques = newValue, ..}
instance Property "RoleArn" MatchingWorkflow where
  type PropertyType "RoleArn" MatchingWorkflow = Value Prelude.Text
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {roleArn = newValue, ..}
instance Property "Tags" MatchingWorkflow where
  type PropertyType "Tags" MatchingWorkflow = [Tag]
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {tags = Prelude.pure newValue, ..}
instance Property "WorkflowName" MatchingWorkflow where
  type PropertyType "WorkflowName" MatchingWorkflow = Value Prelude.Text
  set newValue MatchingWorkflow {..}
    = MatchingWorkflow {workflowName = newValue, ..}