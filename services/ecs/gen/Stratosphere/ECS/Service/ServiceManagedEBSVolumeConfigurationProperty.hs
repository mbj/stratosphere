module Stratosphere.ECS.Service.ServiceManagedEBSVolumeConfigurationProperty (
        module Exports, ServiceManagedEBSVolumeConfigurationProperty(..),
        mkServiceManagedEBSVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.EBSTagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceManagedEBSVolumeConfigurationProperty
  = ServiceManagedEBSVolumeConfigurationProperty {encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                                                  filesystemType :: (Prelude.Maybe (Value Prelude.Text)),
                                                  iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                  roleArn :: (Value Prelude.Text),
                                                  sizeInGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                                                  tagSpecifications :: (Prelude.Maybe [EBSTagSpecificationProperty]),
                                                  throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceManagedEBSVolumeConfigurationProperty ::
  Value Prelude.Text -> ServiceManagedEBSVolumeConfigurationProperty
mkServiceManagedEBSVolumeConfigurationProperty roleArn
  = ServiceManagedEBSVolumeConfigurationProperty
      {roleArn = roleArn, encrypted = Prelude.Nothing,
       filesystemType = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, sizeInGiB = Prelude.Nothing,
       snapshotId = Prelude.Nothing, tagSpecifications = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeType = Prelude.Nothing}
instance ToResourceProperties ServiceManagedEBSVolumeConfigurationProperty where
  toResourceProperties
    ServiceManagedEBSVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceManagedEBSVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                               (JSON..=) "FilesystemType" Prelude.<$> filesystemType,
                               (JSON..=) "Iops" Prelude.<$> iops,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB,
                               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "Throughput" Prelude.<$> throughput,
                               (JSON..=) "VolumeType" Prelude.<$> volumeType]))}
instance JSON.ToJSON ServiceManagedEBSVolumeConfigurationProperty where
  toJSON ServiceManagedEBSVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                  (JSON..=) "FilesystemType" Prelude.<$> filesystemType,
                  (JSON..=) "Iops" Prelude.<$> iops,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB,
                  (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "Throughput" Prelude.<$> throughput,
                  (JSON..=) "VolumeType" Prelude.<$> volumeType])))
instance Property "Encrypted" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Encrypted" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Bool
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {encrypted = Prelude.pure newValue, ..}
instance Property "FilesystemType" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "FilesystemType" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {filesystemType = Prelude.pure newValue, ..}
instance Property "Iops" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Iops" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "KmsKeyId" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "RoleArn" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "RoleArn" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {roleArn = newValue, ..}
instance Property "SizeInGiB" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "SizeInGiB" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {sizeInGiB = Prelude.pure newValue, ..}
instance Property "SnapshotId" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "SnapshotId" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {snapshotId = Prelude.pure newValue, ..}
instance Property "TagSpecifications" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "TagSpecifications" ServiceManagedEBSVolumeConfigurationProperty = [EBSTagSpecificationProperty]
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Throughput" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Throughput" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {throughput = Prelude.pure newValue, ..}
instance Property "VolumeType" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "VolumeType" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {volumeType = Prelude.pure newValue, ..}