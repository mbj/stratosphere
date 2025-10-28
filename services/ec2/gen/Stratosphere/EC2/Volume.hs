module Stratosphere.EC2.Volume (
        Volume(..), mkVolume
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Volume
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html>
    Volume {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-autoenableio>
            autoEnableIO :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-availabilityzone>
            availabilityZone :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-encrypted>
            encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-iops>
            iops :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-kmskeyid>
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-multiattachenabled>
            multiAttachEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-outpostarn>
            outpostArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-size>
            size :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-snapshotid>
            snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-throughput>
            throughput :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volume.html#cfn-ec2-volume-volumetype>
            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolume :: Value Prelude.Text -> Volume
mkVolume availabilityZone
  = Volume
      {haddock_workaround_ = (), availabilityZone = availabilityZone,
       autoEnableIO = Prelude.Nothing, encrypted = Prelude.Nothing,
       iops = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       multiAttachEnabled = Prelude.Nothing, outpostArn = Prelude.Nothing,
       size = Prelude.Nothing, snapshotId = Prelude.Nothing,
       tags = Prelude.Nothing, throughput = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties Volume where
  toResourceProperties Volume {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Volume", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZone" JSON..= availabilityZone]
                           (Prelude.catMaybes
                              [(JSON..=) "AutoEnableIO" Prelude.<$> autoEnableIO,
                               (JSON..=) "Encrypted" Prelude.<$> encrypted,
                               (JSON..=) "Iops" Prelude.<$> iops,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "MultiAttachEnabled" Prelude.<$> multiAttachEnabled,
                               (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                               (JSON..=) "Size" Prelude.<$> size,
                               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "Throughput" Prelude.<$> throughput,
                               (JSON..=) "VolumeType" Prelude.<$> volumeType]))}
instance JSON.ToJSON Volume where
  toJSON Volume {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZone" JSON..= availabilityZone]
              (Prelude.catMaybes
                 [(JSON..=) "AutoEnableIO" Prelude.<$> autoEnableIO,
                  (JSON..=) "Encrypted" Prelude.<$> encrypted,
                  (JSON..=) "Iops" Prelude.<$> iops,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "MultiAttachEnabled" Prelude.<$> multiAttachEnabled,
                  (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                  (JSON..=) "Size" Prelude.<$> size,
                  (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "Throughput" Prelude.<$> throughput,
                  (JSON..=) "VolumeType" Prelude.<$> volumeType])))
instance Property "AutoEnableIO" Volume where
  type PropertyType "AutoEnableIO" Volume = Value Prelude.Bool
  set newValue Volume {..}
    = Volume {autoEnableIO = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Volume where
  type PropertyType "AvailabilityZone" Volume = Value Prelude.Text
  set newValue Volume {..} = Volume {availabilityZone = newValue, ..}
instance Property "Encrypted" Volume where
  type PropertyType "Encrypted" Volume = Value Prelude.Bool
  set newValue Volume {..}
    = Volume {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" Volume where
  type PropertyType "Iops" Volume = Value Prelude.Integer
  set newValue Volume {..}
    = Volume {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" Volume where
  type PropertyType "KmsKeyId" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {kmsKeyId = Prelude.pure newValue, ..}
instance Property "MultiAttachEnabled" Volume where
  type PropertyType "MultiAttachEnabled" Volume = Value Prelude.Bool
  set newValue Volume {..}
    = Volume {multiAttachEnabled = Prelude.pure newValue, ..}
instance Property "OutpostArn" Volume where
  type PropertyType "OutpostArn" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {outpostArn = Prelude.pure newValue, ..}
instance Property "Size" Volume where
  type PropertyType "Size" Volume = Value Prelude.Integer
  set newValue Volume {..}
    = Volume {size = Prelude.pure newValue, ..}
instance Property "SnapshotId" Volume where
  type PropertyType "SnapshotId" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {snapshotId = Prelude.pure newValue, ..}
instance Property "Tags" Volume where
  type PropertyType "Tags" Volume = [Tag]
  set newValue Volume {..}
    = Volume {tags = Prelude.pure newValue, ..}
instance Property "Throughput" Volume where
  type PropertyType "Throughput" Volume = Value Prelude.Integer
  set newValue Volume {..}
    = Volume {throughput = Prelude.pure newValue, ..}
instance Property "VolumeType" Volume where
  type PropertyType "VolumeType" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {volumeType = Prelude.pure newValue, ..}