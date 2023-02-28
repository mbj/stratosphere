module Stratosphere.EKS.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.EncryptionConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.KubernetesNetworkConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.LoggingProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.OutpostConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EKS.Cluster.ResourcesVpcConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = Cluster {encryptionConfig :: (Prelude.Maybe [EncryptionConfigProperty]),
             kubernetesNetworkConfig :: (Prelude.Maybe KubernetesNetworkConfigProperty),
             logging :: (Prelude.Maybe LoggingProperty),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             outpostConfig :: (Prelude.Maybe OutpostConfigProperty),
             resourcesVpcConfig :: ResourcesVpcConfigProperty,
             roleArn :: (Value Prelude.Text),
             tags :: (Prelude.Maybe [Tag]),
             version :: (Prelude.Maybe (Value Prelude.Text))}
mkCluster ::
  ResourcesVpcConfigProperty -> Value Prelude.Text -> Cluster
mkCluster resourcesVpcConfig roleArn
  = Cluster
      {resourcesVpcConfig = resourcesVpcConfig, roleArn = roleArn,
       encryptionConfig = Prelude.Nothing,
       kubernetesNetworkConfig = Prelude.Nothing,
       logging = Prelude.Nothing, name = Prelude.Nothing,
       outpostConfig = Prelude.Nothing, tags = Prelude.Nothing,
       version = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ResourcesVpcConfig" JSON..= resourcesVpcConfig,
                            "RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                               (JSON..=) "KubernetesNetworkConfig"
                                 Prelude.<$> kubernetesNetworkConfig,
                               (JSON..=) "Logging" Prelude.<$> logging,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "OutpostConfig" Prelude.<$> outpostConfig,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Version" Prelude.<$> version]))}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ResourcesVpcConfig" JSON..= resourcesVpcConfig,
               "RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "EncryptionConfig" Prelude.<$> encryptionConfig,
                  (JSON..=) "KubernetesNetworkConfig"
                    Prelude.<$> kubernetesNetworkConfig,
                  (JSON..=) "Logging" Prelude.<$> logging,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "OutpostConfig" Prelude.<$> outpostConfig,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Version" Prelude.<$> version])))
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
instance Property "ResourcesVpcConfig" Cluster where
  type PropertyType "ResourcesVpcConfig" Cluster = ResourcesVpcConfigProperty
  set newValue Cluster {..}
    = Cluster {resourcesVpcConfig = newValue, ..}
instance Property "RoleArn" Cluster where
  type PropertyType "RoleArn" Cluster = Value Prelude.Text
  set newValue Cluster {..} = Cluster {roleArn = newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}
instance Property "Version" Cluster where
  type PropertyType "Version" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {version = Prelude.pure newValue, ..}