module Stratosphere.WorkspacesInstances.Volume (
        module Exports, Volume(..), mkVolume
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.Volume.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Volume
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html>
    Volume {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-availabilityzone>
            availabilityZone :: (Value Prelude.Text),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-encrypted>
            encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-iops>
            iops :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-kmskeyid>
            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-sizeingb>
            sizeInGB :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-snapshotid>
            snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-tagspecifications>
            tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-throughput>
            throughput :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-workspacesinstances-volume.html#cfn-workspacesinstances-volume-volumetype>
            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolume :: Value Prelude.Text -> Volume
mkVolume availabilityZone
  = Volume
      {haddock_workaround_ = (), availabilityZone = availabilityZone,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, sizeInGB = Prelude.Nothing,
       snapshotId = Prelude.Nothing, tagSpecifications = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeType = Prelude.Nothing}
instance ToResourceProperties Volume where
  toResourceProperties Volume {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::Volume",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZone" JSON..= availabilityZone]
                           (Prelude.catMaybes
                              [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                               (JSON..=) "Iops" Prelude.<$> iops,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SizeInGB" Prelude.<$> sizeInGB,
                               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "Throughput" Prelude.<$> throughput,
                               (JSON..=) "VolumeType" Prelude.<$> volumeType]))}
instance JSON.ToJSON Volume where
  toJSON Volume {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZone" JSON..= availabilityZone]
              (Prelude.catMaybes
                 [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                  (JSON..=) "Iops" Prelude.<$> iops,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SizeInGB" Prelude.<$> sizeInGB,
                  (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "Throughput" Prelude.<$> throughput,
                  (JSON..=) "VolumeType" Prelude.<$> volumeType])))
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
instance Property "SizeInGB" Volume where
  type PropertyType "SizeInGB" Volume = Value Prelude.Integer
  set newValue Volume {..}
    = Volume {sizeInGB = Prelude.pure newValue, ..}
instance Property "SnapshotId" Volume where
  type PropertyType "SnapshotId" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {snapshotId = Prelude.pure newValue, ..}
instance Property "TagSpecifications" Volume where
  type PropertyType "TagSpecifications" Volume = [TagSpecificationProperty]
  set newValue Volume {..}
    = Volume {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Throughput" Volume where
  type PropertyType "Throughput" Volume = Value Prelude.Integer
  set newValue Volume {..}
    = Volume {throughput = Prelude.pure newValue, ..}
instance Property "VolumeType" Volume where
  type PropertyType "VolumeType" Volume = Value Prelude.Text
  set newValue Volume {..}
    = Volume {volumeType = Prelude.pure newValue, ..}