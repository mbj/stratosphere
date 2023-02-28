module Stratosphere.ECS.TaskDefinition.InferenceAcceleratorProperty (
        InferenceAcceleratorProperty(..), mkInferenceAcceleratorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceAcceleratorProperty
  = InferenceAcceleratorProperty {deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                                  deviceType :: (Prelude.Maybe (Value Prelude.Text))}
mkInferenceAcceleratorProperty :: InferenceAcceleratorProperty
mkInferenceAcceleratorProperty
  = InferenceAcceleratorProperty
      {deviceName = Prelude.Nothing, deviceType = Prelude.Nothing}
instance ToResourceProperties InferenceAcceleratorProperty where
  toResourceProperties InferenceAcceleratorProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.InferenceAccelerator",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "DeviceType" Prelude.<$> deviceType])}
instance JSON.ToJSON InferenceAcceleratorProperty where
  toJSON InferenceAcceleratorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "DeviceType" Prelude.<$> deviceType]))
instance Property "DeviceName" InferenceAcceleratorProperty where
  type PropertyType "DeviceName" InferenceAcceleratorProperty = Value Prelude.Text
  set newValue InferenceAcceleratorProperty {..}
    = InferenceAcceleratorProperty
        {deviceName = Prelude.pure newValue, ..}
instance Property "DeviceType" InferenceAcceleratorProperty where
  type PropertyType "DeviceType" InferenceAcceleratorProperty = Value Prelude.Text
  set newValue InferenceAcceleratorProperty {..}
    = InferenceAcceleratorProperty
        {deviceType = Prelude.pure newValue, ..}