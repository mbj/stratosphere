module Stratosphere.ECS.TaskSet (
        module Exports, TaskSet(..), mkTaskSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.LoadBalancerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.ScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.ServiceRegistryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TaskSet
  = TaskSet {cluster :: (Value Prelude.Text),
             externalId :: (Prelude.Maybe (Value Prelude.Text)),
             launchType :: (Prelude.Maybe (Value Prelude.Text)),
             loadBalancers :: (Prelude.Maybe [LoadBalancerProperty]),
             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
             platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
             scale :: (Prelude.Maybe ScaleProperty),
             service :: (Value Prelude.Text),
             serviceRegistries :: (Prelude.Maybe [ServiceRegistryProperty]),
             taskDefinition :: (Value Prelude.Text)}
mkTaskSet ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TaskSet
mkTaskSet cluster service taskDefinition
  = TaskSet
      {cluster = cluster, service = service,
       taskDefinition = taskDefinition, externalId = Prelude.Nothing,
       launchType = Prelude.Nothing, loadBalancers = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       platformVersion = Prelude.Nothing, scale = Prelude.Nothing,
       serviceRegistries = Prelude.Nothing}
instance ToResourceProperties TaskSet where
  toResourceProperties TaskSet {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Cluster" JSON..= cluster, "Service" JSON..= service,
                            "TaskDefinition" JSON..= taskDefinition]
                           (Prelude.catMaybes
                              [(JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "LaunchType" Prelude.<$> launchType,
                               (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                               (JSON..=) "Scale" Prelude.<$> scale,
                               (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries]))}
instance JSON.ToJSON TaskSet where
  toJSON TaskSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Cluster" JSON..= cluster, "Service" JSON..= service,
               "TaskDefinition" JSON..= taskDefinition]
              (Prelude.catMaybes
                 [(JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "LaunchType" Prelude.<$> launchType,
                  (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                  (JSON..=) "Scale" Prelude.<$> scale,
                  (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries])))
instance Property "Cluster" TaskSet where
  type PropertyType "Cluster" TaskSet = Value Prelude.Text
  set newValue TaskSet {..} = TaskSet {cluster = newValue, ..}
instance Property "ExternalId" TaskSet where
  type PropertyType "ExternalId" TaskSet = Value Prelude.Text
  set newValue TaskSet {..}
    = TaskSet {externalId = Prelude.pure newValue, ..}
instance Property "LaunchType" TaskSet where
  type PropertyType "LaunchType" TaskSet = Value Prelude.Text
  set newValue TaskSet {..}
    = TaskSet {launchType = Prelude.pure newValue, ..}
instance Property "LoadBalancers" TaskSet where
  type PropertyType "LoadBalancers" TaskSet = [LoadBalancerProperty]
  set newValue TaskSet {..}
    = TaskSet {loadBalancers = Prelude.pure newValue, ..}
instance Property "NetworkConfiguration" TaskSet where
  type PropertyType "NetworkConfiguration" TaskSet = NetworkConfigurationProperty
  set newValue TaskSet {..}
    = TaskSet {networkConfiguration = Prelude.pure newValue, ..}
instance Property "PlatformVersion" TaskSet where
  type PropertyType "PlatformVersion" TaskSet = Value Prelude.Text
  set newValue TaskSet {..}
    = TaskSet {platformVersion = Prelude.pure newValue, ..}
instance Property "Scale" TaskSet where
  type PropertyType "Scale" TaskSet = ScaleProperty
  set newValue TaskSet {..}
    = TaskSet {scale = Prelude.pure newValue, ..}
instance Property "Service" TaskSet where
  type PropertyType "Service" TaskSet = Value Prelude.Text
  set newValue TaskSet {..} = TaskSet {service = newValue, ..}
instance Property "ServiceRegistries" TaskSet where
  type PropertyType "ServiceRegistries" TaskSet = [ServiceRegistryProperty]
  set newValue TaskSet {..}
    = TaskSet {serviceRegistries = Prelude.pure newValue, ..}
instance Property "TaskDefinition" TaskSet where
  type PropertyType "TaskDefinition" TaskSet = Value Prelude.Text
  set newValue TaskSet {..} = TaskSet {taskDefinition = newValue, ..}