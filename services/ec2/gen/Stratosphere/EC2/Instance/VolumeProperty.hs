module Stratosphere.EC2.Instance.VolumeProperty (
        VolumeProperty(..), mkVolumeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-volume.html>
    VolumeProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-volume.html#cfn-ec2-instance-volume-device>
                    device :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-volume.html#cfn-ec2-instance-volume-volumeid>
                    volumeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeProperty ::
  Value Prelude.Text -> Value Prelude.Text -> VolumeProperty
mkVolumeProperty device volumeId
  = VolumeProperty
      {haddock_workaround_ = (), device = device, volumeId = volumeId}
instance ToResourceProperties VolumeProperty where
  toResourceProperties VolumeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.Volume",
         supportsTags = Prelude.False,
         properties = ["Device" JSON..= device,
                       "VolumeId" JSON..= volumeId]}
instance JSON.ToJSON VolumeProperty where
  toJSON VolumeProperty {..}
    = JSON.object
        ["Device" JSON..= device, "VolumeId" JSON..= volumeId]
instance Property "Device" VolumeProperty where
  type PropertyType "Device" VolumeProperty = Value Prelude.Text
  set newValue VolumeProperty {..}
    = VolumeProperty {device = newValue, ..}
instance Property "VolumeId" VolumeProperty where
  type PropertyType "VolumeId" VolumeProperty = Value Prelude.Text
  set newValue VolumeProperty {..}
    = VolumeProperty {volumeId = newValue, ..}