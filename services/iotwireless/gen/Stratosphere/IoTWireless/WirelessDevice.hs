module Stratosphere.IoTWireless.WirelessDevice (
        module Exports, WirelessDevice(..), mkWirelessDevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.LoRaWANDeviceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WirelessDevice
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html>
    WirelessDevice {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-destinationname>
                    destinationName :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-lastuplinkreceivedat>
                    lastUplinkReceivedAt :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-lorawan>
                    loRaWAN :: (Prelude.Maybe LoRaWANDeviceProperty),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-name>
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-positioning>
                    positioning :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-tags>
                    tags :: (Prelude.Maybe [Tag]),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-thingarn>
                    thingArn :: (Prelude.Maybe (Value Prelude.Text)),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-wirelessdevice.html#cfn-iotwireless-wirelessdevice-type>
                    type' :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWirelessDevice ::
  Value Prelude.Text -> Value Prelude.Text -> WirelessDevice
mkWirelessDevice destinationName type'
  = WirelessDevice
      {destinationName = destinationName, type' = type',
       description = Prelude.Nothing,
       lastUplinkReceivedAt = Prelude.Nothing, loRaWAN = Prelude.Nothing,
       name = Prelude.Nothing, positioning = Prelude.Nothing,
       tags = Prelude.Nothing, thingArn = Prelude.Nothing}
instance ToResourceProperties WirelessDevice where
  toResourceProperties WirelessDevice {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationName" JSON..= destinationName, "Type" JSON..= type']
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LastUplinkReceivedAt" Prelude.<$> lastUplinkReceivedAt,
                               (JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Positioning" Prelude.<$> positioning,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThingArn" Prelude.<$> thingArn]))}
instance JSON.ToJSON WirelessDevice where
  toJSON WirelessDevice {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationName" JSON..= destinationName, "Type" JSON..= type']
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LastUplinkReceivedAt" Prelude.<$> lastUplinkReceivedAt,
                  (JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Positioning" Prelude.<$> positioning,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThingArn" Prelude.<$> thingArn])))
instance Property "Description" WirelessDevice where
  type PropertyType "Description" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {description = Prelude.pure newValue, ..}
instance Property "DestinationName" WirelessDevice where
  type PropertyType "DestinationName" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {destinationName = newValue, ..}
instance Property "LastUplinkReceivedAt" WirelessDevice where
  type PropertyType "LastUplinkReceivedAt" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {lastUplinkReceivedAt = Prelude.pure newValue, ..}
instance Property "LoRaWAN" WirelessDevice where
  type PropertyType "LoRaWAN" WirelessDevice = LoRaWANDeviceProperty
  set newValue WirelessDevice {..}
    = WirelessDevice {loRaWAN = Prelude.pure newValue, ..}
instance Property "Name" WirelessDevice where
  type PropertyType "Name" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {name = Prelude.pure newValue, ..}
instance Property "Positioning" WirelessDevice where
  type PropertyType "Positioning" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {positioning = Prelude.pure newValue, ..}
instance Property "Tags" WirelessDevice where
  type PropertyType "Tags" WirelessDevice = [Tag]
  set newValue WirelessDevice {..}
    = WirelessDevice {tags = Prelude.pure newValue, ..}
instance Property "ThingArn" WirelessDevice where
  type PropertyType "ThingArn" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {thingArn = Prelude.pure newValue, ..}
instance Property "Type" WirelessDevice where
  type PropertyType "Type" WirelessDevice = Value Prelude.Text
  set newValue WirelessDevice {..}
    = WirelessDevice {type' = newValue, ..}