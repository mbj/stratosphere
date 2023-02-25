module Stratosphere.ECS.Cluster.ClusterConfigurationProperty (
        module Exports, ClusterConfigurationProperty(..),
        mkClusterConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Cluster.ExecuteCommandConfigurationProperty as Exports
import Stratosphere.ResourceProperties
data ClusterConfigurationProperty
  = ClusterConfigurationProperty {executeCommandConfiguration :: (Prelude.Maybe ExecuteCommandConfigurationProperty)}
mkClusterConfigurationProperty :: ClusterConfigurationProperty
mkClusterConfigurationProperty
  = ClusterConfigurationProperty
      {executeCommandConfiguration = Prelude.Nothing}
instance ToResourceProperties ClusterConfigurationProperty where
  toResourceProperties ClusterConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Cluster.ClusterConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ExecuteCommandConfiguration"
                              Prelude.<$> executeCommandConfiguration])}
instance JSON.ToJSON ClusterConfigurationProperty where
  toJSON ClusterConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ExecuteCommandConfiguration"
                 Prelude.<$> executeCommandConfiguration]))
instance Property "ExecuteCommandConfiguration" ClusterConfigurationProperty where
  type PropertyType "ExecuteCommandConfiguration" ClusterConfigurationProperty = ExecuteCommandConfigurationProperty
  set newValue ClusterConfigurationProperty {}
    = ClusterConfigurationProperty
        {executeCommandConfiguration = Prelude.pure newValue, ..}