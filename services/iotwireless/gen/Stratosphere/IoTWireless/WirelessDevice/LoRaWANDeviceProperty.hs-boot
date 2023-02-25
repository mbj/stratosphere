module Stratosphere.IoTWireless.WirelessDevice.LoRaWANDeviceProperty where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.ResourceProperties
data LoRaWANDeviceProperty :: Prelude.Type
instance ToResourceProperties LoRaWANDeviceProperty
instance JSON.ToJSON LoRaWANDeviceProperty