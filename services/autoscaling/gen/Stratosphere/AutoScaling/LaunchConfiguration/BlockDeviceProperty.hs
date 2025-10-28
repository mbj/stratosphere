module Stratosphere.AutoScaling.LaunchConfiguration.BlockDeviceProperty (
        BlockDeviceProperty(..), mkBlockDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data BlockDeviceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html>
    BlockDeviceProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-deleteontermination>
                         deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-encrypted>
                         encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-iops>
                         iops :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-snapshotid>
                         snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-throughput>
                         throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-volumesize>
                         volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-launchconfiguration-blockdevice.html#cfn-autoscaling-launchconfiguration-blockdevice-volumetype>
                         volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkBlockDeviceProperty :: BlockDeviceProperty
mkBlockDeviceProperty
  = BlockDeviceProperty
      {haddock_workaround_ = (), deleteOnTermination = Prelude.Nothing,
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