module Stratosphere.IoTWireless.WirelessDevice.AbpV11Property (
        module Exports, AbpV11Property(..), mkAbpV11Property
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.SessionKeysAbpV11Property as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AbpV11Property
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv11.html>
    AbpV11Property {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv11.html#cfn-iotwireless-wirelessdevice-abpv11-devaddr>
                    devAddr :: (Value Prelude.Text),
                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv11.html#cfn-iotwireless-wirelessdevice-abpv11-sessionkeys>
                    sessionKeys :: SessionKeysAbpV11Property}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAbpV11Property ::
  Value Prelude.Text -> SessionKeysAbpV11Property -> AbpV11Property
mkAbpV11Property devAddr sessionKeys
  = AbpV11Property {devAddr = devAddr, sessionKeys = sessionKeys}
instance ToResourceProperties AbpV11Property where
  toResourceProperties AbpV11Property {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.AbpV11",
         supportsTags = Prelude.False,
         properties = ["DevAddr" JSON..= devAddr,
                       "SessionKeys" JSON..= sessionKeys]}
instance JSON.ToJSON AbpV11Property where
  toJSON AbpV11Property {..}
    = JSON.object
        ["DevAddr" JSON..= devAddr, "SessionKeys" JSON..= sessionKeys]
instance Property "DevAddr" AbpV11Property where
  type PropertyType "DevAddr" AbpV11Property = Value Prelude.Text
  set newValue AbpV11Property {..}
    = AbpV11Property {devAddr = newValue, ..}
instance Property "SessionKeys" AbpV11Property where
  type PropertyType "SessionKeys" AbpV11Property = SessionKeysAbpV11Property
  set newValue AbpV11Property {..}
    = AbpV11Property {sessionKeys = newValue, ..}