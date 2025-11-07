module Stratosphere.ECS.Service.ServiceManagedEBSVolumeConfigurationProperty (
        module Exports, ServiceManagedEBSVolumeConfigurationProperty(..),
        mkServiceManagedEBSVolumeConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.Service.EBSTagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceManagedEBSVolumeConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html>
    ServiceManagedEBSVolumeConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-encrypted>
                                                  encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-filesystemtype>
                                                  filesystemType :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-iops>
                                                  iops :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-kmskeyid>
                                                  kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-rolearn>
                                                  roleArn :: (Value Prelude.Text),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-sizeingib>
                                                  sizeInGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-snapshotid>
                                                  snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-tagspecifications>
                                                  tagSpecifications :: (Prelude.Maybe [EBSTagSpecificationProperty]),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-throughput>
                                                  throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-volumeinitializationrate>
                                                  volumeInitializationRate :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-service-servicemanagedebsvolumeconfiguration.html#cfn-ecs-service-servicemanagedebsvolumeconfiguration-volumetype>
                                                  volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceManagedEBSVolumeConfigurationProperty ::
  Value Prelude.Text -> ServiceManagedEBSVolumeConfigurationProperty
mkServiceManagedEBSVolumeConfigurationProperty roleArn
  = ServiceManagedEBSVolumeConfigurationProperty
      {haddock_workaround_ = (), roleArn = roleArn,
       encrypted = Prelude.Nothing, filesystemType = Prelude.Nothing,
       iops = Prelude.Nothing, kmsKeyId = Prelude.Nothing,
       sizeInGiB = Prelude.Nothing, snapshotId = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, throughput = Prelude.Nothing,
       volumeInitializationRate = Prelude.Nothing,
       volumeType = Prelude.Nothing}
instance ToResourceProperties ServiceManagedEBSVolumeConfigurationProperty where
  toResourceProperties
    ServiceManagedEBSVolumeConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::Service.ServiceManagedEBSVolumeConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["RoleArn" JSON..= roleArn]
                           (Prelude.catMaybes
                              [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                               (JSON..=) "FilesystemType" Prelude.<$> filesystemType,
                               (JSON..=) "Iops" Prelude.<$> iops,
                               (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB,
                               (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "Throughput" Prelude.<$> throughput,
                               (JSON..=) "VolumeInitializationRate"
                                 Prelude.<$> volumeInitializationRate,
                               (JSON..=) "VolumeType" Prelude.<$> volumeType]))}
instance JSON.ToJSON ServiceManagedEBSVolumeConfigurationProperty where
  toJSON ServiceManagedEBSVolumeConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["RoleArn" JSON..= roleArn]
              (Prelude.catMaybes
                 [(JSON..=) "Encrypted" Prelude.<$> encrypted,
                  (JSON..=) "FilesystemType" Prelude.<$> filesystemType,
                  (JSON..=) "Iops" Prelude.<$> iops,
                  (JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "SizeInGiB" Prelude.<$> sizeInGiB,
                  (JSON..=) "SnapshotId" Prelude.<$> snapshotId,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "Throughput" Prelude.<$> throughput,
                  (JSON..=) "VolumeInitializationRate"
                    Prelude.<$> volumeInitializationRate,
                  (JSON..=) "VolumeType" Prelude.<$> volumeType])))
instance Property "Encrypted" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Encrypted" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Bool
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {encrypted = Prelude.pure newValue, ..}
instance Property "FilesystemType" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "FilesystemType" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {filesystemType = Prelude.pure newValue, ..}
instance Property "Iops" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Iops" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {iops = Prelude.pure newValue, ..}
instance Property "KmsKeyId" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "KmsKeyId" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "RoleArn" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "RoleArn" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {roleArn = newValue, ..}
instance Property "SizeInGiB" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "SizeInGiB" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {sizeInGiB = Prelude.pure newValue, ..}
instance Property "SnapshotId" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "SnapshotId" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {snapshotId = Prelude.pure newValue, ..}
instance Property "TagSpecifications" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "TagSpecifications" ServiceManagedEBSVolumeConfigurationProperty = [EBSTagSpecificationProperty]
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Throughput" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "Throughput" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {throughput = Prelude.pure newValue, ..}
instance Property "VolumeInitializationRate" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "VolumeInitializationRate" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Integer
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {volumeInitializationRate = Prelude.pure newValue, ..}
instance Property "VolumeType" ServiceManagedEBSVolumeConfigurationProperty where
  type PropertyType "VolumeType" ServiceManagedEBSVolumeConfigurationProperty = Value Prelude.Text
  set newValue ServiceManagedEBSVolumeConfigurationProperty {..}
    = ServiceManagedEBSVolumeConfigurationProperty
        {volumeType = Prelude.pure newValue, ..}