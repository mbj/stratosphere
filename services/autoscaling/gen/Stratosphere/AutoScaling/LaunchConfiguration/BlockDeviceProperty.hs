module Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceProperty (
        BlockDeviceProperty(..), mkBlockDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceProperty
  = BlockDeviceProperty {deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                         encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                         iops :: (Prelude.Maybe (Value Prelude.Integer)),
                         snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                         throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                         volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                         volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockDeviceProperty :: BlockDeviceProperty
mkBlockDeviceProperty
  = BlockDeviceProperty
      {deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       snapshotId = Prelude.Nothing, throughput = Prelude.Nothing,
       volumeSize = Prelude.Nothing, volumeType = Prelude.Nothing}
instance ToResourceProperties BlockDeviceProperty where
  toResourceProperties BlockDeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::LaunchConfiguration.BlockDevice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Encrypted" Prelude.<$> encrypted,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                            (JSON..=) "Throughput" Prelude.<$> throughput,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON BlockDeviceProperty where
  toJSON BlockDeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
               (JSON..=) "Throughput" Prelude.<$> throughput,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "DeleteOnTermination" BlockDeviceProperty where
  type PropertyType "DeleteOnTermination" BlockDeviceProperty = Value Prelude.Bool
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Encrypted" BlockDeviceProperty where
  type PropertyType "Encrypted" BlockDeviceProperty = Value Prelude.Bool
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" BlockDeviceProperty where
  type PropertyType "Iops" BlockDeviceProperty = Value Prelude.Integer
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {iops = Prelude.pure newValue, ..}
instance Property "SnapshotId" BlockDeviceProperty where
  type PropertyType "SnapshotId" BlockDeviceProperty = Value Prelude.Text
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {snapshotId = Prelude.pure newValue, ..}
instance Property "Throughput" BlockDeviceProperty where
  type PropertyType "Throughput" BlockDeviceProperty = Value Prelude.Integer
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {throughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" BlockDeviceProperty where
  type PropertyType "VolumeSize" BlockDeviceProperty = Value Prelude.Integer
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" BlockDeviceProperty where
  type PropertyType "VolumeType" BlockDeviceProperty = Value Prelude.Text
  set newValue BlockDeviceProperty {..}
    = BlockDeviceProperty {volumeType = Prelude.pure newValue, ..}