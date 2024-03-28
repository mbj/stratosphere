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
import {-# SOURCE #-} Stratosphere.Batch.JobDefinition.VolumesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsTaskPropertiesProperty
  = EcsTaskPropertiesProperty {containers :: (Prelude.Maybe [TaskContainerPropertiesProperty]),
                               ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                               executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               ipcMode :: (Prelude.Maybe (Value Prelude.Text)),
                               networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                               pidMode :: (Prelude.Maybe (Value Prelude.Text)),
                               platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                               runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                               taskRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                               volumes :: (Prelude.Maybe [VolumesProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsTaskPropertiesProperty :: EcsTaskPropertiesProperty
mkEcsTaskPropertiesProperty
  = EcsTaskPropertiesProperty
      {containers = Prelude.Nothing, ephemeralStorage = Prelude.Nothing,
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
  type PropertyType "Volumes" EcsTaskPropertiesProperty = [VolumesProperty]
  set newValue EcsTaskPropertiesProperty {..}
    = EcsTaskPropertiesProperty {volumes = Prelude.pure newValue, ..}