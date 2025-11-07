module Stratosphere.SageMaker.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterAutoScalingConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterInstanceGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.ClusterRestrictedInstanceGroupProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.OrchestratorProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.TieredStorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.Cluster.VpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-autoscaling>
             autoScaling :: (Prelude.Maybe ClusterAutoScalingConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-clustername>
             clusterName :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-clusterrole>
             clusterRole :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-instancegroups>
             instanceGroups :: (Prelude.Maybe [ClusterInstanceGroupProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-nodeprovisioningmode>
             nodeProvisioningMode :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-noderecovery>
             nodeRecovery :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-orchestrator>
             orchestrator :: (Prelude.Maybe OrchestratorProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-restrictedinstancegroups>
             restrictedInstanceGroups :: (Prelude.Maybe [ClusterRestrictedInstanceGroupProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-tieredstorageconfig>
             tieredStorageConfig :: (Prelude.Maybe TieredStorageConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-cluster.html#cfn-sagemaker-cluster-vpcconfig>
             vpcConfig :: (Prelude.Maybe VpcConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: Cluster
mkCluster
  = Cluster
      {haddock_workaround_ = (), autoScaling = Prelude.Nothing,
       clusterName = Prelude.Nothing, clusterRole = Prelude.Nothing,
       instanceGroups = Prelude.Nothing,
       nodeProvisioningMode = Prelude.Nothing,
       nodeRecovery = Prelude.Nothing, orchestrator = Prelude.Nothing,
       restrictedInstanceGroups = Prelude.Nothing, tags = Prelude.Nothing,
       tieredStorageConfig = Prelude.Nothing, vpcConfig = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AutoScaling" Prelude.<$> autoScaling,
                            (JSON..=) "ClusterName" Prelude.<$> clusterName,
                            (JSON..=) "ClusterRole" Prelude.<$> clusterRole,
                            (JSON..=) "InstanceGroups" Prelude.<$> instanceGroups,
                            (JSON..=) "NodeProvisioningMode" Prelude.<$> nodeProvisioningMode,
                            (JSON..=) "NodeRecovery" Prelude.<$> nodeRecovery,
                            (JSON..=) "Orchestrator" Prelude.<$> orchestrator,
                            (JSON..=) "RestrictedInstanceGroups"
                              Prelude.<$> restrictedInstanceGroups,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "TieredStorageConfig" Prelude.<$> tieredStorageConfig,
                            (JSON..=) "VpcConfig" Prelude.<$> vpcConfig])}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AutoScaling" Prelude.<$> autoScaling,
               (JSON..=) "ClusterName" Prelude.<$> clusterName,
               (JSON..=) "ClusterRole" Prelude.<$> clusterRole,
               (JSON..=) "InstanceGroups" Prelude.<$> instanceGroups,
               (JSON..=) "NodeProvisioningMode" Prelude.<$> nodeProvisioningMode,
               (JSON..=) "NodeRecovery" Prelude.<$> nodeRecovery,
               (JSON..=) "Orchestrator" Prelude.<$> orchestrator,
               (JSON..=) "RestrictedInstanceGroups"
                 Prelude.<$> restrictedInstanceGroups,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "TieredStorageConfig" Prelude.<$> tieredStorageConfig,
               (JSON..=) "VpcConfig" Prelude.<$> vpcConfig]))
instance Property "AutoScaling" Cluster where
  type PropertyType "AutoScaling" Cluster = ClusterAutoScalingConfigProperty
  set newValue Cluster {..}
    = Cluster {autoScaling = Prelude.pure newValue, ..}
instance Property "ClusterName" Cluster where
  type PropertyType "ClusterName" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterName = Prelude.pure newValue, ..}
instance Property "ClusterRole" Cluster where
  type PropertyType "ClusterRole" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {clusterRole = Prelude.pure newValue, ..}
instance Property "InstanceGroups" Cluster where
  type PropertyType "InstanceGroups" Cluster = [ClusterInstanceGroupProperty]
  set newValue Cluster {..}
    = Cluster {instanceGroups = Prelude.pure newValue, ..}
instance Property "NodeProvisioningMode" Cluster where
  type PropertyType "NodeProvisioningMode" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {nodeProvisioningMode = Prelude.pure newValue, ..}
instance Property "NodeRecovery" Cluster where
  type PropertyType "NodeRecovery" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {nodeRecovery = Prelude.pure newValue, ..}
instance Property "Orchestrator" Cluster where
  type PropertyType "Orchestrator" Cluster = OrchestratorProperty
  set newValue Cluster {..}
    = Cluster {orchestrator = Prelude.pure newValue, ..}
instance Property "RestrictedInstanceGroups" Cluster where
  type PropertyType "RestrictedInstanceGroups" Cluster = [ClusterRestrictedInstanceGroupProperty]
  set newValue Cluster {..}
    = Cluster {restrictedInstanceGroups = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "TieredStorageConfig" Cluster where
  type PropertyType "TieredStorageConfig" Cluster = TieredStorageConfigProperty
  set newValue Cluster {..}
    = Cluster {tieredStorageConfig = Prelude.pure newValue, ..}
instance Property "VpcConfig" Cluster where
  type PropertyType "VpcConfig" Cluster = VpcConfigProperty
  set newValue Cluster {..}
    = Cluster {vpcConfig = Prelude.pure newValue, ..}