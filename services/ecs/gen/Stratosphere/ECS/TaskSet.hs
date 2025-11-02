module Stratosphere.ECS.TaskSet (
        module Exports, TaskSet(..), mkTaskSet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.LoadBalancerProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.NetworkConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.ScaleProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskSet.ServiceRegistryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TaskSet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html>
    TaskSet {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-capacityproviderstrategy>
             capacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-cluster>
             cluster :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-externalid>
             externalId :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-launchtype>
             launchType :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-loadbalancers>
             loadBalancers :: (Prelude.Maybe [LoadBalancerProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-networkconfiguration>
             networkConfiguration :: (Prelude.Maybe NetworkConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-platformversion>
             platformVersion :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-scale>
             scale :: (Prelude.Maybe ScaleProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-service>
             service :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-serviceregistries>
             serviceRegistries :: (Prelude.Maybe [ServiceRegistryProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-taskset.html#cfn-ecs-taskset-taskdefinition>
             taskDefinition :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTaskSet ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> TaskSet
mkTaskSet cluster service taskDefinition
  = TaskSet
      {haddock_workaround_ = (), cluster = cluster, service = service,
       taskDefinition = taskDefinition,
       capacityProviderStrategy = Prelude.Nothing,
       externalId = Prelude.Nothing, launchType = Prelude.Nothing,
       loadBalancers = Prelude.Nothing,
       networkConfiguration = Prelude.Nothing,
       platformVersion = Prelude.Nothing, scale = Prelude.Nothing,
       serviceRegistries = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TaskSet where
  toResourceProperties TaskSet {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskSet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Cluster" JSON..= cluster, "Service" JSON..= service,
                            "TaskDefinition" JSON..= taskDefinition]
                           (Prelude.catMaybes
                              [(JSON..=) "CapacityProviderStrategy"
                                 Prelude.<$> capacityProviderStrategy,
                               (JSON..=) "ExternalId" Prelude.<$> externalId,
                               (JSON..=) "LaunchType" Prelude.<$> launchType,
                               (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                               (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                               (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                               (JSON..=) "Scale" Prelude.<$> scale,
                               (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON TaskSet where
  toJSON TaskSet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Cluster" JSON..= cluster, "Service" JSON..= service,
               "TaskDefinition" JSON..= taskDefinition]
              (Prelude.catMaybes
                 [(JSON..=) "CapacityProviderStrategy"
                    Prelude.<$> capacityProviderStrategy,
                  (JSON..=) "ExternalId" Prelude.<$> externalId,
                  (JSON..=) "LaunchType" Prelude.<$> launchType,
                  (JSON..=) "LoadBalancers" Prelude.<$> loadBalancers,
                  (JSON..=) "NetworkConfiguration" Prelude.<$> networkConfiguration,
                  (JSON..=) "PlatformVersion" Prelude.<$> platformVersion,
                  (JSON..=) "Scale" Prelude.<$> scale,
                  (JSON..=) "ServiceRegistries" Prelude.<$> serviceRegistries,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CapacityProviderStrategy" TaskSet where
  type PropertyType "CapacityProviderStrategy" TaskSet = [CapacityProviderStrategyItemProperty]
  set newValue TaskSet {..}
    = TaskSet {capacityProviderStrategy = Prelude.pure newValue, ..}
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
instance Property "Tags" TaskSet where
  type PropertyType "Tags" TaskSet = [Tag]
  set newValue TaskSet {..}
    = TaskSet {tags = Prelude.pure newValue, ..}
instance Property "TaskDefinition" TaskSet where
  type PropertyType "TaskDefinition" TaskSet = Value Prelude.Text
  set newValue TaskSet {..} = TaskSet {taskDefinition = newValue, ..}