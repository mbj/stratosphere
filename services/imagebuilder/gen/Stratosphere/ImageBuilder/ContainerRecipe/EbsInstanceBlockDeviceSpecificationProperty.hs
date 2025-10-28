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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html>
    EbsInstanceBlockDeviceSpecificationProperty {haddock_workaround_ :: (),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-deleteontermination>
                                                 deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-encrypted>
                                                 encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-iops>
                                                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-kmskeyid>
                                                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-snapshotid>
                                                 snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-throughput>
                                                 throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-volumesize>
                                                 volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification.html#cfn-imagebuilder-containerrecipe-ebsinstanceblockdevicespecification-volumetype>
                                                 volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsInstanceBlockDeviceSpecificationProperty ::
  EbsInstanceBlockDeviceSpecificationProperty
mkEbsInstanceBlockDeviceSpecificationProperty
  = EbsInstanceBlockDeviceSpecificationProperty
      {haddock_workaround_ = (), deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, snapshotId = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsInstanceBlockDeviceSpecificationProperty where
  toResourceProperties
    EbsInstanceBlockDeviceSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::ContainerRecipe.EbsInstanceBlockDeviceSpecification",
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