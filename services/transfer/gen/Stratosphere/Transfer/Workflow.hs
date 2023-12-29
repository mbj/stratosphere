module Stratosphere.Transfer.Workflow (
        module Exports, Workflow(..), mkWorkflow
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Transfer.Workflow.WorkflowStepProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Workflow
  = Workflow {description :: (Prelude.Maybe (Value Prelude.Text)),
              onExceptionSteps :: (Prelude.Maybe [WorkflowStepProperty]),
              steps :: [WorkflowStepProperty],
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflow :: [WorkflowStepProperty] -> Workflow
mkWorkflow steps
  = Workflow
      {steps = steps, description = Prelude.Nothing,
       onExceptionSteps = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Workflow where
  toResourceProperties Workflow {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Workflow", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Steps" JSON..= steps]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "OnExceptionSteps" Prelude.<$> onExceptionSteps,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Workflow where
  toJSON Workflow {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Steps" JSON..= steps]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "OnExceptionSteps" Prelude.<$> onExceptionSteps,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Workflow where
  type PropertyType "Description" Workflow = Value Prelude.Text
  set newValue Workflow {..}
    = Workflow {description = Prelude.pure newValue, ..}
instance Property "OnExceptionSteps" Workflow where
  type PropertyType "OnExceptionSteps" Workflow = [WorkflowStepProperty]
  set newValue Workflow {..}
    = Workflow {onExceptionSteps = Prelude.pure newValue, ..}
instance Property "Steps" Workflow where
  type PropertyType "Steps" Workflow = [WorkflowStepProperty]
  set newValue Workflow {..} = Workflow {steps = newValue, ..}
instance Property "Tags" Workflow where
  type PropertyType "Tags" Workflow = [Tag]
  set newValue Workflow {..}
    = Workflow {tags = Prelude.pure newValue, ..}