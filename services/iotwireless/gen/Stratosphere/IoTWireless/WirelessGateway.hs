module Stratosphere.IoTWireless.WirelessGateway (
        module Exports, WirelessGateway(..), mkWirelessGateway
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessGateway.LoRaWANGatewayProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data WirelessGateway
  = WirelessGateway {description :: (Prelude.Maybe (Value Prelude.Text)),
                     lastUplinkReceivedAt :: (Prelude.Maybe (Value Prelude.Text)),
                     loRaWAN :: LoRaWANGatewayProperty,
                     name :: (Prelude.Maybe (Value Prelude.Text)),
                     tags :: (Prelude.Maybe [Tag]),
                     thingArn :: (Prelude.Maybe (Value Prelude.Text)),
                     thingName :: (Prelude.Maybe (Value Prelude.Text))}
mkWirelessGateway :: LoRaWANGatewayProperty -> WirelessGateway
mkWirelessGateway loRaWAN
  = WirelessGateway
      {loRaWAN = loRaWAN, description = Prelude.Nothing,
       lastUplinkReceivedAt = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing, thingArn = Prelude.Nothing,
       thingName = Prelude.Nothing}
instance ToResourceProperties WirelessGateway where
  toResourceProperties WirelessGateway {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessGateway",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["LoRaWAN" JSON..= loRaWAN]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "LastUplinkReceivedAt" Prelude.<$> lastUplinkReceivedAt,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Tags" Prelude.<$> tags,
                               (JSON..=) "ThingArn" Prelude.<$> thingArn,
                               (JSON..=) "ThingName" Prelude.<$> thingName]))}
instance JSON.ToJSON WirelessGateway where
  toJSON WirelessGateway {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["LoRaWAN" JSON..= loRaWAN]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "LastUplinkReceivedAt" Prelude.<$> lastUplinkReceivedAt,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Tags" Prelude.<$> tags,
                  (JSON..=) "ThingArn" Prelude.<$> thingArn,
                  (JSON..=) "ThingName" Prelude.<$> thingName])))
instance Property "Description" WirelessGateway where
  type PropertyType "Description" WirelessGateway = Value Prelude.Text
  set newValue WirelessGateway {..}
    = WirelessGateway {description = Prelude.pure newValue, ..}
instance Property "LastUplinkReceivedAt" WirelessGateway where
  type PropertyType "LastUplinkReceivedAt" WirelessGateway = Value Prelude.Text
  set newValue WirelessGateway {..}
    = WirelessGateway
        {lastUplinkReceivedAt = Prelude.pure newValue, ..}
instance Property "LoRaWAN" WirelessGateway where
  type PropertyType "LoRaWAN" WirelessGateway = LoRaWANGatewayProperty
  set newValue WirelessGateway {..}
    = WirelessGateway {loRaWAN = newValue, ..}
instance Property "Name" WirelessGateway where
  type PropertyType "Name" WirelessGateway = Value Prelude.Text
  set newValue WirelessGateway {..}
    = WirelessGateway {name = Prelude.pure newValue, ..}
instance Property "Tags" WirelessGateway where
  type PropertyType "Tags" WirelessGateway = [Tag]
  set newValue WirelessGateway {..}
    = WirelessGateway {tags = Prelude.pure newValue, ..}
instance Property "ThingArn" WirelessGateway where
  type PropertyType "ThingArn" WirelessGateway = Value Prelude.Text
  set newValue WirelessGateway {..}
    = WirelessGateway {thingArn = Prelude.pure newValue, ..}
instance Property "ThingName" WirelessGateway where
  type PropertyType "ThingName" WirelessGateway = Value Prelude.Text
  set newValue WirelessGateway {..}
    = WirelessGateway {thingName = Prelude.pure newValue, ..}