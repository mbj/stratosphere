module Stratosphere.ECS.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Cluster.CapacityProviderStrategyItemProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ClusterConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ClusterSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ServiceConnectDefaultsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-capacityproviders>
             capacityProviders :: (Prelude.Maybe (ValueList Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustername>
             clusterName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-clustersettings>
             clusterSettings :: (Prelude.Maybe [ClusterSettingsProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-configuration>
             configuration :: (Prelude.Maybe ClusterConfigurationProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-defaultcapacityproviderstrategy>
             defaultCapacityProviderStrategy :: (Prelude.Maybe [CapacityProviderStrategyItemProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-serviceconnectdefaults>
             serviceConnectDefaults :: (Prelude.Maybe ServiceConnectDefaultsProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ecs-cluster.html#cfn-ecs-cluster-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: Cluster
mkCluster
  = Cluster
      {haddock_workaround_ = (), capacityProviders = Prelude.Nothing,
       clusterName = Prelude.Nothing, clusterSettings = Prelude.Nothing,
       configuration = Prelude.Nothing,
       defaultCapacityProviderStrategy = Prelude.Nothing,
       serviceConnectDefaults = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityProviders" Prelude.<$> capacityProviders,
                            (JSON..=) "ClusterName" Prelude.<$> clusterName,
                            (JSON..=) "ClusterSettings" Prelude.<$> clusterSettings,
                            (JSON..=) "Configuration" Prelude.<$> configuration,
                            (JSON..=) "DefaultCapacityProviderStrategy"
                              Prelude.<$> defaultCapacityProviderStrategy,
                            (JSON..=) "ServiceConnectDefaults"
                              Prelude.<$> serviceConnectDefaults,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityProviders" Prelude.<$> capacityProviders,
               (JSON..=) "ClusterName" Prelude.<$> clusterName,
               (JSON..=) "ClusterSettings" Prelude.<$> clusterSettings,
               (JSON..=) "Configuration" Prelude.<$> configuration,
               (JSON..=) "DefaultCapacityProviderStrategy"
                 Prelude.<$> defaultCapacityProviderStrategy,
               (JSON..=) "ServiceConnectDefaults"
                 Prelude.<$> serviceConnectDefaults,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CapacityProviders" Cluster where
  type PropertyType "CapacityProviders" Cluster = ValueList Prelude.Text
  set newValue Cluster {..}
    = Cluster {capacityProviders = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterName = Prelude.pure newValue, ..}
instance Property "ClusterSettings" Cluster where
  type PropertyType "ClusterSettings" Cluster = [ClusterSettingsProperty]
  set newValue Cluster {..}
    = Cluster {clusterSettings = Prelude.pure newValue, ..}
instance Property "Configuration" Cluster where
  type PropertyType "Configuration" Cluster = ClusterConfigurationProperty
  set newValue Cluster {..}
    = Cluster {configuration = Prelude.pure newValue, ..}
instance Property "DefaultCapacityProviderStrategy" Cluster where
  type PropertyType "DefaultCapacityProviderStrategy" Cluster = [CapacityProviderStrategyItemProperty]
  set newValue Cluster {..}
    = Cluster
        {defaultCapacityProviderStrategy = Prelude.pure newValue, ..}
instance Property "ServiceConnectDefaults" Cluster where
  type PropertyType "ServiceConnectDefaults" Cluster = ServiceConnectDefaultsProperty
  set newValue Cluster {..}
    = Cluster {serviceConnectDefaults = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}