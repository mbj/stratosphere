module Stratosphere.MSK.Cluster.EBSStorageInfoProperty (
        module Exports, EBSStorageInfoProperty(..),
        mkEBSStorageInfoProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.ProvisionedThroughputProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EBSStorageInfoProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html>
    EBSStorageInfoProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html#cfn-msk-cluster-ebsstorageinfo-provisionedthroughput>
                            provisionedThroughput :: (Prelude.Maybe ProvisionedThroughputProperty),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-ebsstorageinfo.html#cfn-msk-cluster-ebsstorageinfo-volumesize>
                            volumeSize :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEBSStorageInfoProperty :: EBSStorageInfoProperty
mkEBSStorageInfoProperty
  = EBSStorageInfoProperty
      {haddock_workaround_ = (), provisionedThroughput = Prelude.Nothing,
       volumeSize = Prelude.Nothing}
instance ToResourceProperties EBSStorageInfoProperty where
  toResourceProperties EBSStorageInfoProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.EBSStorageInfo",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ProvisionedThroughput"
                              Prelude.<$> provisionedThroughput,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize])}
instance JSON.ToJSON EBSStorageInfoProperty where
  toJSON EBSStorageInfoProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ProvisionedThroughput"
                 Prelude.<$> provisionedThroughput,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize]))
instance Property "ProvisionedThroughput" EBSStorageInfoProperty where
  type PropertyType "ProvisionedThroughput" EBSStorageInfoProperty = ProvisionedThroughputProperty
  set newValue EBSStorageInfoProperty {..}
    = EBSStorageInfoProperty
        {provisionedThroughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" EBSStorageInfoProperty where
  type PropertyType "VolumeSize" EBSStorageInfoProperty = Value Prelude.Integer
  set newValue EBSStorageInfoProperty {..}
    = EBSStorageInfoProperty {volumeSize = Prelude.pure newValue, ..}