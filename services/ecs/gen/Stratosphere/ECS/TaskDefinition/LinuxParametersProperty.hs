module Stratosphere.ECS.TaskDefinition.LinuxParametersProperty (
        module Exports, LinuxParametersProperty(..),
        mkLinuxParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.DeviceProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.KernelCapabilitiesProperty as Exports
import {-# SOURCE #-} Stratosphere.ECS.TaskDefinition.TmpfsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LinuxParametersProperty
  = LinuxParametersProperty {capabilities :: (Prelude.Maybe KernelCapabilitiesProperty),
                             devices :: (Prelude.Maybe [DeviceProperty]),
                             initProcessEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             maxSwap :: (Prelude.Maybe (Value Prelude.Integer)),
                             sharedMemorySize :: (Prelude.Maybe (Value Prelude.Integer)),
                             swappiness :: (Prelude.Maybe (Value Prelude.Integer)),
                             tmpfs :: (Prelude.Maybe [TmpfsProperty])}
mkLinuxParametersProperty :: LinuxParametersProperty
mkLinuxParametersProperty
  = LinuxParametersProperty
      {capabilities = Prelude.Nothing, devices = Prelude.Nothing,
       initProcessEnabled = Prelude.Nothing, maxSwap = Prelude.Nothing,
       sharedMemorySize = Prelude.Nothing, swappiness = Prelude.Nothing,
       tmpfs = Prelude.Nothing}
instance ToResourceProperties LinuxParametersProperty where
  toResourceProperties LinuxParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::TaskDefinition.LinuxParameters",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Capabilities" Prelude.<$> capabilities,
                            (JSON..=) "Devices" Prelude.<$> devices,
                            (JSON..=) "InitProcessEnabled" Prelude.<$> initProcessEnabled,
                            (JSON..=) "MaxSwap" Prelude.<$> maxSwap,
                            (JSON..=) "SharedMemorySize" Prelude.<$> sharedMemorySize,
                            (JSON..=) "Swappiness" Prelude.<$> swappiness,
                            (JSON..=) "Tmpfs" Prelude.<$> tmpfs])}
instance JSON.ToJSON LinuxParametersProperty where
  toJSON LinuxParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Capabilities" Prelude.<$> capabilities,
               (JSON..=) "Devices" Prelude.<$> devices,
               (JSON..=) "InitProcessEnabled" Prelude.<$> initProcessEnabled,
               (JSON..=) "MaxSwap" Prelude.<$> maxSwap,
               (JSON..=) "SharedMemorySize" Prelude.<$> sharedMemorySize,
               (JSON..=) "Swappiness" Prelude.<$> swappiness,
               (JSON..=) "Tmpfs" Prelude.<$> tmpfs]))
instance Property "Capabilities" LinuxParametersProperty where
  type PropertyType "Capabilities" LinuxParametersProperty = KernelCapabilitiesProperty
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty
        {capabilities = Prelude.pure newValue, ..}
instance Property "Devices" LinuxParametersProperty where
  type PropertyType "Devices" LinuxParametersProperty = [DeviceProperty]
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty {devices = Prelude.pure newValue, ..}
instance Property "InitProcessEnabled" LinuxParametersProperty where
  type PropertyType "InitProcessEnabled" LinuxParametersProperty = Value Prelude.Bool
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty
        {initProcessEnabled = Prelude.pure newValue, ..}
instance Property "MaxSwap" LinuxParametersProperty where
  type PropertyType "MaxSwap" LinuxParametersProperty = Value Prelude.Integer
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty {maxSwap = Prelude.pure newValue, ..}
instance Property "SharedMemorySize" LinuxParametersProperty where
  type PropertyType "SharedMemorySize" LinuxParametersProperty = Value Prelude.Integer
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty
        {sharedMemorySize = Prelude.pure newValue, ..}
instance Property "Swappiness" LinuxParametersProperty where
  type PropertyType "Swappiness" LinuxParametersProperty = Value Prelude.Integer
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty {swappiness = Prelude.pure newValue, ..}
instance Property "Tmpfs" LinuxParametersProperty where
  type PropertyType "Tmpfs" LinuxParametersProperty = [TmpfsProperty]
  set newValue LinuxParametersProperty {..}
    = LinuxParametersProperty {tmpfs = Prelude.pure newValue, ..}