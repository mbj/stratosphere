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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-deviceprofile.html>
    DeviceProfile {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-deviceprofile.html#cfn-iotwireless-deviceprofile-lorawan>
                   loRaWAN :: (Prelude.Maybe LoRaWANDeviceProfileProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-deviceprofile.html#cfn-iotwireless-deviceprofile-name>
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-iotwireless-deviceprofile.html#cfn-iotwireless-deviceprofile-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceProfile :: DeviceProfile
mkDeviceProfile
  = DeviceProfile
      {haddock_workaround_ = (), loRaWAN = Prelude.Nothing,
       name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties DeviceProfile where
  toResourceProperties DeviceProfile {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::DeviceProfile",
         supportsTags = Prelude.True,
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