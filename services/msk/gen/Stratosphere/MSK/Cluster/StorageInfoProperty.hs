module Stratosphere.MSK.Cluster.StorageInfoProperty (
        module Exports, StorageInfoProperty(..), mkStorageInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.EBSStorageInfoProperty as Exports
import Stratosphere.ResourceProperties
data StorageInfoProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html>
    StorageInfoProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-storageinfo.html#cfn-msk-cluster-storageinfo-ebsstorageinfo>
                         eBSStorageInfo :: (Prelude.Maybe EBSStorageInfoProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStorageInfoProperty :: StorageInfoProperty
mkStorageInfoProperty
  = StorageInfoProperty {eBSStorageInfo = Prelude.Nothing}
instance ToResourceProperties StorageInfoProperty where
  toResourceProperties StorageInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.StorageInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EBSStorageInfo" Prelude.<$> eBSStorageInfo])}
instance JSON.ToJSON StorageInfoProperty where
  toJSON StorageInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EBSStorageInfo" Prelude.<$> eBSStorageInfo]))
instance Property "EBSStorageInfo" StorageInfoProperty where
  type PropertyType "EBSStorageInfo" StorageInfoProperty = EBSStorageInfoProperty
  set newValue StorageInfoProperty {}
    = StorageInfoProperty {eBSStorageInfo = Prelude.pure newValue, ..}