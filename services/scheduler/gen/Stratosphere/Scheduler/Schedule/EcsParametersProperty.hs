module Stratosphere.Scheduler.Schedule.EcsParametersProperty (
        module Exports, EcsParametersProperty(..), mkEcsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.PlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.Scheduler.Schedule.PlacementStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsParametersProperty
  = EcsParametersProperty {capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
                           enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
                           enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                           group :: (Prelude.Maybe (Value Prelude.Text)),
                           launchType :: (Prelude.Maybe (Value Prelude.Text)),
                           networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                           placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
                           placementStrategy :: (Prelude.Maybe [PlacementStrategyProperty]),
                           platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
                           referenceId :: (Prelude.Maybe (Value Prelude.Text)),
                           tags :: (Prelude.Maybe JSON.Object),
                           taskCount :: (Prelude.Maybe (Value Prelude.Double)),
                           taskDefinitionArn :: (Value Prelude.Text)}
mkEcsParametersProperty ::
  Value Prelude.Text -> EcsParametersProperty
mkEcsParametersProperty taskDefinitionArn
  = EcsParametersProperty
      {taskDefinitionArn = taskDefinitionArn,
       capacityProviderStrategy = Prelude.Nothing,
       enableECSManagedTags = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing, group = Prelude.Nothing,
       launchType = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       placementConstraints = Prelude.Nothing,
       placementStrategy = Prelude.Nothing,
       platformVersion = Prelude.Nothing, propagateTags = Prelude.Nothing,
       referenceId = Prelude.Nothing, tags = Prelude.Nothing,
       taskCount = Prelude.Nothing}
instance ToResourceProperties EcsParametersProperty where
  toResourceProperties EcsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::Schedule.EcsParameters",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TaskDefinitionArn" JSON..= taskDefinitionArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityProviderStrategy"
                                 Prelude.<$> capacityProviderStrategy,
                               (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
                               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                               (JSON..=) "Group" Prelude.<$> group,
                               (JSON..=) "LaunchType" Prelude.<$> launchType,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                               (JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy,
                               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                               (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                               (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskCount" Prelude.<$> taskCount]))}
instance JSON.ToJSON EcsParametersProperty where
  toJSON EcsParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TaskDefinitionArn" JSON..= taskDefinitionArn]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityProviderStrategy"
                    Prelude.<$> capacityProviderStrategy,
                  (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
                  (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                  (JSON..=) "Group" Prelude.<$> group,
                  (JSON..=) "LaunchType" Prelude.<$> launchType,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                  (JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy,
                  (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                  (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                  (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskCount" Prelude.<$> taskCount])))
instance Property "CapacityProviderStrategy" EcsParametersProperty where
  type PropertyType "CapacityProviderStrategy" EcsParametersProperty = [CapacityProviderStrategyItemProperty]
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {capacityProviderStrategy = Prelude.pure newValue, ..}
instance Property "EnableECSManagedTags" EcsParametersProperty where
  type PropertyType "EnableECSManagedTags" EcsParametersProperty = Value Prelude.Bool
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {enableECSManagedTags = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" EcsParametersProperty where
  type PropertyType "EnableExecuteCommand" EcsParametersProperty = Value Prelude.Bool
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "Group" EcsParametersProperty where
  type PropertyType "Group" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {group = Prelude.pure newValue, ..}
instance Property "LaunchType" EcsParametersProperty where
  type PropertyType "LaunchType" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {launchType = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" EcsParametersProperty where
  type PropertyType "NetworkConfiguration" EcsParametersProperty = NetworkConfigurationProperty
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {networkConfiguration = Prelude.pure newValue, ..}
instance Property "PlacementConstraints" EcsParametersProperty where
  type PropertyType "PlacementConstraints" EcsParametersProperty = [PlacementConstraintProperty]
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {placementConstraints = Prelude.pure newValue, ..}
instance Property "PlacementStrategy" EcsParametersProperty where
  type PropertyType "PlacementStrategy" EcsParametersProperty = [PlacementStrategyProperty]
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {placementStrategy = Prelude.pure newValue, ..}
instance Property "PlatformVersion" EcsParametersProperty where
  type PropertyType "PlatformVersion" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {platformVersion = Prelude.pure newValue, ..}
instance Property "PropagateTags" EcsParametersProperty where
  type PropertyType "PropagateTags" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {propagateTags = Prelude.pure newValue, ..}
instance Property "ReferenceId" EcsParametersProperty where
  type PropertyType "ReferenceId" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {referenceId = Prelude.pure newValue, ..}
instance Property "Tags" EcsParametersProperty where
  type PropertyType "Tags" EcsParametersProperty = JSON.Object
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {tags = Prelude.pure newValue, ..}
instance Property "TaskCount" EcsParametersProperty where
  type PropertyType "TaskCount" EcsParametersProperty = Value Prelude.Double
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {taskCount = Prelude.pure newValue, ..}
instance Property "TaskDefinitionArn" EcsParametersProperty where
  type PropertyType "TaskDefinitionArn" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {taskDefinitionArn = newValue, ..}