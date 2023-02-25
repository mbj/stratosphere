module Stratosphere.ImageBuilder.ContainerRecipe.EbsInstanceBlockDeviceSpecificationProperty (
        EbsInstanceBlockDeviceSpecificationProperty(..),
        mkEbsInstanceBlockDeviceSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsInstanceBlockDeviceSpecificationProperty
  = EbsInstanceBlockDeviceSpecificationProperty {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 volumeType :: (Prelude.Maybe (Value Prelude.Text))}
mkEbsInstanceBlockDeviceSpecificationProperty ::
  EbsInstanceBlockDeviceSpecificationProperty
mkEbsInstanceBlockDeviceSpecificationProperty
  = EbsInstanceBlockDeviceSpecificationProperty
      {deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, snapshotId = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsInstanceBlockDeviceSpecificationProperty where
  toResourceProperties
    EbsInstanceBlockDeviceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.EbsInstanceBlockDeviceSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Encrypted" Prelude.<$> encrypted,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                            (JSON..=) "Throughput" Prelude.<$> throughput,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON EbsInstanceBlockDeviceSpecificationProperty where
  toJSON EbsInstanceBlockDeviceSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
               (JSON..=) "Throughput" Prelude.<$> throughput,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "DeleteOnTermination" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "DeleteOnTermination" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Bool
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Encrypted" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "Encrypted" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Bool
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "Iops" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Integer
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "KmsKeyId" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Text
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "SnapshotId" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "SnapshotId" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Text
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {snapshotId = Prelude.pure newValue, ..}
instance Property "Throughput" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "Throughput" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Integer
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {throughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "VolumeSize" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Integer
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EbsInstanceBlockDeviceSpecificationProperty where
  type PropertyType "VolumeType" EbsInstanceBlockDeviceSpecificationProperty = Value Prelude.Text
  set newValue EbsInstanceBlockDeviceSpecificationProperty {..}
    = EbsInstanceBlockDeviceSpecificationProperty
        {volumeType = Prelude.pure newValue, ..}