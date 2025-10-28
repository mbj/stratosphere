module Stratosphere.Transfer.Server.WorkflowDetailProperty (
        WorkflowDetailProperty(..), mkWorkflowDetailProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowDetailProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetail.html>
    WorkflowDetailProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetail.html#cfn-transfer-server-workflowdetail-executionrole>
                            executionRole :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-transfer-server-workflowdetail.html#cfn-transfer-server-workflowdetail-workflowid>
                            workflowId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowDetailProperty ::
  Value Prelude.Text -> Value Prelude.Text -> WorkflowDetailProperty
mkWorkflowDetailProperty executionRole workflowId
  = WorkflowDetailProperty
      {haddock_workaround_ = (), executionRole = executionRole,
       workflowId = workflowId}
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