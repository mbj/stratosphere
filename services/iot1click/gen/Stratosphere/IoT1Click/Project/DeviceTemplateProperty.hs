module Stratosphere.IoT1Click.Project.DeviceTemplateProperty (
        DeviceTemplateProperty(..), mkDeviceTemplateProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DeviceTemplateProperty
  = DeviceTemplateProperty {callbackOverrides :: (Prelude.Maybe JSON.Object),
                            deviceType :: (Prelude.Maybe (Value Prelude.Text))}
mkDeviceTemplateProperty :: DeviceTemplateProperty
mkDeviceTemplateProperty
  = DeviceTemplateProperty
      {callbackOverrides = Prelude.Nothing, deviceType = Prelude.Nothing}
instance ToResourceProperties DeviceTemplateProperty where
  toResourceProperties DeviceTemplateProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoT1Click::Project.DeviceTemplate",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CallbackOverrides" Prelude.<$> callbackOverrides,
                            (JSON..=) "DeviceType" Prelude.<$> deviceType])}
instance JSON.ToJSON DeviceTemplateProperty where
  toJSON DeviceTemplateProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CallbackOverrides" Prelude.<$> callbackOverrides,
               (JSON..=) "DeviceType" Prelude.<$> deviceType]))
instance Property "CallbackOverrides" DeviceTemplateProperty where
  type PropertyType "CallbackOverrides" DeviceTemplateProperty = JSON.Object
  set newValue DeviceTemplateProperty {..}
    = DeviceTemplateProperty
        {callbackOverrides = Prelude.pure newValue, ..}
instance Property "DeviceType" DeviceTemplateProperty where
  type PropertyType "DeviceType" DeviceTemplateProperty = Value Prelude.Text
  set newValue DeviceTemplateProperty {..}
    = DeviceTemplateProperty {deviceType = Prelude.pure newValue, ..}