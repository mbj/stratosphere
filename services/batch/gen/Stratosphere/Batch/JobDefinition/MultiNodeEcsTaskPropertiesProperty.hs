module Stratosphere.Batch.JobDefinition.MultiNodeEcsTaskPropertiesProperty (
        module Exports, MultiNodeEcsTaskPropertiesProperty(..),
        mkMultiNodeEcsTaskPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.TaskContainerPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MultiNodeEcsTaskPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html>
    MultiNodeEcsTaskPropertiesProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-containers>
                                        containers :: (Prelude.Maybe [TaskContainerPropertiesProperty]),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-enableexecutecommand>
                                        enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-executionrolearn>
                                        executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-ipcmode>
                                        ipcMode :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-pidmode>
                                        pidMode :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-taskrolearn>
                                        taskRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-multinodeecstaskproperties.html#cfn-batch-jobdefinition-multinodeecstaskproperties-volumes>
                                        volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMultiNodeEcsTaskPropertiesProperty ::
  MultiNodeEcsTaskPropertiesProperty
mkMultiNodeEcsTaskPropertiesProperty
  = MultiNodeEcsTaskPropertiesProperty
      {haddock_workaround_ = (), containers = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, ipcMode = Prelude.Nothing,
       pidMode = Prelude.Nothing, taskRoleArn = Prelude.Nothing,
       volumes = Prelude.Nothing}
instance ToResourceProperties MultiNodeEcsTaskPropertiesProperty where
  toResourceProperties MultiNodeEcsTaskPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.MultiNodeEcsTaskProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "IpcMode" Prelude.<$> ipcMode,
                            (JSON..=) "PidMode" Prelude.<$> pidMode,
                            (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON MultiNodeEcsTaskPropertiesProperty where
  toJSON MultiNodeEcsTaskPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "IpcMode" Prelude.<$> ipcMode,
               (JSON..=) "PidMode" Prelude.<$> pidMode,
               (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "Containers" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "Containers" MultiNodeEcsTaskPropertiesProperty = [TaskContainerPropertiesProperty]
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {containers = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "EnableExecuteCommand" MultiNodeEcsTaskPropertiesProperty = Value Prelude.Bool
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "ExecutionRoleArn" MultiNodeEcsTaskPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "IpcMode" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "IpcMode" MultiNodeEcsTaskPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {ipcMode = Prelude.pure newValue, ..}
instance Property "PidMode" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "PidMode" MultiNodeEcsTaskPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {pidMode = Prelude.pure newValue, ..}
instance Property "TaskRoleArn" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "TaskRoleArn" MultiNodeEcsTaskPropertiesProperty = Value Prelude.Text
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {taskRoleArn = Prelude.pure newValue, ..}
instance Property "Volumes" MultiNodeEcsTaskPropertiesProperty where
  type PropertyType "Volumes" MultiNodeEcsTaskPropertiesProperty = [VolumeProperty]
  set newValue MultiNodeEcsTaskPropertiesProperty {..}
    = MultiNodeEcsTaskPropertiesProperty
        {volumes = Prelude.pure newValue, ..}