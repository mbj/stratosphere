module Stratosphere.EC2.LaunchTemplate.EbsProperty (
        EbsProperty(..), mkEbsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EbsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html>
    EbsProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-deleteontermination>
                 deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-encrypted>
                 encrypted :: (Prelude.Maybe (Value Prelude.Bool)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-iops>
                 iops :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-kmskeyid>
                 kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-snapshotid>
                 snapshotId :: (Prelude.Maybe (Value Prelude.Text)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-throughput>
                 throughput :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-volumeinitializationrate>
                 volumeInitializationRate :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-volumesize>
                 volumeSize :: (Prelude.Maybe (Value Prelude.Integer)),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ebs.html#cfn-ec2-launchtemplate-ebs-volumetype>
                 volumeType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEbsProperty :: EbsProperty
mkEbsProperty
  = EbsProperty
      {haddock_workaround_ = (), deleteOnTermination = Prelude.Nothing,
       encrypted = Prelude.Nothing, iops = Prelude.Nothing,
       kmsKeyId = Prelude.Nothing, snapshotId = Prelude.Nothing,
       throughput = Prelude.Nothing,
       volumeInitializationRate = Prelude.Nothing,
       volumeSize = Prelude.Nothing, volumeType = Prelude.Nothing}
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
                            (JSON..=) "VolumeInitializationRate"
                              Prelude.<$> volumeInitializationRate,
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
               (JSON..=) "VolumeInitializationRate"
                 Prelude.<$> volumeInitializationRate,
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
instance Property "VolumeInitializationRate" EbsProperty where
  type PropertyType "VolumeInitializationRate" EbsProperty = Value Prelude.Integer
  set newValue EbsProperty {..}
    = EbsProperty
        {volumeInitializationRate = Prelude.pure newValue, ..}
instance Property "VolumeSize" EbsProperty where
  type PropertyType "VolumeSize" EbsProperty = Value Prelude.Integer
  set newValue EbsProperty {..}
    = EbsProperty {volumeSize = Prelude.pure newValue, ..}
instance Property "VolumeType" EbsProperty where
  type PropertyType "VolumeType" EbsProperty = Value Prelude.Text
  set newValue EbsProperty {..}
    = EbsProperty {volumeType = Prelude.pure newValue, ..}