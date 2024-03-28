module Stratosphere.IoTWireless.WirelessDevice.LoRaWANDeviceProperty (
        module Exports, LoRaWANDeviceProperty(..), mkLoRaWANDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.AbpV10xProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.AbpV11Property as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.FPortsProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.OtaaV10xProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.OtaaV11Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoRaWANDeviceProperty
  = LoRaWANDeviceProperty {abpV10x :: (Prelude.Maybe AbpV10xProperty),
                           abpV11 :: (Prelude.Maybe AbpV11Property),
                           devEui :: (Prelude.Maybe (Value Prelude.Text)),
                           deviceProfileId :: (Prelude.Maybe (Value Prelude.Text)),
                           fPorts :: (Prelude.Maybe FPortsProperty),
                           otaaV10x :: (Prelude.Maybe OtaaV10xProperty),
                           otaaV11 :: (Prelude.Maybe OtaaV11Property),
                           serviceProfileId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoRaWANDeviceProperty :: LoRaWANDeviceProperty
mkLoRaWANDeviceProperty
  = LoRaWANDeviceProperty
      {abpV10x = Prelude.Nothing, abpV11 = Prelude.Nothing,
       devEui = Prelude.Nothing, deviceProfileId = Prelude.Nothing,
       fPorts = Prelude.Nothing, otaaV10x = Prelude.Nothing,
       otaaV11 = Prelude.Nothing, serviceProfileId = Prelude.Nothing}
instance ToResourceProperties LoRaWANDeviceProperty where
  toResourceProperties LoRaWANDeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.LoRaWANDevice",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AbpV10x" Prelude.<$> abpV10x,
                            (JSON..=) "AbpV11" Prelude.<$> abpV11,
                            (JSON..=) "DevEui" Prelude.<$> devEui,
                            (JSON..=) "DeviceProfileId" Prelude.<$> deviceProfileId,
                            (JSON..=) "FPorts" Prelude.<$> fPorts,
                            (JSON..=) "OtaaV10x" Prelude.<$> otaaV10x,
                            (JSON..=) "OtaaV11" Prelude.<$> otaaV11,
                            (JSON..=) "ServiceProfileId" Prelude.<$> serviceProfileId])}
instance JSON.ToJSON LoRaWANDeviceProperty where
  toJSON LoRaWANDeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AbpV10x" Prelude.<$> abpV10x,
               (JSON..=) "AbpV11" Prelude.<$> abpV11,
               (JSON..=) "DevEui" Prelude.<$> devEui,
               (JSON..=) "DeviceProfileId" Prelude.<$> deviceProfileId,
               (JSON..=) "FPorts" Prelude.<$> fPorts,
               (JSON..=) "OtaaV10x" Prelude.<$> otaaV10x,
               (JSON..=) "OtaaV11" Prelude.<$> otaaV11,
               (JSON..=) "ServiceProfileId" Prelude.<$> serviceProfileId]))
instance Property "AbpV10x" LoRaWANDeviceProperty where
  type PropertyType "AbpV10x" LoRaWANDeviceProperty = AbpV10xProperty
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {abpV10x = Prelude.pure newValue, ..}
instance Property "AbpV11" LoRaWANDeviceProperty where
  type PropertyType "AbpV11" LoRaWANDeviceProperty = AbpV11Property
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {abpV11 = Prelude.pure newValue, ..}
instance Property "DevEui" LoRaWANDeviceProperty where
  type PropertyType "DevEui" LoRaWANDeviceProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {devEui = Prelude.pure newValue, ..}
instance Property "DeviceProfileId" LoRaWANDeviceProperty where
  type PropertyType "DeviceProfileId" LoRaWANDeviceProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty
        {deviceProfileId = Prelude.pure newValue, ..}
instance Property "FPorts" LoRaWANDeviceProperty where
  type PropertyType "FPorts" LoRaWANDeviceProperty = FPortsProperty
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {fPorts = Prelude.pure newValue, ..}
instance Property "OtaaV10x" LoRaWANDeviceProperty where
  type PropertyType "OtaaV10x" LoRaWANDeviceProperty = OtaaV10xProperty
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {otaaV10x = Prelude.pure newValue, ..}
instance Property "OtaaV11" LoRaWANDeviceProperty where
  type PropertyType "OtaaV11" LoRaWANDeviceProperty = OtaaV11Property
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty {otaaV11 = Prelude.pure newValue, ..}
instance Property "ServiceProfileId" LoRaWANDeviceProperty where
  type PropertyType "ServiceProfileId" LoRaWANDeviceProperty = Value Prelude.Text
  set newValue LoRaWANDeviceProperty {..}
    = LoRaWANDeviceProperty
        {serviceProfileId = Prelude.pure newValue, ..}