module Stratosphere.IoT1Click.Device (
        Device(..), mkDevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Device
  = Device {deviceId :: (Value Prelude.Text),
            enabled :: (Value Prelude.Bool)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDevice :: Value Prelude.Text -> Value Prelude.Bool -> Device
mkDevice deviceId enabled
  = Device {deviceId = deviceId, enabled = enabled}
instance ToResourceProperties Device where
  toResourceProperties Device {..}
    = ResourceProperties
        {awsType = "AWS::IoT1Click::Device", supportsTags = Prelude.False,
         properties = ["DeviceId" JSON..= deviceId,
                       "Enabled" JSON..= enabled]}
instance JSON.ToJSON Device where
  toJSON Device {..}
    = JSON.object
        ["DeviceId" JSON..= deviceId, "Enabled" JSON..= enabled]
instance Property "DeviceId" Device where
  type PropertyType "DeviceId" Device = Value Prelude.Text
  set newValue Device {..} = Device {deviceId = newValue, ..}
instance Property "Enabled" Device where
  type PropertyType "Enabled" Device = Value Prelude.Bool
  set newValue Device {..} = Device {enabled = newValue, ..}