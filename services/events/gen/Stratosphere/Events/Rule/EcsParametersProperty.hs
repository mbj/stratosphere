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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html>
    EcsParametersProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-capacityproviderstrategy>
                           capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-enableecsmanagedtags>
                           enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-enableexecutecommand>
                           enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-group>
                           group :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-launchtype>
                           launchType :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-networkconfiguration>
                           networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-placementconstraints>
                           placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-placementstrategies>
                           placementStrategies :: (Prelude.Maybe [PlacementStrategyProperty]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-platformversion>
                           platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-propagatetags>
                           propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-referenceid>
                           referenceId :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taglist>
                           tagList :: (Prelude.Maybe [Tag]),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskcount>
                           taskCount :: (Prelude.Maybe (Value Prelude.Integer)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-events-rule-ecsparameters.html#cfn-events-rule-ecsparameters-taskdefinitionarn>
                           taskDefinitionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEcsParametersProperty ::
  Value Prelude.Text -> EcsParametersProperty
mkEcsParametersProperty taskDefinitionArn
  = EcsParametersProperty
      {haddock_workaround_ = (), taskDefinitionArn = taskDefinitionArn,
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