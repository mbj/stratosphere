module Stratosphere.ECS.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.DeploymentControllerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.LoadBalancerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.PlacementConstraintProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.PlacementStrategyProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceConnectConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceRegistryProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Service.ServiceVolumeConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = Service {capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
             cluster :: (Prelude.Maybe (Value Prelude.Text)),
             deploymentConfiguration :: (Prelude.Maybe DeploymentConfigurationProperty),
             deploymentController :: (Prelude.Maybe DeploymentControllerProperty),
             desiredCount :: (Prelude.Maybe (Value Prelude.Integer)),
             enableECSManagedTags :: (Prelude.Maybe (Value Prelude.Bool)),
             enableExecuteCommand :: (Prelude.Maybe (Value Prelude.Bool)),
             healthCheckGracePeriodSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
             launchType :: (Prelude.Maybe (Value Prelude.Text)),
             loadBalancers :: (Prelude.Maybe [LoadBalancerProperty]),
             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
             placementConstraints :: (Prelude.Maybe [PlacementConstraintProperty]),
             placementStrategies :: (Prelude.Maybe [PlacementStrategyProperty]),
             platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
             propagateTags :: (Prelude.Maybe (Value Prelude.Text)),
             role :: (Prelude.Maybe (Value Prelude.Text)),
             schedulingStrategy :: (Prelude.Maybe (Value Prelude.Text)),
             serviceConnectConfiguration :: (Prelude.Maybe ServiceConnectConfigurationProperty),
             serviceName :: (Prelude.Maybe (Value Prelude.Text)),
             serviceRegistries :: (Prelude.Maybe [ServiceRegistryProperty]),
             tags :: (Prelude.Maybe [Tag]),
             taskDefinition :: (Prelude.Maybe (Value Prelude.Text)),
             volumeConfigurations :: (Prelude.Maybe [ServiceVolumeConfigurationProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkService :: Service
mkService
  = Service
      {capacityProviderStrategy = Prelude.Nothing,
       cluster = Prelude.Nothing,
       deploymentConfiguration = Prelude.Nothing,
       deploymentController = Prelude.Nothing,
       desiredCount = Prelude.Nothing,
       enableECSManagedTags = Prelude.Nothing,
       enableExecuteCommand = Prelude.Nothing,
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
       volumeConfigurations = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityProviderStrategy"
                              Prelude.<$> capacityProviderStrategy,
                            (JSON..=) "Cluster" Prelude.<$> cluster,
                            (JSON..=) "DeploymentConfiguration"
                              Prelude.<$> deploymentConfiguration,
                            (JSON..=) "DeploymentController" Prelude.<$> deploymentController,
                            (JSON..=) "DesiredCount" Prelude.<$> desiredCount,
                            (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
                            (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
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
                            (JSON..=) "VolumeConfigurations"
                              Prelude.<$> volumeConfigurations])}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityProviderStrategy"
                 Prelude.<$> capacityProviderStrategy,
               (JSON..=) "Cluster" Prelude.<$> cluster,
               (JSON..=) "DeploymentConfiguration"
                 Prelude.<$> deploymentConfiguration,
               (JSON..=) "DeploymentController" Prelude.<$> deploymentController,
               (JSON..=) "DesiredCount" Prelude.<$> desiredCount,
               (JSON..=) "EnableECSManagedTags" Prelude.<$> enableECSManagedTags,
               (JSON..=) "EnableExecuteCommand" Prelude.<$> enableExecuteCommand,
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
               (JSON..=) "VolumeConfigurations"
                 Prelude.<$> volumeConfigurations]))
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