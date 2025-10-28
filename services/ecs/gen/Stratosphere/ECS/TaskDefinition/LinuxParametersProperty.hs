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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html>
    LinuxParametersProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-capabilities>
                             capabilities :: (Prelude.Maybe KernelCapabilitiesProperty),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-devices>
                             devices :: (Prelude.Maybe [DeviceProperty]),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-initprocessenabled>
                             initProcessEnabled :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-maxswap>
                             maxSwap :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-sharedmemorysize>
                             sharedMemorySize :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-swappiness>
                             swappiness :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-taskdefinition-linuxparameters.html#cfn-ecs-taskdefinition-linuxparameters-tmpfs>
                             tmpfs :: (Prelude.Maybe [TmpfsProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
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