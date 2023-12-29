module Stratosphere.SageMaker.Device (
        module Exports, Device(..), mkDevice
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.Device.DeviceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Device
  = Device {device :: (Prelude.Maybe DeviceProperty),
            deviceFleetName :: (Value Prelude.Text),
            tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDevice :: Value Prelude.Text -> Device
mkDevice deviceFleetName
  = Device
      {deviceFleetName = deviceFleetName, device = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Device where
  toResourceProperties Device {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Device", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceFleetName" JSON..= deviceFleetName]
                           (Prelude.catMaybes
                              [(JSON..=) "Device" Prelude.<$> device,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Device where
  toJSON Device {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceFleetName" JSON..= deviceFleetName]
              (Prelude.catMaybes
                 [(JSON..=) "Device" Prelude.<$> device,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Device" Device where
  type PropertyType "Device" Device = DeviceProperty
  set newValue Device {..}
    = Device {device = Prelude.pure newValue, ..}
instance Property "DeviceFleetName" Device where
  type PropertyType "DeviceFleetName" Device = Value Prelude.Text
  set newValue Device {..} = Device {deviceFleetName = newValue, ..}
instance Property "Tags" Device where
  type PropertyType "Tags" Device = [Tag]
  set newValue Device {..}
    = Device {tags = Prelude.pure newValue, ..}