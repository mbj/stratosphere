module Stratosphere.EC2.SpotFleet.EbsBlockDeviceProperty (
        EbsBlockDeviceProperty(..), mkEbsBlockDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsBlockDeviceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html>
    EbsBlockDeviceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-deleteontermination>
                            deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-encrypted>
                            encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-iops>
                            iops :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-snapshotid>
                            snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-volumesize>
                            volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-ebsblockdevice.html#cfn-ec2-spotfleet-ebsblockdevice-volumetype>
                            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsBlockDeviceProperty :: EbsBlockDeviceProperty
mkEbsBlockDeviceProperty
  = EbsBlockDeviceProperty
      {haddock_workaround_ = (), deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       snapshotId = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsBlockDeviceProperty where
  toResourceProperties EbsBlockDeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.EbsBlockDevice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Encrypted" Prelude.<$> encrypted,
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
               (JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "DeleteOnTermination" EbsBlockDeviceProperty where
  type PropertyType "DeleteOnTermination" EbsBlockDeviceProperty = Value Prelude.Bool
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Encrypted" EbsBlockDeviceProperty where
  type PropertyType "Encrypted" EbsBlockDeviceProperty = Value Prelude.Bool
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {encrypted = Prelude.pure newValue, ..}
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