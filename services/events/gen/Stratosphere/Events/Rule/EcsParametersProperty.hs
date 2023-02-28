module Stratosphere.Events.Rule.EcsParametersProperty (
        module Exports, EcsParametersProperty(..), mkEcsParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Events.Rule.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.PlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.Events.Rule.PlacementStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data EcsParametersProperty
  = EcsParametersProperty {capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
                           enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
                           enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                           group :: (Prelude.Maybe (Value Prelude.Text)),
                           launchType :: (Prelude.Maybe (Value Prelude.Text)),
                           networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                           placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
                           placementStrategies :: (Prelude.Maybe [PlacementStrategyProperty]),
                           platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
                           referenceId :: (Prelude.Maybe (Value Prelude.Text)),
                           tagList :: (Prelude.Maybe [Tag]),
                           taskCount :: (Prelude.Maybe (Value Prelude.Integer)),
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
       placementStrategies = Prelude.Nothing,
       platformVersion = Prelude.Nothing, propagateTags = Prelude.Nothing,
       referenceId = Prelude.Nothing, tagList = Prelude.Nothing,
       taskCount = Prelude.Nothing}
instance ToResourceProperties EcsParametersProperty where
  toResourceProperties EcsParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Events::Rule.EcsParameters",
         supportsTags = Prelude.False,
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
                               (JSON..=) "PlacementStrategies" Prelude.<$> placementStrategies,
                               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                               (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                               (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                               (JSON..=) "TagList" Prelude.<$> tagList,
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
                  (JSON..=) "PlacementStrategies" Prelude.<$> placementStrategies,
                  (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                  (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                  (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                  (JSON..=) "TagList" Prelude.<$> tagList,
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
instance Property "PlacementStrategies" EcsParametersProperty where
  type PropertyType "PlacementStrategies" EcsParametersProperty = [PlacementStrategyProperty]
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty
        {placementStrategies = Prelude.pure newValue, ..}
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
instance Property "TagList" EcsParametersProperty where
  type PropertyType "TagList" EcsParametersProperty = [Tag]
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {tagList = Prelude.pure newValue, ..}
instance Property "TaskCount" EcsParametersProperty where
  type PropertyType "TaskCount" EcsParametersProperty = Value Prelude.Integer
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {taskCount = Prelude.pure newValue, ..}
instance Property "TaskDefinitionArn" EcsParametersProperty where
  type PropertyType "TaskDefinitionArn" EcsParametersProperty = Value Prelude.Text
  set newValue EcsParametersProperty {..}
    = EcsParametersProperty {taskDefinitionArn = newValue, ..}