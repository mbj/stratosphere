module Stratosphere.Deadline.Fleet.ServiceManagedEc2InstanceCapabilitiesProperty (
        module Exports, ServiceManagedEc2InstanceCapabilitiesProperty(..),
        mkServiceManagedEc2InstanceCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.AcceleratorCapabilitiesProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.Ec2EbsVolumeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAmountCapabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAttributeCapabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.MemoryMiBRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.VCpuCountRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ServiceManagedEc2InstanceCapabilitiesProperty
  = ServiceManagedEc2InstanceCapabilitiesProperty {acceleratorCapabilities :: (Prelude.Maybe AcceleratorCapabilitiesProperty),
                                                   allowedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   cpuArchitectureType :: (Value Prelude.Text),
                                                   customAmounts :: (Prelude.Maybe [FleetAmountCapabilityProperty]),
                                                   customAttributes :: (Prelude.Maybe [FleetAttributeCapabilityProperty]),
                                                   excludedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                                   memoryMiB :: MemoryMiBRangeProperty,
                                                   osFamily :: (Value Prelude.Text),
                                                   rootEbsVolume :: (Prelude.Maybe Ec2EbsVolumeProperty),
                                                   vCpuCount :: VCpuCountRangeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkServiceManagedEc2InstanceCapabilitiesProperty ::
  Value Prelude.Text
  -> MemoryMiBRangeProperty
     -> Value Prelude.Text
        -> VCpuCountRangeProperty
           -> ServiceManagedEc2InstanceCapabilitiesProperty
mkServiceManagedEc2InstanceCapabilitiesProperty
  cpuArchitectureType
  memoryMiB
  osFamily
  vCpuCount
  = ServiceManagedEc2InstanceCapabilitiesProperty
      {cpuArchitectureType = cpuArchitectureType, memoryMiB = memoryMiB,
       osFamily = osFamily, vCpuCount = vCpuCount,
       acceleratorCapabilities = Prelude.Nothing,
       allowedInstanceTypes = Prelude.Nothing,
       customAmounts = Prelude.Nothing,
       customAttributes = Prelude.Nothing,
       excludedInstanceTypes = Prelude.Nothing,
       rootEbsVolume = Prelude.Nothing}
instance ToResourceProperties ServiceManagedEc2InstanceCapabilitiesProperty where
  toResourceProperties
    ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.ServiceManagedEc2InstanceCapabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CpuArchitectureType" JSON..= cpuArchitectureType,
                            "MemoryMiB" JSON..= memoryMiB, "OsFamily" JSON..= osFamily,
                            "VCpuCount" JSON..= vCpuCount]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceleratorCapabilities"
                                 Prelude.<$> acceleratorCapabilities,
                               (JSON..=) "AllowedInstanceTypes" Prelude.<$> allowedInstanceTypes,
                               (JSON..=) "CustomAmounts" Prelude.<$> customAmounts,
                               (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
                               (JSON..=) "ExcludedInstanceTypes"
                                 Prelude.<$> excludedInstanceTypes,
                               (JSON..=) "RootEbsVolume" Prelude.<$> rootEbsVolume]))}
instance JSON.ToJSON ServiceManagedEc2InstanceCapabilitiesProperty where
  toJSON ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CpuArchitectureType" JSON..= cpuArchitectureType,
               "MemoryMiB" JSON..= memoryMiB, "OsFamily" JSON..= osFamily,
               "VCpuCount" JSON..= vCpuCount]
              (Prelude.catMaybes
                 [(JSON..=) "AcceleratorCapabilities"
                    Prelude.<$> acceleratorCapabilities,
                  (JSON..=) "AllowedInstanceTypes" Prelude.<$> allowedInstanceTypes,
                  (JSON..=) "CustomAmounts" Prelude.<$> customAmounts,
                  (JSON..=) "CustomAttributes" Prelude.<$> customAttributes,
                  (JSON..=) "ExcludedInstanceTypes"
                    Prelude.<$> excludedInstanceTypes,
                  (JSON..=) "RootEbsVolume" Prelude.<$> rootEbsVolume])))
instance Property "AcceleratorCapabilities" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "AcceleratorCapabilities" ServiceManagedEc2InstanceCapabilitiesProperty = AcceleratorCapabilitiesProperty
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {acceleratorCapabilities = Prelude.pure newValue, ..}
instance Property "AllowedInstanceTypes" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "AllowedInstanceTypes" ServiceManagedEc2InstanceCapabilitiesProperty = ValueList Prelude.Text
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {allowedInstanceTypes = Prelude.pure newValue, ..}
instance Property "CpuArchitectureType" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "CpuArchitectureType" ServiceManagedEc2InstanceCapabilitiesProperty = Value Prelude.Text
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {cpuArchitectureType = newValue, ..}
instance Property "CustomAmounts" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "CustomAmounts" ServiceManagedEc2InstanceCapabilitiesProperty = [FleetAmountCapabilityProperty]
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {customAmounts = Prelude.pure newValue, ..}
instance Property "CustomAttributes" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "CustomAttributes" ServiceManagedEc2InstanceCapabilitiesProperty = [FleetAttributeCapabilityProperty]
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {customAttributes = Prelude.pure newValue, ..}
instance Property "ExcludedInstanceTypes" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "ExcludedInstanceTypes" ServiceManagedEc2InstanceCapabilitiesProperty = ValueList Prelude.Text
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {excludedInstanceTypes = Prelude.pure newValue, ..}
instance Property "MemoryMiB" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "MemoryMiB" ServiceManagedEc2InstanceCapabilitiesProperty = MemoryMiBRangeProperty
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {memoryMiB = newValue, ..}
instance Property "OsFamily" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "OsFamily" ServiceManagedEc2InstanceCapabilitiesProperty = Value Prelude.Text
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {osFamily = newValue, ..}
instance Property "RootEbsVolume" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "RootEbsVolume" ServiceManagedEc2InstanceCapabilitiesProperty = Ec2EbsVolumeProperty
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {rootEbsVolume = Prelude.pure newValue, ..}
instance Property "VCpuCount" ServiceManagedEc2InstanceCapabilitiesProperty where
  type PropertyType "VCpuCount" ServiceManagedEc2InstanceCapabilitiesProperty = VCpuCountRangeProperty
  set newValue ServiceManagedEc2InstanceCapabilitiesProperty {..}
    = ServiceManagedEc2InstanceCapabilitiesProperty
        {vCpuCount = newValue, ..}