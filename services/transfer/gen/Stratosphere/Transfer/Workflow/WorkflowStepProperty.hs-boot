module Stratosphere.Transfer.Workflow.WorkflowStepProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data WorkflowStepProperty :: Prelude.Type
instance ToResourceProperties WorkflowStepProperty
instance Prelude.Eq WorkflowStepProperty
instance Prelude.Show WorkflowStepProperty
instance JSON.ToJSON WorkflowStepProperty