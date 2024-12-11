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
  = Cluster {accessConfig :: (Prelude.Maybe AccessConfigProperty),
             bootstrapSelfManagedAddons :: (Prelude.Maybe (Value Prelude.Bool)),
             computeConfig :: (Prelude.Maybe ComputeConfigProperty),
             encryptionConfig :: (Prelude.Maybe [EncryptionConfigProperty]),
             kubernetesNetworkConfig :: (Prelude.Maybe KubernetesNetworkConfigProperty),
             logging :: (Prelude.Maybe LoggingProperty),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             outpostConfig :: (Prelude.Maybe OutpostConfigProperty),
             remoteNetworkConfig :: (Prelude.Maybe RemoteNetworkConfigProperty),
             resourcesVpcConfig :: ResourcesVpcConfigProperty,
             roleArn :: (Value Prelude.Text),
             storageConfig :: (Prelude.Maybe StorageConfigProperty),
             tags :: (Prelude.Maybe [Tag]),
             upgradePolicy :: (Prelude.Maybe UpgradePolicyProperty),
             version :: (Prelude.Maybe (Value Prelude.Text)),
             zonalShiftConfig :: (Prelude.Maybe ZonalShiftConfigProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster ::
  ResourcesVpcConfigProperty -> Value Prelude.Text -> Cluster
mkCluster resourcesVpcConfig roleArn
  = Cluster
      {resourcesVpcConfig = resourcesVpcConfig, roleArn = roleArn,
       accessConfig = Prelude.Nothing,
       bootstrapSelfManagedAddons = Prelude.Nothing,
       computeConfig = Prelude.Nothing,
       encryptionConfig = Prelude.Nothing,
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
                               (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
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
                  (JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
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
instance Property "EncryptionConfig" Cluster where
  type PropertyType "EncryptionConfig" Cluster = [EncryptionConfigProperty]
  set newValue Cluster {..}
    = Cluster {encryptionConfig = Prelude.pure newValue, ..}
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