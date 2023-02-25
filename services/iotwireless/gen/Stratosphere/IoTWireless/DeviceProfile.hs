module Stratosphere.IoTWireless.DeviceProfile (
        module Exports, DeviceProfile(..), mkDeviceProfile
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.DeviceProfile.LoRaWANDeviceProfileProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeviceProfile
  = DeviceProfile {loRaWAN :: (Prelude.Maybe LoRaWANDeviceProfileProperty),
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
mkDeviceProfile :: DeviceProfile
mkDeviceProfile
  = DeviceProfile
      {loRaWAN = Prelude.Nothing, name = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DeviceProfile where
  toResourceProperties DeviceProfile {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::DeviceProfile",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DeviceProfile where
  toJSON DeviceProfile {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "LoRaWAN" Prelude.<$> loRaWAN,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "LoRaWAN" DeviceProfile where
  type PropertyType "LoRaWAN" DeviceProfile = LoRaWANDeviceProfileProperty
  set newValue DeviceProfile {..}
    = DeviceProfile {loRaWAN = Prelude.pure newValue, ..}
instance Property "Name" DeviceProfile where
  type PropertyType "Name" DeviceProfile = Value Prelude.Text
  set newValue DeviceProfile {..}
    = DeviceProfile {name = Prelude.pure newValue, ..}
instance Property "Tags" DeviceProfile where
  type PropertyType "Tags" DeviceProfile = [Tag]
  set newValue DeviceProfile {..}
    = DeviceProfile {tags = Prelude.pure newValue, ..}