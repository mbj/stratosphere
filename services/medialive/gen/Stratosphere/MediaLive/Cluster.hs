module Stratosphere.MediaLive.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MediaLive.Cluster.ClusterNetworkSettingsProperty as Exports
import {-# SOURCE #-} Stratosphere.MediaLive.Cluster.TagsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Cluster
  = Cluster {clusterType :: (Prelude.Maybe (Value Prelude.Text)),
             instanceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             networkSettings :: (Prelude.Maybe ClusterNetworkSettingsProperty),
             tags :: (Prelude.Maybe [TagsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: Cluster
mkCluster
  = Cluster
      {clusterType = Prelude.Nothing, instanceRoleArn = Prelude.Nothing,
       name = Prelude.Nothing, networkSettings = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::MediaLive::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ClusterType" Prelude.<$> clusterType,
                            (JSON..=) "InstanceRoleArn" Prelude.<$> instanceRoleArn,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NetworkSettings" Prelude.<$> networkSettings,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ClusterType" Prelude.<$> clusterType,
               (JSON..=) "InstanceRoleArn" Prelude.<$> instanceRoleArn,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NetworkSettings" Prelude.<$> networkSettings,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "ClusterType" Cluster where
  type PropertyType "ClusterType" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterType = Prelude.pure newValue, ..}
instance Property "InstanceRoleArn" Cluster where
  type PropertyType "InstanceRoleArn" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {instanceRoleArn = Prelude.pure newValue, ..}
instance Property "Name" Cluster where
  type PropertyType "Name" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {name = Prelude.pure newValue, ..}
instance Property "NetworkSettings" Cluster where
  type PropertyType "NetworkSettings" Cluster = ClusterNetworkSettingsProperty
  set newValue Cluster {..}
    = Cluster {networkSettings = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [TagsProperty]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}