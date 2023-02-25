module Stratosphere.GameLift.GameServerGroup (
        module Exports, GameServerGroup(..), mkGameServerGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.GameServerGroup.AutoScalingPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameServerGroup.InstanceDefinitionProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.GameServerGroup.LaunchTemplateProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data GameServerGroup
  = GameServerGroup {autoScalingPolicy :: (Prelude.Maybe AutoScalingPolicyProperty),
                     balancingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                     deleteOption :: (Prelude.Maybe (Value Prelude.Text)),
                     gameServerGroupName :: (Value Prelude.Text),
                     gameServerProtectionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                     instanceDefinitions :: [InstanceDefinitionProperty],
                     launchTemplate :: LaunchTemplateProperty,
                     maxSize :: (Prelude.Maybe (Value Prelude.Double)),
                     minSize :: (Prelude.Maybe (Value Prelude.Double)),
                     roleArn :: (Value Prelude.Text),
                     tags :: (Prelude.Maybe [Tag]),
                     vpcSubnets :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkGameServerGroup ::
  Value Prelude.Text
  -> [InstanceDefinitionProperty]
     -> LaunchTemplateProperty -> Value Prelude.Text -> GameServerGroup
mkGameServerGroup
  gameServerGroupName
  instanceDefinitions
  launchTemplate
  roleArn
  = GameServerGroup
      {gameServerGroupName = gameServerGroupName,
       instanceDefinitions = instanceDefinitions,
       launchTemplate = launchTemplate, roleArn = roleArn,
       autoScalingPolicy = Prelude.Nothing,
       balancingStrategy = Prelude.Nothing,
       deleteOption = Prelude.Nothing,
       gameServerProtectionPolicy = Prelude.Nothing,
       maxSize = Prelude.Nothing, minSize = Prelude.Nothing,
       tags = Prelude.Nothing, vpcSubnets = Prelude.Nothing}
instance ToResourceProperties GameServerGroup where
  toResourceProperties GameServerGroup {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::GameServerGroup",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["GameServerGroupName" JSON..= gameServerGroupName,
                            "InstanceDefinitions" JSON..= instanceDefinitions,
                            "LaunchTemplate" JSON..= launchTemplate, "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                               (JSON..=) "BalancingStrategy" Prelude.<$> balancingStrategy,
                               (JSON..=) "DeleteOption" Prelude.<$> deleteOption,
                               (JSON..=) "GameServerProtectionPolicy"
                                 Prelude.<$> gameServerProtectionPolicy,
                               (JSON..=) "MaxSize" Prelude.<$> maxSize,
                               (JSON..=) "MinSize" Prelude.<$> minSize,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcSubnets" Prelude.<$> vpcSubnets]))}
instance JSON.ToJSON GameServerGroup where
  toJSON GameServerGroup {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["GameServerGroupName" JSON..= gameServerGroupName,
               "InstanceDefinitions" JSON..= instanceDefinitions,
               "LaunchTemplate" JSON..= launchTemplate, "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AutoScalingPolicy" Prelude.<$> autoScalingPolicy,
                  (JSON..=) "BalancingStrategy" Prelude.<$> balancingStrategy,
                  (JSON..=) "DeleteOption" Prelude.<$> deleteOption,
                  (JSON..=) "GameServerProtectionPolicy"
                    Prelude.<$> gameServerProtectionPolicy,
                  (JSON..=) "MaxSize" Prelude.<$> maxSize,
                  (JSON..=) "MinSize" Prelude.<$> minSize,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcSubnets" Prelude.<$> vpcSubnets])))
instance Property "AutoScalingPolicy" GameServerGroup where
  type PropertyType "AutoScalingPolicy" GameServerGroup = AutoScalingPolicyProperty
  set newValue GameServerGroup {..}
    = GameServerGroup {autoScalingPolicy = Prelude.pure newValue, ..}
instance Property "BalancingStrategy" GameServerGroup where
  type PropertyType "BalancingStrategy" GameServerGroup = Value Prelude.Text
  set newValue GameServerGroup {..}
    = GameServerGroup {balancingStrategy = Prelude.pure newValue, ..}
instance Property "DeleteOption" GameServerGroup where
  type PropertyType "DeleteOption" GameServerGroup = Value Prelude.Text
  set newValue GameServerGroup {..}
    = GameServerGroup {deleteOption = Prelude.pure newValue, ..}
instance Property "GameServerGroupName" GameServerGroup where
  type PropertyType "GameServerGroupName" GameServerGroup = Value Prelude.Text
  set newValue GameServerGroup {..}
    = GameServerGroup {gameServerGroupName = newValue, ..}
instance Property "GameServerProtectionPolicy" GameServerGroup where
  type PropertyType "GameServerProtectionPolicy" GameServerGroup = Value Prelude.Text
  set newValue GameServerGroup {..}
    = GameServerGroup
        {gameServerProtectionPolicy = Prelude.pure newValue, ..}
instance Property "InstanceDefinitions" GameServerGroup where
  type PropertyType "InstanceDefinitions" GameServerGroup = [InstanceDefinitionProperty]
  set newValue GameServerGroup {..}
    = GameServerGroup {instanceDefinitions = newValue, ..}
instance Property "LaunchTemplate" GameServerGroup where
  type PropertyType "LaunchTemplate" GameServerGroup = LaunchTemplateProperty
  set newValue GameServerGroup {..}
    = GameServerGroup {launchTemplate = newValue, ..}
instance Property "MaxSize" GameServerGroup where
  type PropertyType "MaxSize" GameServerGroup = Value Prelude.Double
  set newValue GameServerGroup {..}
    = GameServerGroup {maxSize = Prelude.pure newValue, ..}
instance Property "MinSize" GameServerGroup where
  type PropertyType "MinSize" GameServerGroup = Value Prelude.Double
  set newValue GameServerGroup {..}
    = GameServerGroup {minSize = Prelude.pure newValue, ..}
instance Property "RoleArn" GameServerGroup where
  type PropertyType "RoleArn" GameServerGroup = Value Prelude.Text
  set newValue GameServerGroup {..}
    = GameServerGroup {roleArn = newValue, ..}
instance Property "Tags" GameServerGroup where
  type PropertyType "Tags" GameServerGroup = [Tag]
  set newValue GameServerGroup {..}
    = GameServerGroup {tags = Prelude.pure newValue, ..}
instance Property "VpcSubnets" GameServerGroup where
  type PropertyType "VpcSubnets" GameServerGroup = ValueList (Value Prelude.Text)
  set newValue GameServerGroup {..}
    = GameServerGroup {vpcSubnets = Prelude.pure newValue, ..}