module Stratosphere.DSQL.Cluster (
        module Exports, Cluster(..), mkCluster
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DSQL.Cluster.MultiRegionPropertiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Cluster
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dsql-cluster.html>
    Cluster {haddock_workaround_ :: (),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dsql-cluster.html#cfn-dsql-cluster-deletionprotectionenabled>
             deletionProtectionEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dsql-cluster.html#cfn-dsql-cluster-kmsencryptionkey>
             kmsEncryptionKey :: (Prelude.Maybe (Value Prelude.Text)),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dsql-cluster.html#cfn-dsql-cluster-multiregionproperties>
             multiRegionProperties :: (Prelude.Maybe MultiRegionPropertiesProperty),
             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-dsql-cluster.html#cfn-dsql-cluster-tags>
             tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCluster :: Cluster
mkCluster
  = Cluster
      {haddock_workaround_ = (),
       deletionProtectionEnabled = Prelude.Nothing,
       kmsEncryptionKey = Prelude.Nothing,
       multiRegionProperties = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Cluster where
  toResourceProperties Cluster {..}
    = ResourceProperties
        {awsType = "AWS::DSQL::Cluster", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeletionProtectionEnabled"
                              Prelude.<$> deletionProtectionEnabled,
                            (JSON..=) "KmsEncryptionKey" Prelude.<$> kmsEncryptionKey,
                            (JSON..=) "MultiRegionProperties"
                              Prelude.<$> multiRegionProperties,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON Cluster where
  toJSON Cluster {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeletionProtectionEnabled"
                 Prelude.<$> deletionProtectionEnabled,
               (JSON..=) "KmsEncryptionKey" Prelude.<$> kmsEncryptionKey,
               (JSON..=) "MultiRegionProperties"
                 Prelude.<$> multiRegionProperties,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "DeletionProtectionEnabled" Cluster where
  type PropertyType "DeletionProtectionEnabled" Cluster = Value Prelude.Bool
  set newValue Cluster {..}
    = Cluster {deletionProtectionEnabled = Prelude.pure newValue, ..}
instance Property "KmsEncryptionKey" Cluster where
  type PropertyType "KmsEncryptionKey" Cluster = Value Prelude.Text
  set newValue Cluster {..}
    = Cluster {kmsEncryptionKey = Prelude.pure newValue, ..}
instance Property "MultiRegionProperties" Cluster where
  type PropertyType "MultiRegionProperties" Cluster = MultiRegionPropertiesProperty
  set newValue Cluster {..}
    = Cluster {multiRegionProperties = Prelude.pure newValue, ..}
instance Property "Tags" Cluster where
  type PropertyType "Tags" Cluster = [Tag]
  set newValue Cluster {..}
    = Cluster {tags = Prelude.pure newValue, ..}