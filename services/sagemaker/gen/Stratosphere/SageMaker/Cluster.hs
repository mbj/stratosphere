module Stratosphere.SageMaker.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterInstanceGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.OrchestratorProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = Cluster {clusterName :: (Prelude.Maybe (Value Prelude.Text)),
             instanceGroups :: [ClusterInstanceGroupProperty],
             nodeRecovery :: (Prelude.Maybe (Value Prelude.Text)),
             orchestrator :: (Prelude.Maybe OrchestratorProperty),
             tags :: (Prelude.Maybe [Tag]),
             vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: [ClusterInstanceGroupProperty] -> Cluster
mkCluster instanceGroups
  = Cluster
      {instanceGroups = instanceGroups, clusterName = Prelude.Nothing,
       nodeRecovery = Prelude.Nothing, orchestrator = Prelude.Nothing,
       tags = Prelude.Nothing, vpcConfig = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceGroups" JSON..= instanceGroups]
                           (Prelude.catMaybes
                              [(JSON..=) "ClusterName" Prelude.<$> clusterName,
                               (JSON..=) "NodeRecovery" Prelude.<$> nodeRecovery,
                               (JSON..=) "Orchestrator" Prelude.<$> orchestrator,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceGroups" JSON..= instanceGroups]
              (Prelude.catMaybes
                 [(JSON..=) "ClusterName" Prelude.<$> clusterName,
                  (JSON..=) "NodeRecovery" Prelude.<$> nodeRecovery,
                  (JSON..=) "Orchestrator" Prelude.<$> orchestrator,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])))
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterName = Prelude.pure newValue, ..}
instance Property "InstanceGroups" Cluster where
  type PropertyType "InstanceGroups" Cluster = [ClusterInstanceGroupProperty]
  set newValue Cluster {..} = Cluster {instanceGroups = newValue, ..}
instance Property "NodeRecovery" Cluster where
  type PropertyType "NodeRecovery" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {nodeRecovery = Prelude.pure newValue, ..}
instance Property "Orchestrator" Cluster where
  type PropertyType "Orchestrator" Cluster = OrchestratorProperty
  set newValue Cluster {..}
    = Cluster {orchestrator = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "VpcConfig" Cluster where
  type PropertyType "VpcConfig" Cluster = VpcConfigProperty
  set newValue Cluster {..}
    = Cluster {vpcConfig = Prelude.pure newValue, ..}