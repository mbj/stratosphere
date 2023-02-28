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
  = WirelessDevice {description :: (Prelude.Maybe (Value Prelude.Text)),
                    destinationName :: (Value Prelude.Text),
                    lastUplinkReceivedAt :: (Prelude.Maybe (Value Prelude.Text)),
                    loRaWAN :: (Prelude.Maybe LoRaWANDeviceProperty),
                    name :: (Prelude.Maybe (Value Prelude.Text)),
                    tags :: (Prelude.Maybe [Tag]),
                    thingArn :: (Prelude.Maybe (Value Prelude.Text)),
                    type' :: (Value Prelude.Text)}
mkWirelessDevice ::
  Value Prelude.Text -> Value Prelude.Text -> WirelessDevice
mkWirelessDevice destinationName type'
  = WirelessDevice
      {destinationName = destinationName, type' = type',
       description = Prelude.Nothing,
       lastUplinkReceivedAt = Prelude.Nothing, loRaWAN = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing,
       thingArn = Prelude.Nothing}
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