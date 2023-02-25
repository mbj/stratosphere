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
  = Workflow {definitionUri :: (Prelude.Maybe (Value Prelude.Text)),
              description :: (Prelude.Maybe (Value Prelude.Text)),
              engine :: (Prelude.Maybe (Value Prelude.Text)),
              main :: (Prelude.Maybe (Value Prelude.Text)),
              name :: (Prelude.Maybe (Value Prelude.Text)),
              parameterTemplate :: (Prelude.Maybe (Prelude.Map Prelude.Text WorkflowParameterProperty)),
              storageCapacity :: (Prelude.Maybe (Value Prelude.Double)),
              tags :: (Prelude.Maybe (Prelude.Map Prelude.Text (Value Prelude.Text)))}
mkWorkflow :: Workflow
mkWorkflow
  = Workflow
      {definitionUri = Prelude.Nothing, description = Prelude.Nothing,
       engine = Prelude.Nothing, main = Prelude.Nothing,
       name = Prelude.Nothing, parameterTemplate = Prelude.Nothing,
       storageCapacity = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Workflow where
  toResourceProperties Workflow {..}
    = ResourceProperties
        {awsType = "AWS::Omics::Workflow",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
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
              [(JSON..=) "DefinitionUri" Prelude.<$> definitionUri,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "Engine" Prelude.<$> engine,
               (JSON..=) "Main" Prelude.<$> main,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "ParameterTemplate" Prelude.<$> parameterTemplate,
               (JSON..=) "StorageCapacity" Prelude.<$> storageCapacity,
               (JSON..=) "Tags" Prelude.<$> tags]))
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