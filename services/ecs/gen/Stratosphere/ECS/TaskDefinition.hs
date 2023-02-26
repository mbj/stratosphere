module Stratosphere.ECS.TaskDefinition (
        module Exports, TaskDefinition(..), mkTaskDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ContainerDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.InferenceAcceleratorProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ProxyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.RuntimePlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.TaskDefinitionPlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TaskDefinition
  = TaskDefinition {containerDefinitions :: (Prelude.Maybe [ContainerDefinitionProperty]),
                    cpu :: (Prelude.Maybe (Value Prelude.Text)),
                    ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                    executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    family :: (Prelude.Maybe (Value Prelude.Text)),
                    inferenceAccelerators :: (Prelude.Maybe [InferenceAcceleratorProperty]),
                    ipcMode :: (Prelude.Maybe (Value Prelude.Text)),
                    memory :: (Prelude.Maybe (Value Prelude.Text)),
                    networkMode :: (Prelude.Maybe (Value Prelude.Text)),
                    pidMode :: (Prelude.Maybe (Value Prelude.Text)),
                    placementConstraints :: (Prelude.Maybe [TaskDefinitionPlacementConstraintProperty]),
                    proxyConfiguration :: (Prelude.Maybe ProxyConfigurationProperty),
                    requiresCompatibilities :: (Prelude.Maybe (ValueList Prelude.Text)),
                    runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                    tags :: (Prelude.Maybe [Tag]),
                    taskRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    volumes :: (Prelude.Maybe [VolumeProperty])}
mkTaskDefinition :: TaskDefinition
mkTaskDefinition
  = TaskDefinition
      {containerDefinitions = Prelude.Nothing, cpu = Prelude.Nothing,
       ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, family = Prelude.Nothing,
       inferenceAccelerators = Prelude.Nothing, ipcMode = Prelude.Nothing,
       memory = Prelude.Nothing, networkMode = Prelude.Nothing,
       pidMode = Prelude.Nothing, placementConstraints = Prelude.Nothing,
       proxyConfiguration = Prelude.Nothing,
       requiresCompatibilities = Prelude.Nothing,
       runtimePlatform = Prelude.Nothing, tags = Prelude.Nothing,
       taskRoleArn = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties TaskDefinition where
  toResourceProperties TaskDefinition {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerDefinitions" Prelude.<$> containerDefinitions,
                            (JSON..=) "Cpu" Prelude.<$> cpu,
                            (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "Family" Prelude.<$> family,
                            (JSON..=) "InferenceAccelerators"
                              Prelude.<$> inferenceAccelerators,
                            (JSON..=) "IpcMode" Prelude.<$> ipcMode,
                            (JSON..=) "Memory" Prelude.<$> memory,
                            (JSON..=) "NetworkMode" Prelude.<$> networkMode,
                            (JSON..=) "PidMode" Prelude.<$> pidMode,
                            (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                            (JSON..=) "ProxyConfiguration" Prelude.<$> proxyConfiguration,
                            (JSON..=) "RequiresCompatibilities"
                              Prelude.<$> requiresCompatibilities,
                            (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON TaskDefinition where
  toJSON TaskDefinition {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerDefinitions" Prelude.<$> containerDefinitions,
               (JSON..=) "Cpu" Prelude.<$> cpu,
               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "Family" Prelude.<$> family,
               (JSON..=) "InferenceAccelerators"
                 Prelude.<$> inferenceAccelerators,
               (JSON..=) "IpcMode" Prelude.<$> ipcMode,
               (JSON..=) "Memory" Prelude.<$> memory,
               (JSON..=) "NetworkMode" Prelude.<$> networkMode,
               (JSON..=) "PidMode" Prelude.<$> pidMode,
               (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
               (JSON..=) "ProxyConfiguration" Prelude.<$> proxyConfiguration,
               (JSON..=) "RequiresCompatibilities"
                 Prelude.<$> requiresCompatibilities,
               (JSON..=) "RuntimePlatform" Prelude.<$> runtimePlatform,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TaskRoleArn" Prelude.<$> taskRoleArn,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "ContainerDefinitions" TaskDefinition where
  type PropertyType "ContainerDefinitions" TaskDefinition = [ContainerDefinitionProperty]
  set newValue TaskDefinition {..}
    = TaskDefinition {containerDefinitions = Prelude.pure newValue, ..}
instance Property "Cpu" TaskDefinition where
  type PropertyType "Cpu" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {cpu = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" TaskDefinition where
  type PropertyType "EphemeralStorage" TaskDefinition = EphemeralStorageProperty
  set newValue TaskDefinition {..}
    = TaskDefinition {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "ExecutionRoleArn" TaskDefinition where
  type PropertyType "ExecutionRoleArn" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {executionRoleArn = Prelude.pure newValue, ..}
instance Property "Family" TaskDefinition where
  type PropertyType "Family" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {family = Prelude.pure newValue, ..}
instance Property "InferenceAccelerators" TaskDefinition where
  type PropertyType "InferenceAccelerators" TaskDefinition = [InferenceAcceleratorProperty]
  set newValue TaskDefinition {..}
    = TaskDefinition
        {inferenceAccelerators = Prelude.pure newValue, ..}
instance Property "IpcMode" TaskDefinition where
  type PropertyType "IpcMode" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {ipcMode = Prelude.pure newValue, ..}
instance Property "Memory" TaskDefinition where
  type PropertyType "Memory" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {memory = Prelude.pure newValue, ..}
instance Property "NetworkMode" TaskDefinition where
  type PropertyType "NetworkMode" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {networkMode = Prelude.pure newValue, ..}
instance Property "PidMode" TaskDefinition where
  type PropertyType "PidMode" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {pidMode = Prelude.pure newValue, ..}
instance Property "PlacementConstraints" TaskDefinition where
  type PropertyType "PlacementConstraints" TaskDefinition = [TaskDefinitionPlacementConstraintProperty]
  set newValue TaskDefinition {..}
    = TaskDefinition {placementConstraints = Prelude.pure newValue, ..}
instance Property "ProxyConfiguration" TaskDefinition where
  type PropertyType "ProxyConfiguration" TaskDefinition = ProxyConfigurationProperty
  set newValue TaskDefinition {..}
    = TaskDefinition {proxyConfiguration = Prelude.pure newValue, ..}
instance Property "RequiresCompatibilities" TaskDefinition where
  type PropertyType "RequiresCompatibilities" TaskDefinition = ValueList Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition
        {requiresCompatibilities = Prelude.pure newValue, ..}
instance Property "RuntimePlatform" TaskDefinition where
  type PropertyType "RuntimePlatform" TaskDefinition = RuntimePlatformProperty
  set newValue TaskDefinition {..}
    = TaskDefinition {runtimePlatform = Prelude.pure newValue, ..}
instance Property "Tags" TaskDefinition where
  type PropertyType "Tags" TaskDefinition = [Tag]
  set newValue TaskDefinition {..}
    = TaskDefinition {tags = Prelude.pure newValue, ..}
instance Property "TaskRoleArn" TaskDefinition where
  type PropertyType "TaskRoleArn" TaskDefinition = Value Prelude.Text
  set newValue TaskDefinition {..}
    = TaskDefinition {taskRoleArn = Prelude.pure newValue, ..}
instance Property "Volumes" TaskDefinition where
  type PropertyType "Volumes" TaskDefinition = [VolumeProperty]
  set newValue TaskDefinition {..}
    = TaskDefinition {volumes = Prelude.pure newValue, ..}