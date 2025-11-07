module Stratosphere.ECS.TaskDefinition (
        module Exports, TaskDefinition(..), mkTaskDefinition
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ContainerDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.EphemeralStorageProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.ProxyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.RuntimePlatformProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.TaskDefinitionPlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TaskDefinition
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html>
    TaskDefinition {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-containerdefinitions>
                    containerDefinitions :: (Prelude.Maybe [ContainerDefinitionProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-cpu>
                    cpu :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-enablefaultinjection>
                    enableFaultInjection :: (Prelude.Maybe (Value Prelude.Bool)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-ephemeralstorage>
                    ephemeralStorage :: (Prelude.Maybe EphemeralStorageProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-executionrolearn>
                    executionRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-family>
                    family :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-ipcmode>
                    ipcMode :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-memory>
                    memory :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-networkmode>
                    networkMode :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-pidmode>
                    pidMode :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-placementconstraints>
                    placementConstraints :: (Prelude.Maybe [TaskDefinitionPlacementConstraintProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-proxyconfiguration>
                    proxyConfiguration :: (Prelude.Maybe ProxyConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-requirescompatibilities>
                    requiresCompatibilities :: (Prelude.Maybe (ValueList Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-runtimeplatform>
                    runtimePlatform :: (Prelude.Maybe RuntimePlatformProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-taskrolearn>
                    taskRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskdefinition.html#cfn-ecs-taskdefinition-volumes>
                    volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskDefinition :: TaskDefinition
mkTaskDefinition
  = TaskDefinition
      {haddock_workaround_ = (), containerDefinitions = Prelude.Nothing,
       cpu = Prelude.Nothing, enableFaultInjection = Prelude.Nothing,
       ephemeralStorage = Prelude.Nothing,
       executionRoleArn = Prelude.Nothing, family = Prelude.Nothing,
       ipcMode = Prelude.Nothing, memory = Prelude.Nothing,
       networkMode = Prelude.Nothing, pidMode = Prelude.Nothing,
       placementConstraints = Prelude.Nothing,
       proxyConfiguration = Prelude.Nothing,
       requiresCompatibilities = Prelude.Nothing,
       runtimePlatform = Prelude.Nothing, tags = Prelude.Nothing,
       taskRoleArn = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties TaskDefinition where
  toResourceProperties TaskDefinition {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerDefinitions" Prelude.<$> containerDefinitions,
                            (JSON..=) "Cpu" Prelude.<$> cpu,
                            (JSON..=) "EnableFaultInjection" Prelude.<$> enableFaultInjection,
                            (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                            (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
                            (JSON..=) "Family" Prelude.<$> family,
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
               (JSON..=) "EnableFaultInjection" Prelude.<$> enableFaultInjection,
               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
               (JSON..=) "ExecutionRoleArn" Prelude.<$> executionRoleArn,
               (JSON..=) "Family" Prelude.<$> family,
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
instance Property "EnableFaultInjection" TaskDefinition where
  type PropertyType "EnableFaultInjection" TaskDefinition = Value Prelude.Bool
  set newValue TaskDefinition {..}
    = TaskDefinition {enableFaultInjection = Prelude.pure newValue, ..}
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