module Stratosphere.Lightsail.Instance.HardwareProperty (
        module Exports, HardwareProperty(..), mkHardwareProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Lightsail.Instance.DiskProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HardwareProperty
  = HardwareProperty {cpuCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      disks :: (Prelude.Maybe [DiskProperty]),
                      ramSizeInGb :: (Prelude.Maybe (Value Prelude.Integer))}
mkHardwareProperty :: HardwareProperty
mkHardwareProperty
  = HardwareProperty
      {cpuCount = Prelude.Nothing, disks = Prelude.Nothing,
       ramSizeInGb = Prelude.Nothing}
instance ToResourceProperties HardwareProperty where
  toResourceProperties HardwareProperty {..}
    = ResourceProperties
        {awsType = "AWS::Lightsail::Instance.Hardware",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CpuCount" Prelude.<$> cpuCount,
                            (JSON..=) "Disks" Prelude.<$> disks,
                            (JSON..=) "RamSizeInGb" Prelude.<$> ramSizeInGb])}
instance JSON.ToJSON HardwareProperty where
  toJSON HardwareProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CpuCount" Prelude.<$> cpuCount,
               (JSON..=) "Disks" Prelude.<$> disks,
               (JSON..=) "RamSizeInGb" Prelude.<$> ramSizeInGb]))
instance Property "CpuCount" HardwareProperty where
  type PropertyType "CpuCount" HardwareProperty = Value Prelude.Integer
  set newValue HardwareProperty {..}
    = HardwareProperty {cpuCount = Prelude.pure newValue, ..}
instance Property "Disks" HardwareProperty where
  type PropertyType "Disks" HardwareProperty = [DiskProperty]
  set newValue HardwareProperty {..}
    = HardwareProperty {disks = Prelude.pure newValue, ..}
instance Property "RamSizeInGb" HardwareProperty where
  type PropertyType "RamSizeInGb" HardwareProperty = Value Prelude.Integer
  set newValue HardwareProperty {..}
    = HardwareProperty {ramSizeInGb = Prelude.pure newValue, ..}