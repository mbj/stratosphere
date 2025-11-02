module Stratosphere.IoTWireless.FuotaTask (
        module Exports, FuotaTask(..), mkFuotaTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.FuotaTask.LoRaWANProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data FuotaTask
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html>
    FuotaTask {haddock_workaround_ :: (),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-associatemulticastgroup>
               associateMulticastGroup :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-associatewirelessdevice>
               associateWirelessDevice :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-description>
               description :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-disassociatemulticastgroup>
               disassociateMulticastGroup :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-disassociatewirelessdevice>
               disassociateWirelessDevice :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-firmwareupdateimage>
               firmwareUpdateImage :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-firmwareupdaterole>
               firmwareUpdateRole :: (Value Prelude.Text),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-lorawan>
               loRaWAN :: LoRaWANProperty,
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-name>
               name :: (Prelude.Maybe (Value Prelude.Text)),
               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-fuotatask.html#cfn-iotwireless-fuotatask-tags>
               tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFuotaTask ::
  Value Prelude.Text
  -> Value Prelude.Text -> LoRaWANProperty -> FuotaTask
mkFuotaTask firmwareUpdateImage firmwareUpdateRole loRaWAN
  = FuotaTask
      {haddock_workaround_ = (),
       firmwareUpdateImage = firmwareUpdateImage,
       firmwareUpdateRole = firmwareUpdateRole, loRaWAN = loRaWAN,
       associateMulticastGroup = Prelude.Nothing,
       associateWirelessDevice = Prelude.Nothing,
       description = Prelude.Nothing,
       disassociateMulticastGroup = Prelude.Nothing,
       disassociateWirelessDevice = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties FuotaTask where
  toResourceProperties FuotaTask {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::FuotaTask",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["FirmwareUpdateImage" JSON..= firmwareUpdateImage,
                            "FirmwareUpdateRole" JSON..= firmwareUpdateRole,
                            "LoRaWAN" JSON..= loRaWAN]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociateMulticastGroup"
                                 Prelude.<$> associateMulticastGroup,
                               (JSON..=) "AssociateWirelessDevice"
                                 Prelude.<$> associateWirelessDevice,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "DisassociateMulticastGroup"
                                 Prelude.<$> disassociateMulticastGroup,
                               (JSON..=) "DisassociateWirelessDevice"
                                 Prelude.<$> disassociateWirelessDevice,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON FuotaTask where
  toJSON FuotaTask {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["FirmwareUpdateImage" JSON..= firmwareUpdateImage,
               "FirmwareUpdateRole" JSON..= firmwareUpdateRole,
               "LoRaWAN" JSON..= loRaWAN]
              (Prelude.catMaybes
                 [(JSON..=) "AssociateMulticastGroup"
                    Prelude.<$> associateMulticastGroup,
                  (JSON..=) "AssociateWirelessDevice"
                    Prelude.<$> associateWirelessDevice,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "DisassociateMulticastGroup"
                    Prelude.<$> disassociateMulticastGroup,
                  (JSON..=) "DisassociateWirelessDevice"
                    Prelude.<$> disassociateWirelessDevice,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssociateMulticastGroup" FuotaTask where
  type PropertyType "AssociateMulticastGroup" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {associateMulticastGroup = Prelude.pure newValue, ..}
instance Property "AssociateWirelessDevice" FuotaTask where
  type PropertyType "AssociateWirelessDevice" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {associateWirelessDevice = Prelude.pure newValue, ..}
instance Property "Description" FuotaTask where
  type PropertyType "Description" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {description = Prelude.pure newValue, ..}
instance Property "DisassociateMulticastGroup" FuotaTask where
  type PropertyType "DisassociateMulticastGroup" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask
        {disassociateMulticastGroup = Prelude.pure newValue, ..}
instance Property "DisassociateWirelessDevice" FuotaTask where
  type PropertyType "DisassociateWirelessDevice" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask
        {disassociateWirelessDevice = Prelude.pure newValue, ..}
instance Property "FirmwareUpdateImage" FuotaTask where
  type PropertyType "FirmwareUpdateImage" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {firmwareUpdateImage = newValue, ..}
instance Property "FirmwareUpdateRole" FuotaTask where
  type PropertyType "FirmwareUpdateRole" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {firmwareUpdateRole = newValue, ..}
instance Property "LoRaWAN" FuotaTask where
  type PropertyType "LoRaWAN" FuotaTask = LoRaWANProperty
  set newValue FuotaTask {..} = FuotaTask {loRaWAN = newValue, ..}
instance Property "Name" FuotaTask where
  type PropertyType "Name" FuotaTask = Value Prelude.Text
  set newValue FuotaTask {..}
    = FuotaTask {name = Prelude.pure newValue, ..}
instance Property "Tags" FuotaTask where
  type PropertyType "Tags" FuotaTask = [Tag]
  set newValue FuotaTask {..}
    = FuotaTask {tags = Prelude.pure newValue, ..}