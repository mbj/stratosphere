module Stratosphere.EKS.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.AccessConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ComputeConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.EncryptionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.KubernetesNetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.LoggingProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.OutpostConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.RemoteNetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ResourcesVpcConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.StorageConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.UpgradePolicyProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ZonalShiftConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-accessconfig>
             accessConfig :: (Prelude.Maybe AccessConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-bootstrapselfmanagedaddons>
             bootstrapSelfManagedAddons :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-computeconfig>
             computeConfig :: (Prelude.Maybe ComputeConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-deletionprotection>
             deletionProtection :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-encryptionconfig>
             encryptionConfig :: (Prelude.Maybe [EncryptionConfigProperty]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-force>
             force :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-kubernetesnetworkconfig>
             kubernetesNetworkConfig :: (Prelude.Maybe KubernetesNetworkConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-logging>
             logging :: (Prelude.Maybe LoggingProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-name>
             name :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-outpostconfig>
             outpostConfig :: (Prelude.Maybe OutpostConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-remotenetworkconfig>
             remoteNetworkConfig :: (Prelude.Maybe RemoteNetworkConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-resourcesvpcconfig>
             resourcesVpcConfig :: ResourcesVpcConfigProperty,
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-rolearn>
             roleArn :: (Value Prelude.Text),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-storageconfig>
             storageConfig :: (Prelude.Maybe StorageConfigProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-tags>
             tags :: (Prelude.Maybe [Tag]),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-upgradepolicy>
             upgradePolicy :: (Prelude.Maybe UpgradePolicyProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-version>
             version :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-eks-cluster.html#cfn-eks-cluster-zonalshiftconfig>
             zonalShiftConfig :: (Prelude.Maybe ZonalShiftConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  ResourcesVpcConfigProperty -> Value Prelude.Text -> Cluster
mkCluster resourcesVpcConfig roleArn
  = Cluster
      {haddock_workaround_ = (), resourcesVpcConfig = resourcesVpcConfig,
       roleArn = roleArn, accessConfig = Prelude.Nothing,
       bootstrapSelfManagedAddons = Prelude.Nothing,
       computeConfig = Prelude.Nothing,
       deletionProtection = Prelude.Nothing,
       encryptionConfig = Prelude.Nothing, force = Prelude.Nothing,
       kubernetesNetworkConfig = Prelude.Nothing,
       logging = Prelude.Nothing, name = Prelude.Nothing,
       outpostConfig = Prelude.Nothing,
       remoteNetworkConfig = Prelude.Nothing,
       storageConfig = Prelude.Nothing, tags = Prelude.Nothing,
       upgradePolicy = Prelude.Nothing, version = Prelude.Nothing,
       zonalShiftConfig = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourcesVpcConfig" JSON..= resourcesVpcConfig,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "AccessConfig" Prelude.<$> accessConfig,
                               (JSON..=) "BootstrapSelfManagedAddons"
                                 Prelude.<$> bootstrapSelfManagedAddons,
                               (JSON..=) "ComputeConfig" Prelude.<$> computeConfig,
                               (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                               (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                               (JSON..=) "Force" Prelude.<$> force,
                               (JSON..=) "KubernetesNetworkConfig"
                                 Prelude.<$> kubernetesNetworkConfig,
                               (JSON..=) "Logging" Prelude.<$> logging,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OutpostConfig" Prelude.<$> outpostConfig,
                               (JSON..=) "RemoteNetworkConfig" Prelude.<$> remoteNetworkConfig,
                               (JSON..=) "StorageConfig" Prelude.<$> storageConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "UpgradePolicy" Prelude.<$> upgradePolicy,
                               (JSON..=) "Version" Prelude.<$> version,
                               (JSON..=) "ZonalShiftConfig" Prelude.<$> zonalShiftConfig]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourcesVpcConfig" JSON..= resourcesVpcConfig,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "AccessConfig" Prelude.<$> accessConfig,
                  (JSON..=) "BootstrapSelfManagedAddons"
                    Prelude.<$> bootstrapSelfManagedAddons,
                  (JSON..=) "ComputeConfig" Prelude.<$> computeConfig,
                  (JSON..=) "DeletionProtection" Prelude.<$> deletionProtection,
                  (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                  (JSON..=) "Force" Prelude.<$> force,
                  (JSON..=) "KubernetesNetworkConfig"
                    Prelude.<$> kubernetesNetworkConfig,
                  (JSON..=) "Logging" Prelude.<$> logging,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OutpostConfig" Prelude.<$> outpostConfig,
                  (JSON..=) "RemoteNetworkConfig" Prelude.<$> remoteNetworkConfig,
                  (JSON..=) "StorageConfig" Prelude.<$> storageConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "UpgradePolicy" Prelude.<$> upgradePolicy,
                  (JSON..=) "Version" Prelude.<$> version,
                  (JSON..=) "ZonalShiftConfig" Prelude.<$> zonalShiftConfig])))
instance Property "AccessConfig" Cluster where
  type PropertyType "AccessConfig" Cluster = AccessConfigProperty
  set newValue Cluster {..}
    = Cluster {accessConfig = Prelude.pure newValue, ..}
instance Property "BootstrapSelfManagedAddons" Cluster where
  type PropertyType "BootstrapSelfManagedAddons" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {bootstrapSelfManagedAddons = Prelude.pure newValue, ..}
instance Property "ComputeConfig" Cluster where
  type PropertyType "ComputeConfig" Cluster = ComputeConfigProperty
  set newValue Cluster {..}
    = Cluster {computeConfig = Prelude.pure newValue, ..}
instance Property "DeletionProtection" Cluster where
  type PropertyType "DeletionProtection" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {deletionProtection = Prelude.pure newValue, ..}
instance Property "EncryptionConfig" Cluster where
  type PropertyType "EncryptionConfig" Cluster = [EncryptionConfigProperty]
  set newValue Cluster {..}
    = Cluster {encryptionConfig = Prelude.pure newValue, ..}
instance Property "Force" Cluster where
  type PropertyType "Force" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {force = Prelude.pure newValue, ..}
instance Property "KubernetesNetworkConfig" Cluster where
  type PropertyType "KubernetesNetworkConfig" Cluster = KubernetesNetworkConfigProperty
  set newValue Cluster {..}
    = Cluster {kubernetesNetworkConfig = Prelude.pure newValue, ..}
instance Property "Logging" Cluster where
  type PropertyType "Logging" Cluster = LoggingProperty
  set newValue Cluster {..}
    = Cluster {logging = Prelude.pure newValue, ..}
instance Property "Name" Cluster where
  type PropertyType "Name" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {name = Prelude.pure newValue, ..}
instance Property "OutpostConfig" Cluster where
  type PropertyType "OutpostConfig" Cluster = OutpostConfigProperty
  set newValue Cluster {..}
    = Cluster {outpostConfig = Prelude.pure newValue, ..}
instance Property "RemoteNetworkConfig" Cluster where
  type PropertyType "RemoteNetworkConfig" Cluster = RemoteNetworkConfigProperty
  set newValue Cluster {..}
    = Cluster {remoteNetworkConfig = Prelude.pure newValue, ..}
instance Property "ResourcesVpcConfig" Cluster where
  type PropertyType "ResourcesVpcConfig" Cluster = ResourcesVpcConfigProperty
  set newValue Cluster {..}
    = Cluster {resourcesVpcConfig = newValue, ..}
instance Property "RoleArn" Cluster where
  type PropertyType "RoleArn" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {roleArn = newValue, ..}
instance Property "StorageConfig" Cluster where
  type PropertyType "StorageConfig" Cluster = StorageConfigProperty
  set newValue Cluster {..}
    = Cluster {storageConfig = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "UpgradePolicy" Cluster where
  type PropertyType "UpgradePolicy" Cluster = UpgradePolicyProperty
  set newValue Cluster {..}
    = Cluster {upgradePolicy = Prelude.pure newValue, ..}
instance Property "Version" Cluster where
  type PropertyType "Version" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {version = Prelude.pure newValue, ..}
instance Property "ZonalShiftConfig" Cluster where
  type PropertyType "ZonalShiftConfig" Cluster = ZonalShiftConfigProperty
  set newValue Cluster {..}
    = Cluster {zonalShiftConfig = Prelude.pure newValue, ..}