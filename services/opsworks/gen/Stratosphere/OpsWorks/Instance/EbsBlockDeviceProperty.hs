module Stratosphere.OpsWorks.Instance.EbsBlockDeviceProperty (
        EbsBlockDeviceProperty(..), mkEbsBlockDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsBlockDeviceProperty
  = EbsBlockDeviceProperty {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                            iops :: (Prelude.Maybe (Value Prelude.Integer)),
                            snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                            volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsBlockDeviceProperty :: EbsBlockDeviceProperty
mkEbsBlockDeviceProperty
  = EbsBlockDeviceProperty
      {deleteOnTermination = Prelude.Nothing, iops = Prelude.Nothing,
       snapshotId = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsBlockDeviceProperty where
  toResourceProperties EbsBlockDeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::OpsWorks::Instance.EbsBlockDevice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON EbsBlockDeviceProperty where
  toJSON EbsBlockDeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "DeleteOnTermination" EbsBlockDeviceProperty where
  type PropertyType "DeleteOnTermination" EbsBlockDeviceProperty = Value Prelude.Bool
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Iops" EbsBlockDeviceProperty where
  type PropertyType "Iops" EbsBlockDeviceProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {iops = Prelude.pure newValue, ..}
instance Property "SnapshotId" EbsBlockDeviceProperty where
  type PropertyType "SnapshotId" EbsBlockDeviceProperty = Value Prelude.Text
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {snapshotId = Prelude.pure newValue, ..}
instance Property "VolumeSize" EbsBlockDeviceProperty where
  type PropertyType "VolumeSize" EbsBlockDeviceProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EbsBlockDeviceProperty where
  type PropertyType "VolumeType" EbsBlockDeviceProperty = Value Prelude.Text
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {volumeType = Prelude.pure newValue, ..}