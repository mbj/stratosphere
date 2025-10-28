module Stratosphere.Omics.Workflow (
        module Exports, Workflow(..), mkWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Omics.Workflow.WorkflowParameterProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Workflow
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html>
    Workflow {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-accelerators>
              accelerators :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-definitionuri>
              definitionUri :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-description>
              description :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-engine>
              engine :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-main>
              main :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-name>
              name :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-parametertemplate>
              parameterTemplate :: (Prelude.Maybe (Prelude.Map Prelude.Text WorkflowParameterProperty)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-storagecapacity>
              storageCapacity :: (Prelude.Maybe (Value Prelude.Double)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-omics-workflow.html#cfn-omics-workflow-tags>
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflow :: Workflow
mkWorkflow
  = Workflow
      {haddock_workaround_ = (), accelerators = Prelude.Nothing,
       definitionUri = Prelude.Nothing, description = Prelude.Nothing,
       engine = Prelude.Nothing, main = Prelude.Nothing,
       name = Prelude.Nothing, parameterTemplate = Prelude.Nothing,
       storageCapacity = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Workflow where
  toResourceProperties Workflow {..}
    = ResourceProperties
        {awsType = "AWS::Omics::Workflow", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Accelerators" Prelude.<$> accelerators,
                            (JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "Engine" Prelude.<$> engine,
                            (JSON..=) "Main" Prelude.<$> main,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "ParameterTemplate" Prelude.<$> parameterTemplate,
                            (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Workflow where
  toJSON Workflow {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Accelerators" Prelude.<$> accelerators,
               (JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Engine" Prelude.<$> engine,
               (JSON..=) "Main" Prelude.<$> main,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ParameterTemplate" Prelude.<$> parameterTemplate,
               (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Accelerators" Workflow where
  type PropertyType "Accelerators" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {accelerators = Prelude.pure newValue, ..}
instance Property "DefinitionUri" Workflow where
  type PropertyType "DefinitionUri" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {definitionUri = Prelude.pure newValue, ..}
instance Property "Description" Workflow where
  type PropertyType "Description" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {description = Prelude.pure newValue, ..}
instance Property "Engine" Workflow where
  type PropertyType "Engine" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {engine = Prelude.pure newValue, ..}
instance Property "Main" Workflow where
  type PropertyType "Main" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {main = Prelude.pure newValue, ..}
instance Property "Name" Workflow where
  type PropertyType "Name" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {name = Prelude.pure newValue, ..}
instance Property "ParameterTemplate" Workflow where
  type PropertyType "ParameterTemplate" Workflow = Prelude.Map Prelude.Text WorkflowParameterProperty
  set newValue Workflow {..}
    = Workflow {parameterTemplate = Prelude.pure newValue, ..}
instance Property "StorageCapacity" Workflow where
  type PropertyType "StorageCapacity" Workflow = Value Prelude.Double
  set newValue Workflow {..}
    = Workflow {storageCapacity = Prelude.pure newValue, ..}
instance Property "Tags" Workflow where
  type PropertyType "Tags" Workflow = Prelude.Map Prelude.Text (Value Prelude.Text)
  set newValue Workflow {..}
    = Workflow {tags = Prelude.pure newValue, ..}