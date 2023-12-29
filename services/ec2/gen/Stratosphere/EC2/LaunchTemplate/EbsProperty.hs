module Stratosphere.EC2.LaunchTemplate.EbsProperty (
        EbsProperty(..), mkEbsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsProperty
  = EbsProperty {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                 encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                 throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                 volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                 volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsProperty :: EbsProperty
mkEbsProperty
  = EbsProperty
      {deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, snapshotId = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsProperty where
  toResourceProperties EbsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Ebs",
         supportsTags = Prelude.False,
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
instance JSON.ToJSON EbsProperty where
  toJSON EbsProperty {..}
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
instance Property "DeleteOnTermination" EbsProperty where
  type PropertyType "DeleteOnTermination" EbsProperty = Value Prelude.Bool
  set newValue EbsProperty {..}
    = EbsProperty {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Encrypted" EbsProperty where
  type PropertyType "Encrypted" EbsProperty = Value Prelude.Bool
  set newValue EbsProperty {..}
    = EbsProperty {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" EbsProperty where
  type PropertyType "Iops" EbsProperty = Value Prelude.Integer
  set newValue EbsProperty {..}
    = EbsProperty {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EbsProperty where
  type PropertyType "KmsKeyId" EbsProperty = Value Prelude.Text
  set newValue EbsProperty {..}
    = EbsProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "SnapshotId" EbsProperty where
  type PropertyType "SnapshotId" EbsProperty = Value Prelude.Text
  set newValue EbsProperty {..}
    = EbsProperty {snapshotId = Prelude.pure newValue, ..}
instance Property "Throughput" EbsProperty where
  type PropertyType "Throughput" EbsProperty = Value Prelude.Integer
  set newValue EbsProperty {..}
    = EbsProperty {throughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" EbsProperty where
  type PropertyType "VolumeSize" EbsProperty = Value Prelude.Integer
  set newValue EbsProperty {..}
    = EbsProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EbsProperty where
  type PropertyType "VolumeType" EbsProperty = Value Prelude.Text
  set newValue EbsProperty {..}
    = EbsProperty {volumeType = Prelude.pure newValue, ..}