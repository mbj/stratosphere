module Stratosphere.Batch.JobDefinition.EcsTaskPropertiesProperty (
        module Exports, EcsTaskPropertiesProperty(..),
        mkEcsTaskPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.RuntimePlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.TaskContainerPropertiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsTaskPropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html>
    EcsTaskPropertiesProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-containers>
                               containers :: (Prelude.Maybe [TaskContainerPropertiesProperty]),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-enableexecutecommand>
                               enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-ephemeralstorage>
                               ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-executionrolearn>
                               executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-ipcmode>
                               ipcMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-networkconfiguration>
                               networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-pidmode>
                               pidMode :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-platformversion>
                               platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-runtimeplatform>
                               runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-taskrolearn>
                               taskRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-batch-jobdefinition-ecstaskproperties.html#cfn-batch-jobdefinition-ecstaskproperties-volumes>
                               volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsTaskPropertiesProperty :: EcsTaskPropertiesProperty
mkEcsTaskPropertiesProperty
  = EcsTaskPropertiesProperty
      {haddock_workaround_ = (), containers = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing,
       ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, ipcMode = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing, pidMode = Prelude.Nothing,
       platformVersion = Prelude.Nothing,
       runtimePlatform = Prelude.Nothing, taskRoleArn = Prelude.Nothing,
       volumes = Prelude.Nothing}
instance ToResourceProperties EcsTaskPropertiesProperty where
  toResourceProperties EcsTaskPropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Batch::JobDefinition.EcsTaskProperties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Containers" Prelude.<$> containers,
                            (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                            (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "IpcMode" Prelude.<$> ipcMode,
                            (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                            (JSON..=) "PidMode" Prelude.<$> pidMode,
                            (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                            (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
                            (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON EcsTaskPropertiesProperty where
  toJSON EcsTaskPropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Containers" Prelude.<$> containers,
               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "IpcMode" Prelude.<$> ipcMode,
               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
               (JSON..=) "PidMode" Prelude.<$> pidMode,
               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
               (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
               (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "Containers" EcsTaskPropertiesProperty where
  type PropertyType "Containers" EcsTaskPropertiesProperty = [TaskContainerPropertiesProperty]
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {containers = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" EcsTaskPropertiesProperty where
  type PropertyType "EnableExecuteCommand" EcsTaskPropertiesProperty = Value Prelude.Bool
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" EcsTaskPropertiesProperty where
  type PropertyType "EphemeralStorage" EcsTaskPropertiesProperty = EphemeralStorageProperty
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" EcsTaskPropertiesProperty where
  type PropertyType "ExecutionRoleArn" EcsTaskPropertiesProperty = Value Prelude.Text
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {executionRoleArn = Prelude.pure newValue, ..}
instance Property "IpcMode" EcsTaskPropertiesProperty where
  type PropertyType "IpcMode" EcsTaskPropertiesProperty = Value Prelude.Text
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty {ipcMode = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" EcsTaskPropertiesProperty where
  type PropertyType "NetworkConfiguration" EcsTaskPropertiesProperty = NetworkConfigurationProperty
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {networkConfiguration = Prelude.pure newValue, ..}
instance Property "PidMode" EcsTaskPropertiesProperty where
  type PropertyType "PidMode" EcsTaskPropertiesProperty = Value Prelude.Text
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty {pidMode = Prelude.pure newValue, ..}
instance Property "PlatformVersion" EcsTaskPropertiesProperty where
  type PropertyType "PlatformVersion" EcsTaskPropertiesProperty = Value Prelude.Text
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {platformVersion = Prelude.pure newValue, ..}
instance Property "RuntimePlatform" EcsTaskPropertiesProperty where
  type PropertyType "RuntimePlatform" EcsTaskPropertiesProperty = RuntimePlatformProperty
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {runtimePlatform = Prelude.pure newValue, ..}
instance Property "TaskRoleArn" EcsTaskPropertiesProperty where
  type PropertyType "TaskRoleArn" EcsTaskPropertiesProperty = Value Prelude.Text
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty
        {taskRoleArn = Prelude.pure newValue, ..}
instance Property "Volumes" EcsTaskPropertiesProperty where
  type PropertyType "Volumes" EcsTaskPropertiesProperty = [VolumeProperty]
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty {volumes = Prelude.pure newValue, ..}