module Stratosphere.SageMaker.Device.DeviceProperty (
        DeviceProperty(..), mkDeviceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceProperty
  = DeviceProperty {description :: (Prelude.Maybe (Value Prelude.Text)),
                    deviceName :: (Value Prelude.Text),
                    iotThingName :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeviceProperty :: Value Prelude.Text -> DeviceProperty
mkDeviceProperty deviceName
  = DeviceProperty
      {deviceName = deviceName, description = Prelude.Nothing,
       iotThingName = Prelude.Nothing}
instance ToResourceProperties DeviceProperty where
  toResourceProperties DeviceProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Device.Device",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceName" JSON..= deviceName]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "IotThingName" Prelude.<$> iotThingName]))}
instance JSON.ToJSON DeviceProperty where
  toJSON DeviceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceName" JSON..= deviceName]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "IotThingName" Prelude.<$> iotThingName])))
instance Property "Description" DeviceProperty where
  type PropertyType "Description" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {description = Prelude.pure newValue, ..}
instance Property "DeviceName" DeviceProperty where
  type PropertyType "DeviceName" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {deviceName = newValue, ..}
instance Property "IotThingName" DeviceProperty where
  type PropertyType "IotThingName" DeviceProperty = Value Prelude.Text
  set newValue DeviceProperty {..}
    = DeviceProperty {iotThingName = Prelude.pure newValue, ..}