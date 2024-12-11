module Stratosphere.ECS.Cluster.ClusterConfigurationProperty (
        module Exports, ClusterConfigurationProperty(..),
        mkClusterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ExecuteCommandConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ManagedStorageConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ClusterConfigurationProperty
  = ClusterConfigurationProperty {executeCommandConfiguration :: (Prelude.Maybe ExecuteCommandConfigurationProperty),
                                  managedStorageConfiguration :: (Prelude.Maybe ManagedStorageConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkClusterConfigurationProperty :: ClusterConfigurationProperty
mkClusterConfigurationProperty
  = ClusterConfigurationProperty
      {executeCommandConfiguration = Prelude.Nothing,
       managedStorageConfiguration = Prelude.Nothing}
instance ToResourceProperties ClusterConfigurationProperty where
  toResourceProperties ClusterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ClusterConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExecuteCommandConfiguration"
                              Prelude.<$> executeCommandConfiguration,
                            (JSON..=) "ManagedStorageConfiguration"
                              Prelude.<$> managedStorageConfiguration])}
instance JSON.ToJSON ClusterConfigurationProperty where
  toJSON ClusterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExecuteCommandConfiguration"
                 Prelude.<$> executeCommandConfiguration,
               (JSON..=) "ManagedStorageConfiguration"
                 Prelude.<$> managedStorageConfiguration]))
instance Property "ExecuteCommandConfiguration" ClusterConfigurationProperty where
  type PropertyType "ExecuteCommandConfiguration" ClusterConfigurationProperty = ExecuteCommandConfigurationProperty
  set newValue ClusterConfigurationProperty {..}
    = ClusterConfigurationProperty
        {executeCommandConfiguration = Prelude.pure newValue, ..}
instance Property "ManagedStorageConfiguration" ClusterConfigurationProperty where
  type PropertyType "ManagedStorageConfiguration" ClusterConfigurationProperty = ManagedStorageConfigurationProperty
  set newValue ClusterConfigurationProperty {..}
    = ClusterConfigurationProperty
        {managedStorageConfiguration = Prelude.pure newValue, ..}