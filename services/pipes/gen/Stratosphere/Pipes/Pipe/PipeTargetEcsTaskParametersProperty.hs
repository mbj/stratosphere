module Stratosphere.Pipes.Pipe.PipeTargetEcsTaskParametersProperty (
        module Exports, PipeTargetEcsTaskParametersProperty(..),
        mkPipeTargetEcsTaskParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.EcsTaskOverrideProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.Pipes.Pipe.PlacementStrategyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data PipeTargetEcsTaskParametersProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html>
    PipeTargetEcsTaskParametersProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-capacityproviderstrategy>
                                         capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-enableecsmanagedtags>
                                         enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-enableexecutecommand>
                                         enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-group>
                                         group :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-launchtype>
                                         launchType :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-networkconfiguration>
                                         networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-overrides>
                                         overrides :: (Prelude.Maybe EcsTaskOverrideProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-placementconstraints>
                                         placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-placementstrategy>
                                         placementStrategy :: (Prelude.Maybe [PlacementStrategyProperty]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-platformversion>
                                         platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-propagatetags>
                                         propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-referenceid>
                                         referenceId :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-tags>
                                         tags :: (Prelude.Maybe [Tag]),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-taskcount>
                                         taskCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-pipes-pipe-pipetargetecstaskparameters.html#cfn-pipes-pipe-pipetargetecstaskparameters-taskdefinitionarn>
                                         taskDefinitionArn :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPipeTargetEcsTaskParametersProperty ::
  Value Prelude.Text -> PipeTargetEcsTaskParametersProperty
mkPipeTargetEcsTaskParametersProperty taskDefinitionArn
  = PipeTargetEcsTaskParametersProperty
      {haddock_workaround_ = (), taskDefinitionArn = taskDefinitionArn,
       capacityProviderStrategy = Prelude.Nothing,
       enableECSManagedTags = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing, group = Prelude.Nothing,
       launchType = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       overrides = Prelude.Nothing,
       placementConstraints = Prelude.Nothing,
       placementStrategy = Prelude.Nothing,
       platformVersion = Prelude.Nothing, propagateTags = Prelude.Nothing,
       referenceId = Prelude.Nothing, tags = Prelude.Nothing,
       taskCount = Prelude.Nothing}
instance ToResourceProperties PipeTargetEcsTaskParametersProperty where
  toResourceProperties PipeTargetEcsTaskParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.PipeTargetEcsTaskParameters",
         supportsTags = Prelude.True,
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
                               (JSON..=) "Overrides" Prelude.<$> overrides,
                               (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                               (JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy,
                               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                               (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                               (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "TaskCount" Prelude.<$> taskCount]))}
instance JSON.ToJSON PipeTargetEcsTaskParametersProperty where
  toJSON PipeTargetEcsTaskParametersProperty {..}
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
                  (JSON..=) "Overrides" Prelude.<$> overrides,
                  (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                  (JSON..=) "PlacementStrategy" Prelude.<$> placementStrategy,
                  (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                  (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                  (JSON..=) "ReferenceId" Prelude.<$> referenceId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "TaskCount" Prelude.<$> taskCount])))
instance Property "CapacityProviderStrategy" PipeTargetEcsTaskParametersProperty where
  type PropertyType "CapacityProviderStrategy" PipeTargetEcsTaskParametersProperty = [CapacityProviderStrategyItemProperty]
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {capacityProviderStrategy = Prelude.pure newValue, ..}
instance Property "EnableECSManagedTags" PipeTargetEcsTaskParametersProperty where
  type PropertyType "EnableECSManagedTags" PipeTargetEcsTaskParametersProperty = Value Prelude.Bool
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {enableECSManagedTags = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" PipeTargetEcsTaskParametersProperty where
  type PropertyType "EnableExecuteCommand" PipeTargetEcsTaskParametersProperty = Value Prelude.Bool
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "Group" PipeTargetEcsTaskParametersProperty where
  type PropertyType "Group" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {group = Prelude.pure newValue, ..}
instance Property "LaunchType" PipeTargetEcsTaskParametersProperty where
  type PropertyType "LaunchType" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {launchType = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" PipeTargetEcsTaskParametersProperty where
  type PropertyType "NetworkConfiguration" PipeTargetEcsTaskParametersProperty = NetworkConfigurationProperty
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {networkConfiguration = Prelude.pure newValue, ..}
instance Property "Overrides" PipeTargetEcsTaskParametersProperty where
  type PropertyType "Overrides" PipeTargetEcsTaskParametersProperty = EcsTaskOverrideProperty
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {overrides = Prelude.pure newValue, ..}
instance Property "PlacementConstraints" PipeTargetEcsTaskParametersProperty where
  type PropertyType "PlacementConstraints" PipeTargetEcsTaskParametersProperty = [PlacementConstraintProperty]
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {placementConstraints = Prelude.pure newValue, ..}
instance Property "PlacementStrategy" PipeTargetEcsTaskParametersProperty where
  type PropertyType "PlacementStrategy" PipeTargetEcsTaskParametersProperty = [PlacementStrategyProperty]
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {placementStrategy = Prelude.pure newValue, ..}
instance Property "PlatformVersion" PipeTargetEcsTaskParametersProperty where
  type PropertyType "PlatformVersion" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {platformVersion = Prelude.pure newValue, ..}
instance Property "PropagateTags" PipeTargetEcsTaskParametersProperty where
  type PropertyType "PropagateTags" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {propagateTags = Prelude.pure newValue, ..}
instance Property "ReferenceId" PipeTargetEcsTaskParametersProperty where
  type PropertyType "ReferenceId" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {referenceId = Prelude.pure newValue, ..}
instance Property "Tags" PipeTargetEcsTaskParametersProperty where
  type PropertyType "Tags" PipeTargetEcsTaskParametersProperty = [Tag]
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {tags = Prelude.pure newValue, ..}
instance Property "TaskCount" PipeTargetEcsTaskParametersProperty where
  type PropertyType "TaskCount" PipeTargetEcsTaskParametersProperty = Value Prelude.Integer
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {taskCount = Prelude.pure newValue, ..}
instance Property "TaskDefinitionArn" PipeTargetEcsTaskParametersProperty where
  type PropertyType "TaskDefinitionArn" PipeTargetEcsTaskParametersProperty = Value Prelude.Text
  set newValue PipeTargetEcsTaskParametersProperty {..}
    = PipeTargetEcsTaskParametersProperty
        {taskDefinitionArn = newValue, ..}