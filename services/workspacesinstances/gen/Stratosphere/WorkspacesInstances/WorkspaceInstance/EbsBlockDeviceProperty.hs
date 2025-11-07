module Stratosphere.WorkspacesInstances.WorkspaceInstance.EbsBlockDeviceProperty (
        EbsBlockDeviceProperty(..), mkEbsBlockDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsBlockDeviceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html>
    EbsBlockDeviceProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-encrypted>
                            encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-iops>
                            iops :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-kmskeyid>
                            kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-throughput>
                            throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-volumesize>
                            volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-ebsblockdevice.html#cfn-workspacesinstances-workspaceinstance-ebsblockdevice-volumetype>
                            volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsBlockDeviceProperty :: EbsBlockDeviceProperty
mkEbsBlockDeviceProperty
  = EbsBlockDeviceProperty
      {haddock_workaround_ = (), encrypted = Prelude.Nothing,
       iops = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       throughput = Prelude.Nothing, volumeSize = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties EbsBlockDeviceProperty where
  toResourceProperties EbsBlockDeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.EbsBlockDevice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                            (JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "Throughput" Prelude.<$> throughput,
                            (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
                            (JSON..=) "VolumeType" Prelude.<$> volumeType])}
instance JSON.ToJSON EbsBlockDeviceProperty where
  toJSON EbsBlockDeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Encrypted" Prelude.<$> encrypted,
               (JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "Throughput" Prelude.<$> throughput,
               (JSON..=) "VolumeSize" Prelude.<$> volumeSize,
               (JSON..=) "VolumeType" Prelude.<$> volumeType]))
instance Property "Encrypted" EbsBlockDeviceProperty where
  type PropertyType "Encrypted" EbsBlockDeviceProperty = Value Prelude.Bool
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {encrypted = Prelude.pure newValue, ..}
instance Property "Iops" EbsBlockDeviceProperty where
  type PropertyType "Iops" EbsBlockDeviceProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" EbsBlockDeviceProperty where
  type PropertyType "KmsKeyId" EbsBlockDeviceProperty = Value Prelude.Text
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {kmsKeyId = Prelude.pure newValue, ..}
instance Property "Throughput" EbsBlockDeviceProperty where
  type PropertyType "Throughput" EbsBlockDeviceProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {throughput = Prelude.pure newValue, ..}
instance Property "VolumeSize" EbsBlockDeviceProperty where
  type PropertyType "VolumeSize" EbsBlockDeviceProperty = Value Prelude.Integer
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EbsBlockDeviceProperty where
  type PropertyType "VolumeType" EbsBlockDeviceProperty = Value Prelude.Text
  set newValue EbsBlockDeviceProperty {..}
    = EbsBlockDeviceProperty {volumeType = Prelude.pure newValue, ..}