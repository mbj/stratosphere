module Stratosphere.EC2.VolumeAttachment (
        VolumeAttachment(..), mkVolumeAttachment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VolumeAttachment
  = VolumeAttachment {device :: (Value Prelude.Text),
                      instanceId :: (Value Prelude.Text),
                      volumeId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVolumeAttachment ::
  Value Prelude.Text
  -> Value Prelude.Text -> Value Prelude.Text -> VolumeAttachment
mkVolumeAttachment device instanceId volumeId
  = VolumeAttachment
      {device = device, instanceId = instanceId, volumeId = volumeId}
instance ToResourceProperties VolumeAttachment where
  toResourceProperties VolumeAttachment {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VolumeAttachment",
         supportsTags = Prelude.False,
         properties = ["Device" JSON..= device,
                       "InstanceId" JSON..= instanceId, "VolumeId" JSON..= volumeId]}
instance JSON.ToJSON VolumeAttachment where
  toJSON VolumeAttachment {..}
    = JSON.object
        ["Device" JSON..= device, "InstanceId" JSON..= instanceId,
         "VolumeId" JSON..= volumeId]
instance Property "Device" VolumeAttachment where
  type PropertyType "Device" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {device = newValue, ..}
instance Property "InstanceId" VolumeAttachment where
  type PropertyType "InstanceId" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {instanceId = newValue, ..}
instance Property "VolumeId" VolumeAttachment where
  type PropertyType "VolumeId" VolumeAttachment = Value Prelude.Text
  set newValue VolumeAttachment {..}
    = VolumeAttachment {volumeId = newValue, ..}