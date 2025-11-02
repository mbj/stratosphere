module Stratosphere.EKS.Cluster.StorageConfigProperty (
        module Exports, StorageConfigProperty(..), mkStorageConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EKS.Cluster.BlockStorageProperty as Exports
import Stratosphere.ResourceProperties
data StorageConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-storageconfig.html>
    StorageConfigProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-eks-cluster-storageconfig.html#cfn-eks-cluster-storageconfig-blockstorage>
                           blockStorage :: (Prelude.Maybe BlockStorageProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageConfigProperty :: StorageConfigProperty
mkStorageConfigProperty
  = StorageConfigProperty
      {haddock_workaround_ = (), blockStorage = Prelude.Nothing}
instance ToResourceProperties StorageConfigProperty where
  toResourceProperties StorageConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::EKS::Cluster.StorageConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockStorage" Prelude.<$> blockStorage])}
instance JSON.ToJSON StorageConfigProperty where
  toJSON StorageConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockStorage" Prelude.<$> blockStorage]))
instance Property "BlockStorage" StorageConfigProperty where
  type PropertyType "BlockStorage" StorageConfigProperty = BlockStorageProperty
  set newValue StorageConfigProperty {..}
    = StorageConfigProperty {blockStorage = Prelude.pure newValue, ..}