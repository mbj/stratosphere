module Stratosphere.Deadline.Fleet.Ec2EbsVolumeProperty (
        Ec2EbsVolumeProperty(..), mkEc2EbsVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ec2EbsVolumeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-ec2ebsvolume.html>
    Ec2EbsVolumeProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-ec2ebsvolume.html#cfn-deadline-fleet-ec2ebsvolume-iops>
                          iops :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-ec2ebsvolume.html#cfn-deadline-fleet-ec2ebsvolume-sizegib>
                          sizeGiB :: (Prelude.Maybe (Value Prelude.Integer)),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-ec2ebsvolume.html#cfn-deadline-fleet-ec2ebsvolume-throughputmib>
                          throughputMiB :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkEc2EbsVolumeProperty :: Ec2EbsVolumeProperty
mkEc2EbsVolumeProperty
  = Ec2EbsVolumeProperty
      {haddock_workaround_ = (), iops = Prelude.Nothing,
       sizeGiB = Prelude.Nothing, throughputMiB = Prelude.Nothing}
instance ToResourceProperties Ec2EbsVolumeProperty where
  toResourceProperties Ec2EbsVolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.Ec2EbsVolume",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Iops" Prelude.<$> iops,
                            (JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
                            (JSON..=) "ThroughputMiB" Prelude.<$> throughputMiB])}
instance JSON.ToJSON Ec2EbsVolumeProperty where
  toJSON Ec2EbsVolumeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Iops" Prelude.<$> iops,
               (JSON..=) "SizeGiB" Prelude.<$> sizeGiB,
               (JSON..=) "ThroughputMiB" Prelude.<$> throughputMiB]))
instance Property "Iops" Ec2EbsVolumeProperty where
  type PropertyType "Iops" Ec2EbsVolumeProperty = Value Prelude.Integer
  set newValue Ec2EbsVolumeProperty {..}
    = Ec2EbsVolumeProperty {iops = Prelude.pure newValue, ..}
instance Property "SizeGiB" Ec2EbsVolumeProperty where
  type PropertyType "SizeGiB" Ec2EbsVolumeProperty = Value Prelude.Integer
  set newValue Ec2EbsVolumeProperty {..}
    = Ec2EbsVolumeProperty {sizeGiB = Prelude.pure newValue, ..}
instance Property "ThroughputMiB" Ec2EbsVolumeProperty where
  type PropertyType "ThroughputMiB" Ec2EbsVolumeProperty = Value Prelude.Integer
  set newValue Ec2EbsVolumeProperty {..}
    = Ec2EbsVolumeProperty {throughputMiB = Prelude.pure newValue, ..}