module Stratosphere.AppFlow.Flow.TaskProperty (
        module Exports, TaskProperty(..), mkTaskProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.ConnectorOperatorProperty as Exports
import {-# SOURCE #-} Stratosphere.AppFlow.Flow.TaskPropertiesObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html>
    TaskProperty {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-connectoroperator>
                  connectorOperator :: (Prelude.Maybe ConnectorOperatorProperty),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-destinationfield>
                  destinationField :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-sourcefields>
                  sourceFields :: (ValueList Prelude.Text),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-taskproperties>
                  taskProperties :: (Prelude.Maybe [TaskPropertiesObjectProperty]),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appflow-flow-task.html#cfn-appflow-flow-task-tasktype>
                  taskType :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskProperty ::
  ValueList Prelude.Text -> Value Prelude.Text -> TaskProperty
mkTaskProperty sourceFields taskType
  = TaskProperty
      {haddock_workaround_ = (), sourceFields = sourceFields,
       taskType = taskType, connectorOperator = Prelude.Nothing,
       destinationField = Prelude.Nothing,
       taskProperties = Prelude.Nothing}
instance ToResourceProperties TaskProperty where
  toResourceProperties TaskProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppFlow::Flow.Task", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SourceFields" JSON..= sourceFields, "TaskType" JSON..= taskType]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectorOperator" Prelude.<$> connectorOperator,
                               (JSON..=) "DestinationField" Prelude.<$> destinationField,
                               (JSON..=) "TaskProperties" Prelude.<$> taskProperties]))}
instance JSON.ToJSON TaskProperty where
  toJSON TaskProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SourceFields" JSON..= sourceFields, "TaskType" JSON..= taskType]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectorOperator" Prelude.<$> connectorOperator,
                  (JSON..=) "DestinationField" Prelude.<$> destinationField,
                  (JSON..=) "TaskProperties" Prelude.<$> taskProperties])))
instance Property "ConnectorOperator" TaskProperty where
  type PropertyType "ConnectorOperator" TaskProperty = ConnectorOperatorProperty
  set newValue TaskProperty {..}
    = TaskProperty {connectorOperator = Prelude.pure newValue, ..}
instance Property "DestinationField" TaskProperty where
  type PropertyType "DestinationField" TaskProperty = Value Prelude.Text
  set newValue TaskProperty {..}
    = TaskProperty {destinationField = Prelude.pure newValue, ..}
instance Property "SourceFields" TaskProperty where
  type PropertyType "SourceFields" TaskProperty = ValueList Prelude.Text
  set newValue TaskProperty {..}
    = TaskProperty {sourceFields = newValue, ..}
instance Property "TaskProperties" TaskProperty where
  type PropertyType "TaskProperties" TaskProperty = [TaskPropertiesObjectProperty]
  set newValue TaskProperty {..}
    = TaskProperty {taskProperties = Prelude.pure newValue, ..}
instance Property "TaskType" TaskProperty where
  type PropertyType "TaskType" TaskProperty = Value Prelude.Text
  set newValue TaskProperty {..}
    = TaskProperty {taskType = newValue, ..}