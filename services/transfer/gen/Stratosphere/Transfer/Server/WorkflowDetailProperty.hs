module Stratosphere.Transfer.Server.WorkflowDetailProperty (
        WorkflowDetailProperty(..), mkWorkflowDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowDetailProperty
  = WorkflowDetailProperty {executionRole :: (Value Prelude.Text),
                            workflowId :: (Value Prelude.Text)}
mkWorkflowDetailProperty ::
  Value Prelude.Text -> Value Prelude.Text -> WorkflowDetailProperty
mkWorkflowDetailProperty executionRole workflowId
  = WorkflowDetailProperty
      {executionRole = executionRole, workflowId = workflowId}
instance ToResourceProperties WorkflowDetailProperty where
  toResourceProperties WorkflowDetailProperty {..}
    = ResourceProperties
        {awsType = "AWS::Transfer::Server.WorkflowDetail",
         supportsTags = Prelude.False,
         properties = ["ExecutionRole" JSON..= executionRole,
                       "WorkflowId" JSON..= workflowId]}
instance JSON.ToJSON WorkflowDetailProperty where
  toJSON WorkflowDetailProperty {..}
    = JSON.object
        ["ExecutionRole" JSON..= executionRole,
         "WorkflowId" JSON..= workflowId]
instance Property "ExecutionRole" WorkflowDetailProperty where
  type PropertyType "ExecutionRole" WorkflowDetailProperty = Value Prelude.Text
  set newValue WorkflowDetailProperty {..}
    = WorkflowDetailProperty {executionRole = newValue, ..}
instance Property "WorkflowId" WorkflowDetailProperty where
  type PropertyType "WorkflowId" WorkflowDetailProperty = Value Prelude.Text
  set newValue WorkflowDetailProperty {..}
    = WorkflowDetailProperty {workflowId = newValue, ..}