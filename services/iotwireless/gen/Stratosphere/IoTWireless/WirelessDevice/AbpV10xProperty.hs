module Stratosphere.IoTWireless.WirelessDevice.AbpV10xProperty (
        module Exports, AbpV10xProperty(..), mkAbpV10xProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTWireless.WirelessDevice.SessionKeysAbpV10xProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AbpV10xProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv10x.html>
    AbpV10xProperty {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv10x.html#cfn-iotwireless-wirelessdevice-abpv10x-devaddr>
                     devAddr :: (Value Prelude.Text),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-iotwireless-wirelessdevice-abpv10x.html#cfn-iotwireless-wirelessdevice-abpv10x-sessionkeys>
                     sessionKeys :: SessionKeysAbpV10xProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAbpV10xProperty ::
  Value Prelude.Text -> SessionKeysAbpV10xProperty -> AbpV10xProperty
mkAbpV10xProperty devAddr sessionKeys
  = AbpV10xProperty
      {haddock_workaround_ = (), devAddr = devAddr,
       sessionKeys = sessionKeys}
instance ToResourceProperties AbpV10xProperty where
  toResourceProperties AbpV10xProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTWireless::WirelessDevice.AbpV10x",
         supportsTags = Prelude.False,
         properties = ["DevAddr" JSON..= devAddr,
                       "SessionKeys" JSON..= sessionKeys]}
instance JSON.ToJSON AbpV10xProperty where
  toJSON AbpV10xProperty {..}
    = JSON.object
        ["DevAddr" JSON..= devAddr, "SessionKeys" JSON..= sessionKeys]
instance Property "DevAddr" AbpV10xProperty where
  type PropertyType "DevAddr" AbpV10xProperty = Value Prelude.Text
  set newValue AbpV10xProperty {..}
    = AbpV10xProperty {devAddr = newValue, ..}
instance Property "SessionKeys" AbpV10xProperty where
  type PropertyType "SessionKeys" AbpV10xProperty = SessionKeysAbpV10xProperty
  set newValue AbpV10xProperty {..}
    = AbpV10xProperty {sessionKeys = newValue, ..}