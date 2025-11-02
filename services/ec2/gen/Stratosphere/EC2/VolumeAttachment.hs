module Stratosphere.EC2.VolumeAttachment (
        VolumeAttachment(..), mkVolumeAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeAttachment
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volumeattachment.html>
    VolumeAttachment {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volumeattachment.html#cfn-ec2-volumeattachment-device>
                      device :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volumeattachment.html#cfn-ec2-volumeattachment-instanceid>
                      instanceId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-volumeattachment.html#cfn-ec2-volumeattachment-volumeid>
                      volumeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeAttachment ::
  Value Prelude.Text -> Value Prelude.Text -> VolumeAttachment
mkVolumeAttachment instanceId volumeId
  = VolumeAttachment
      {haddock_workaround_ = (), instanceId = instanceId,
       volumeId = volumeId, device = Prelude.Nothing}
instance ToResourceProperties VolumeAttachment where
  toResourceProperties VolumeAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VolumeAttachment",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["InstanceId" JSON..= instanceId, "VolumeId" JSON..= volumeId]
                           (Prelude.catMaybes [(JSON..=) "Device" Prelude.<$> device]))}
instance JSON.ToJSON VolumeAttachment where
  toJSON VolumeAttachment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["InstanceId" JSON..= instanceId, "VolumeId" JSON..= volumeId]
              (Prelude.catMaybes [(JSON..=) "Device" Prelude.<$> device])))
instance Property "Device" VolumeAttachment where
  type PropertyType "Device" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {device = Prelude.pure newValue, ..}
instance Property "InstanceId" VolumeAttachment where
  type PropertyType "InstanceId" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {instanceId = newValue, ..}
instance Property "VolumeId" VolumeAttachment where
  type PropertyType "VolumeId" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {volumeId = newValue, ..}