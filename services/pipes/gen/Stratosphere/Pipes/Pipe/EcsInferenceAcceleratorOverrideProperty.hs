module Stratosphere.Pipes.Pipe.EcsInferenceAcceleratorOverrideProperty (
        EcsInferenceAcceleratorOverrideProperty(..),
        mkEcsInferenceAcceleratorOverrideProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data EcsInferenceAcceleratorOverrideProperty
  = EcsInferenceAcceleratorOverrideProperty {deviceName :: (Prelude.Maybe (Value Prelude.Text)),
                                             deviceType :: (Prelude.Maybe (Value Prelude.Text))}
mkEcsInferenceAcceleratorOverrideProperty ::
  EcsInferenceAcceleratorOverrideProperty
mkEcsInferenceAcceleratorOverrideProperty
  = EcsInferenceAcceleratorOverrideProperty
      {deviceName = Prelude.Nothing, deviceType = Prelude.Nothing}
instance ToResourceProperties EcsInferenceAcceleratorOverrideProperty where
  toResourceProperties EcsInferenceAcceleratorOverrideProperty {..}
    = ResourceProperties
        {awsType = "AWS::Pipes::Pipe.EcsInferenceAcceleratorOverride",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DeviceName" Prelude.<$> deviceName,
                            (JSON..=) "DeviceType" Prelude.<$> deviceType])}
instance JSON.ToJSON EcsInferenceAcceleratorOverrideProperty where
  toJSON EcsInferenceAcceleratorOverrideProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DeviceName" Prelude.<$> deviceName,
               (JSON..=) "DeviceType" Prelude.<$> deviceType]))
instance Property "DeviceName" EcsInferenceAcceleratorOverrideProperty where
  type PropertyType "DeviceName" EcsInferenceAcceleratorOverrideProperty = Value Prelude.Text
  set newValue EcsInferenceAcceleratorOverrideProperty {..}
    = EcsInferenceAcceleratorOverrideProperty
        {deviceName = Prelude.pure newValue, ..}
instance Property "DeviceType" EcsInferenceAcceleratorOverrideProperty where
  type PropertyType "DeviceType" EcsInferenceAcceleratorOverrideProperty = Value Prelude.Text
  set newValue EcsInferenceAcceleratorOverrideProperty {..}
    = EcsInferenceAcceleratorOverrideProperty
        {deviceType = Prelude.pure newValue, ..}