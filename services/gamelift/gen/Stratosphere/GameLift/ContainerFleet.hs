module Stratosphere.GameLift.ContainerFleet (
        module Exports, ContainerFleet(..), mkContainerFleet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.ConnectionPortRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.DeploymentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.GameSessionCreationLimitPolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.IpPermissionProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.LocationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.LogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.GameLift.ContainerFleet.ScalingPolicyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ContainerFleet
  = ContainerFleet {billingType :: (Prelude.Maybe (Value Prelude.Text)),
                    deploymentConfiguration :: (Prelude.Maybe DeploymentConfigurationProperty),
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    fleetRoleArn :: (Value Prelude.Text),
                    gameServerContainerGroupDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                    gameServerContainerGroupsPerInstance :: (Prelude.Maybe (Value Prelude.Integer)),
                    gameSessionCreationLimitPolicy :: (Prelude.Maybe GameSessionCreationLimitPolicyProperty),
                    instanceConnectionPortRange :: (Prelude.Maybe ConnectionPortRangeProperty),
                    instanceInboundPermissions :: (Prelude.Maybe [IpPermissionProperty]),
                    instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                    locations :: (Prelude.Maybe [LocationConfigurationProperty]),
                    logConfiguration :: (Prelude.Maybe LogConfigurationProperty),
                    metricGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                    newGameSessionProtectionPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                    perInstanceContainerGroupDefinitionName :: (Prelude.Maybe (Value Prelude.Text)),
                    scalingPolicies :: (Prelude.Maybe [ScalingPolicyProperty]),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkContainerFleet :: Value Prelude.Text -> ContainerFleet
mkContainerFleet fleetRoleArn
  = ContainerFleet
      {fleetRoleArn = fleetRoleArn, billingType = Prelude.Nothing,
       deploymentConfiguration = Prelude.Nothing,
       description = Prelude.Nothing,
       gameServerContainerGroupDefinitionName = Prelude.Nothing,
       gameServerContainerGroupsPerInstance = Prelude.Nothing,
       gameSessionCreationLimitPolicy = Prelude.Nothing,
       instanceConnectionPortRange = Prelude.Nothing,
       instanceInboundPermissions = Prelude.Nothing,
       instanceType = Prelude.Nothing, locations = Prelude.Nothing,
       logConfiguration = Prelude.Nothing, metricGroups = Prelude.Nothing,
       newGameSessionProtectionPolicy = Prelude.Nothing,
       perInstanceContainerGroupDefinitionName = Prelude.Nothing,
       scalingPolicies = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ContainerFleet where
  toResourceProperties ContainerFleet {..}
    = ResourceProperties
        {awsType = "AWS::GameLift::ContainerFleet",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FleetRoleArn" JSON..= fleetRoleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "BillingType" Prelude.<$> billingType,
                               (JSON..=) "DeploymentConfiguration"
                                 Prelude.<$> deploymentConfiguration,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GameServerContainerGroupDefinitionName"
                                 Prelude.<$> gameServerContainerGroupDefinitionName,
                               (JSON..=) "GameServerContainerGroupsPerInstance"
                                 Prelude.<$> gameServerContainerGroupsPerInstance,
                               (JSON..=) "GameSessionCreationLimitPolicy"
                                 Prelude.<$> gameSessionCreationLimitPolicy,
                               (JSON..=) "InstanceConnectionPortRange"
                                 Prelude.<$> instanceConnectionPortRange,
                               (JSON..=) "InstanceInboundPermissions"
                                 Prelude.<$> instanceInboundPermissions,
                               (JSON..=) "InstanceType" Prelude.<$> instanceType,
                               (JSON..=) "Locations" Prelude.<$> locations,
                               (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                               (JSON..=) "MetricGroups" Prelude.<$> metricGroups,
                               (JSON..=) "NewGameSessionProtectionPolicy"
                                 Prelude.<$> newGameSessionProtectionPolicy,
                               (JSON..=) "PerInstanceContainerGroupDefinitionName"
                                 Prelude.<$> perInstanceContainerGroupDefinitionName,
                               (JSON..=) "ScalingPolicies" Prelude.<$> scalingPolicies,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON ContainerFleet where
  toJSON ContainerFleet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FleetRoleArn" JSON..= fleetRoleArn]
              (Prelude.catMaybes
                 [(JSON..=) "BillingType" Prelude.<$> billingType,
                  (JSON..=) "DeploymentConfiguration"
                    Prelude.<$> deploymentConfiguration,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GameServerContainerGroupDefinitionName"
                    Prelude.<$> gameServerContainerGroupDefinitionName,
                  (JSON..=) "GameServerContainerGroupsPerInstance"
                    Prelude.<$> gameServerContainerGroupsPerInstance,
                  (JSON..=) "GameSessionCreationLimitPolicy"
                    Prelude.<$> gameSessionCreationLimitPolicy,
                  (JSON..=) "InstanceConnectionPortRange"
                    Prelude.<$> instanceConnectionPortRange,
                  (JSON..=) "InstanceInboundPermissions"
                    Prelude.<$> instanceInboundPermissions,
                  (JSON..=) "InstanceType" Prelude.<$> instanceType,
                  (JSON..=) "Locations" Prelude.<$> locations,
                  (JSON..=) "LogConfiguration" Prelude.<$> logConfiguration,
                  (JSON..=) "MetricGroups" Prelude.<$> metricGroups,
                  (JSON..=) "NewGameSessionProtectionPolicy"
                    Prelude.<$> newGameSessionProtectionPolicy,
                  (JSON..=) "PerInstanceContainerGroupDefinitionName"
                    Prelude.<$> perInstanceContainerGroupDefinitionName,
                  (JSON..=) "ScalingPolicies" Prelude.<$> scalingPolicies,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "BillingType" ContainerFleet where
  type PropertyType "BillingType" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet {billingType = Prelude.pure newValue, ..}
instance Property "DeploymentConfiguration" ContainerFleet where
  type PropertyType "DeploymentConfiguration" ContainerFleet = DeploymentConfigurationProperty
  set newValue ContainerFleet {..}
    = ContainerFleet
        {deploymentConfiguration = Prelude.pure newValue, ..}
instance Property "Description" ContainerFleet where
  type PropertyType "Description" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet {description = Prelude.pure newValue, ..}
instance Property "FleetRoleArn" ContainerFleet where
  type PropertyType "FleetRoleArn" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet {fleetRoleArn = newValue, ..}
instance Property "GameServerContainerGroupDefinitionName" ContainerFleet where
  type PropertyType "GameServerContainerGroupDefinitionName" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet
        {gameServerContainerGroupDefinitionName = Prelude.pure newValue,
         ..}
instance Property "GameServerContainerGroupsPerInstance" ContainerFleet where
  type PropertyType "GameServerContainerGroupsPerInstance" ContainerFleet = Value Prelude.Integer
  set newValue ContainerFleet {..}
    = ContainerFleet
        {gameServerContainerGroupsPerInstance = Prelude.pure newValue, ..}
instance Property "GameSessionCreationLimitPolicy" ContainerFleet where
  type PropertyType "GameSessionCreationLimitPolicy" ContainerFleet = GameSessionCreationLimitPolicyProperty
  set newValue ContainerFleet {..}
    = ContainerFleet
        {gameSessionCreationLimitPolicy = Prelude.pure newValue, ..}
instance Property "InstanceConnectionPortRange" ContainerFleet where
  type PropertyType "InstanceConnectionPortRange" ContainerFleet = ConnectionPortRangeProperty
  set newValue ContainerFleet {..}
    = ContainerFleet
        {instanceConnectionPortRange = Prelude.pure newValue, ..}
instance Property "InstanceInboundPermissions" ContainerFleet where
  type PropertyType "InstanceInboundPermissions" ContainerFleet = [IpPermissionProperty]
  set newValue ContainerFleet {..}
    = ContainerFleet
        {instanceInboundPermissions = Prelude.pure newValue, ..}
instance Property "InstanceType" ContainerFleet where
  type PropertyType "InstanceType" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet {instanceType = Prelude.pure newValue, ..}
instance Property "Locations" ContainerFleet where
  type PropertyType "Locations" ContainerFleet = [LocationConfigurationProperty]
  set newValue ContainerFleet {..}
    = ContainerFleet {locations = Prelude.pure newValue, ..}
instance Property "LogConfiguration" ContainerFleet where
  type PropertyType "LogConfiguration" ContainerFleet = LogConfigurationProperty
  set newValue ContainerFleet {..}
    = ContainerFleet {logConfiguration = Prelude.pure newValue, ..}
instance Property "MetricGroups" ContainerFleet where
  type PropertyType "MetricGroups" ContainerFleet = ValueList Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet {metricGroups = Prelude.pure newValue, ..}
instance Property "NewGameSessionProtectionPolicy" ContainerFleet where
  type PropertyType "NewGameSessionProtectionPolicy" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet
        {newGameSessionProtectionPolicy = Prelude.pure newValue, ..}
instance Property "PerInstanceContainerGroupDefinitionName" ContainerFleet where
  type PropertyType "PerInstanceContainerGroupDefinitionName" ContainerFleet = Value Prelude.Text
  set newValue ContainerFleet {..}
    = ContainerFleet
        {perInstanceContainerGroupDefinitionName = Prelude.pure newValue,
         ..}
instance Property "ScalingPolicies" ContainerFleet where
  type PropertyType "ScalingPolicies" ContainerFleet = [ScalingPolicyProperty]
  set newValue ContainerFleet {..}
    = ContainerFleet {scalingPolicies = Prelude.pure newValue, ..}
instance Property "Tags" ContainerFleet where
  type PropertyType "Tags" ContainerFleet = [Tag]
  set newValue ContainerFleet {..}
    = ContainerFleet {tags = Prelude.pure newValue, ..}