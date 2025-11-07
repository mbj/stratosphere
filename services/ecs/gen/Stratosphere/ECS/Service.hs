module Stratosphere.ECS.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentControllerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ForceNewDeploymentProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.LoadBalancerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.PlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.PlacementStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceRegistryProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceVolumeConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.VpcLatticeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html>
    Service {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-availabilityzonerebalancing>
             availabilityZoneRebalancing :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-capacityproviderstrategy>
             capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-cluster>
             cluster :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentconfiguration>
             deploymentConfiguration :: (Prelude.Maybe DeploymentConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-deploymentcontroller>
             deploymentController :: (Prelude.Maybe DeploymentControllerProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-desiredcount>
             desiredCount :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-enableecsmanagedtags>
             enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-enableexecutecommand>
             enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-forcenewdeployment>
             forceNewDeployment :: (Prelude.Maybe ForceNewDeploymentProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-healthcheckgraceperiodseconds>
             healthCheckGracePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-launchtype>
             launchType :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-loadbalancers>
             loadBalancers :: (Prelude.Maybe [LoadBalancerProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-networkconfiguration>
             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementconstraints>
             placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-placementstrategies>
             placementStrategies :: (Prelude.Maybe [PlacementStrategyProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-platformversion>
             platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-propagatetags>
             propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-role>
             role :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-schedulingstrategy>
             schedulingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceconnectconfiguration>
             serviceConnectConfiguration :: (Prelude.Maybe ServiceConnectConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-servicename>
             serviceName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-serviceregistries>
             serviceRegistries :: (Prelude.Maybe [ServiceRegistryProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-taskdefinition>
             taskDefinition :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-volumeconfigurations>
             volumeConfigurations :: (Prelude.Maybe [ServiceVolumeConfigurationProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-service.html#cfn-ecs-service-vpclatticeconfigurations>
             vpcLatticeConfigurations :: (Prelude.Maybe [VpcLatticeConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkService :: Service
mkService
  = Service
      {haddock_workaround_ = (),
       availabilityZoneRebalancing = Prelude.Nothing,
       capacityProviderStrategy = Prelude.Nothing,
       cluster = Prelude.Nothing,
       deploymentConfiguration = Prelude.Nothing,
       deploymentController = Prelude.Nothing,
       desiredCount = Prelude.Nothing,
       enableECSManagedTags = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing,
       forceNewDeployment = Prelude.Nothing,
       healthCheckGracePeriodSeconds = Prelude.Nothing,
       launchType = Prelude.Nothing, loadBalancers = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       placementConstraints = Prelude.Nothing,
       placementStrategies = Prelude.Nothing,
       platformVersion = Prelude.Nothing, propagateTags = Prelude.Nothing,
       role = Prelude.Nothing, schedulingStrategy = Prelude.Nothing,
       serviceConnectConfiguration = Prelude.Nothing,
       serviceName = Prelude.Nothing, serviceRegistries = Prelude.Nothing,
       tags = Prelude.Nothing, taskDefinition = Prelude.Nothing,
       volumeConfigurations = Prelude.Nothing,
       vpcLatticeConfigurations = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AvailabilityZoneRebalancing"
                              Prelude.<$> availabilityZoneRebalancing,
                            (JSON..=) "CapacityProviderStrategy"
                              Prelude.<$> capacityProviderStrategy,
                            (JSON..=) "Cluster" Prelude.<$> cluster,
                            (JSON..=) "DeploymentConfiguration"
                              Prelude.<$> deploymentConfiguration,
                            (JSON..=) "DeploymentController" Prelude.<$> deploymentController,
                            (JSON..=) "DesiredCount" Prelude.<$> desiredCount,
                            (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
                            (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
                            (JSON..=) "ForceNewDeployment" Prelude.<$> forceNewDeployment,
                            (JSON..=) "HealthCheckGracePeriodSeconds"
                              Prelude.<$> healthCheckGracePeriodSeconds,
                            (JSON..=) "LaunchType" Prelude.<$> launchType,
                            (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                            (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                            (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
                            (JSON..=) "PlacementStrategies" Prelude.<$> placementStrategies,
                            (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                            (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
                            (JSON..=) "Role" Prelude.<$> role,
                            (JSON..=) "SchedulingStrategy" Prelude.<$> schedulingStrategy,
                            (JSON..=) "ServiceConnectConfiguration"
                              Prelude.<$> serviceConnectConfiguration,
                            (JSON..=) "ServiceName" Prelude.<$> serviceName,
                            (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TaskDefinition" Prelude.<$> taskDefinition,
                            (JSON..=) "VolumeConfigurations" Prelude.<$> volumeConfigurations,
                            (JSON..=) "VpcLatticeConfigurations"
                              Prelude.<$> vpcLatticeConfigurations])}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AvailabilityZoneRebalancing"
                 Prelude.<$> availabilityZoneRebalancing,
               (JSON..=) "CapacityProviderStrategy"
                 Prelude.<$> capacityProviderStrategy,
               (JSON..=) "Cluster" Prelude.<$> cluster,
               (JSON..=) "DeploymentConfiguration"
                 Prelude.<$> deploymentConfiguration,
               (JSON..=) "DeploymentController" Prelude.<$> deploymentController,
               (JSON..=) "DesiredCount" Prelude.<$> desiredCount,
               (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
               (JSON..=) "ForceNewDeployment" Prelude.<$> forceNewDeployment,
               (JSON..=) "HealthCheckGracePeriodSeconds"
                 Prelude.<$> healthCheckGracePeriodSeconds,
               (JSON..=) "LaunchType" Prelude.<$> launchType,
               (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
               (JSON..=) "PlacementConstraints" Prelude.<$> placementConstraints,
               (JSON..=) "PlacementStrategies" Prelude.<$> placementStrategies,
               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
               (JSON..=) "PropagateTags" Prelude.<$> propagateTags,
               (JSON..=) "Role" Prelude.<$> role,
               (JSON..=) "SchedulingStrategy" Prelude.<$> schedulingStrategy,
               (JSON..=) "ServiceConnectConfiguration"
                 Prelude.<$> serviceConnectConfiguration,
               (JSON..=) "ServiceName" Prelude.<$> serviceName,
               (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TaskDefinition" Prelude.<$> taskDefinition,
               (JSON..=) "VolumeConfigurations" Prelude.<$> volumeConfigurations,
               (JSON..=) "VpcLatticeConfigurations"
                 Prelude.<$> vpcLatticeConfigurations]))
instance Property "AvailabilityZoneRebalancing" Service where
  type PropertyType "AvailabilityZoneRebalancing" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {availabilityZoneRebalancing = Prelude.pure newValue, ..}
instance Property "CapacityProviderStrategy" Service where
  type PropertyType "CapacityProviderStrategy" Service = [CapacityProviderStrategyItemProperty]
  set newValue Service {..}
    = Service {capacityProviderStrategy = Prelude.pure newValue, ..}
instance Property "Cluster" Service where
  type PropertyType "Cluster" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {cluster = Prelude.pure newValue, ..}
instance Property "DeploymentConfiguration" Service where
  type PropertyType "DeploymentConfiguration" Service = DeploymentConfigurationProperty
  set newValue Service {..}
    = Service {deploymentConfiguration = Prelude.pure newValue, ..}
instance Property "DeploymentController" Service where
  type PropertyType "DeploymentController" Service = DeploymentControllerProperty
  set newValue Service {..}
    = Service {deploymentController = Prelude.pure newValue, ..}
instance Property "DesiredCount" Service where
  type PropertyType "DesiredCount" Service = Value Prelude.Integer
  set newValue Service {..}
    = Service {desiredCount = Prelude.pure newValue, ..}
instance Property "EnableECSManagedTags" Service where
  type PropertyType "EnableECSManagedTags" Service = Value Prelude.Bool
  set newValue Service {..}
    = Service {enableECSManagedTags = Prelude.pure newValue, ..}
instance Property "EnableExecuteCommand" Service where
  type PropertyType "EnableExecuteCommand" Service = Value Prelude.Bool
  set newValue Service {..}
    = Service {enableExecuteCommand = Prelude.pure newValue, ..}
instance Property "ForceNewDeployment" Service where
  type PropertyType "ForceNewDeployment" Service = ForceNewDeploymentProperty
  set newValue Service {..}
    = Service {forceNewDeployment = Prelude.pure newValue, ..}
instance Property "HealthCheckGracePeriodSeconds" Service where
  type PropertyType "HealthCheckGracePeriodSeconds" Service = Value Prelude.Integer
  set newValue Service {..}
    = Service
        {healthCheckGracePeriodSeconds = Prelude.pure newValue, ..}
instance Property "LaunchType" Service where
  type PropertyType "LaunchType" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {launchType = Prelude.pure newValue, ..}
instance Property "LoadBalancers" Service where
  type PropertyType "LoadBalancers" Service = [LoadBalancerProperty]
  set newValue Service {..}
    = Service {loadBalancers = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" Service where
  type PropertyType "NetworkConfiguration" Service = NetworkConfigurationProperty
  set newValue Service {..}
    = Service {networkConfiguration = Prelude.pure newValue, ..}
instance Property "PlacementConstraints" Service where
  type PropertyType "PlacementConstraints" Service = [PlacementConstraintProperty]
  set newValue Service {..}
    = Service {placementConstraints = Prelude.pure newValue, ..}
instance Property "PlacementStrategies" Service where
  type PropertyType "PlacementStrategies" Service = [PlacementStrategyProperty]
  set newValue Service {..}
    = Service {placementStrategies = Prelude.pure newValue, ..}
instance Property "PlatformVersion" Service where
  type PropertyType "PlatformVersion" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {platformVersion = Prelude.pure newValue, ..}
instance Property "PropagateTags" Service where
  type PropertyType "PropagateTags" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {propagateTags = Prelude.pure newValue, ..}
instance Property "Role" Service where
  type PropertyType "Role" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {role = Prelude.pure newValue, ..}
instance Property "SchedulingStrategy" Service where
  type PropertyType "SchedulingStrategy" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {schedulingStrategy = Prelude.pure newValue, ..}
instance Property "ServiceConnectConfiguration" Service where
  type PropertyType "ServiceConnectConfiguration" Service = ServiceConnectConfigurationProperty
  set newValue Service {..}
    = Service {serviceConnectConfiguration = Prelude.pure newValue, ..}
instance Property "ServiceName" Service where
  type PropertyType "ServiceName" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {serviceName = Prelude.pure newValue, ..}
instance Property "ServiceRegistries" Service where
  type PropertyType "ServiceRegistries" Service = [ServiceRegistryProperty]
  set newValue Service {..}
    = Service {serviceRegistries = Prelude.pure newValue, ..}
instance Property "Tags" Service where
  type PropertyType "Tags" Service = [Tag]
  set newValue Service {..}
    = Service {tags = Prelude.pure newValue, ..}
instance Property "TaskDefinition" Service where
  type PropertyType "TaskDefinition" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {taskDefinition = Prelude.pure newValue, ..}
instance Property "VolumeConfigurations" Service where
  type PropertyType "VolumeConfigurations" Service = [ServiceVolumeConfigurationProperty]
  set newValue Service {..}
    = Service {volumeConfigurations = Prelude.pure newValue, ..}
instance Property "VpcLatticeConfigurations" Service where
  type PropertyType "VpcLatticeConfigurations" Service = [VpcLatticeConfigurationProperty]
  set newValue Service {..}
    = Service {vpcLatticeConfigurations = Prelude.pure newValue, ..}