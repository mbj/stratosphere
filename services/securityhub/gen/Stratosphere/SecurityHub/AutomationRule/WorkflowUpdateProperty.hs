module Stratosphere.SecurityHub.AutomationRule.WorkflowUpdateProperty (
        WorkflowUpdateProperty(..), mkWorkflowUpdateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WorkflowUpdateProperty
  = WorkflowUpdateProperty {status :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWorkflowUpdateProperty ::
  Value Prelude.Text -> WorkflowUpdateProperty
mkWorkflowUpdateProperty status
  = WorkflowUpdateProperty {status = status}
instance ToResourceProperties WorkflowUpdateProperty where
  toResourceProperties WorkflowUpdateProperty {..}
    = ResourceProperties
        {awsType = "AWS::SecurityHub::AutomationRule.WorkflowUpdate",
         supportsTags = Prelude.False,
         properties = ["Status" JSON..= status]}
instance JSON.ToJSON WorkflowUpdateProperty where
  toJSON WorkflowUpdateProperty {..}
    = JSON.object ["Status" JSON..= status]
instance Property "Status" WorkflowUpdateProperty where
  type PropertyType "Status" WorkflowUpdateProperty = Value Prelude.Text
  set newValue WorkflowUpdateProperty {}
    = WorkflowUpdateProperty {status = newValue, ..}