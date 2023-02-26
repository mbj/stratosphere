module Stratosphere.EC2.LaunchTemplate.InstanceRequirementsProperty (
        module Exports, InstanceRequirementsProperty(..),
        mkInstanceRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.AcceleratorCountProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.AcceleratorTotalMemoryMiBProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.BaselineEbsBandwidthMbpsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MemoryGiBPerVCpuProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MemoryMiBProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.NetworkBandwidthGbpsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.NetworkInterfaceCountProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.TotalLocalStorageGBProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.VCpuCountProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceRequirementsProperty
  = InstanceRequirementsProperty {acceleratorCount :: (Prelude.Maybe AcceleratorCountProperty),
                                  acceleratorManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  acceleratorNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  acceleratorTotalMemoryMiB :: (Prelude.Maybe AcceleratorTotalMemoryMiBProperty),
                                  acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  allowedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  bareMetal :: (Prelude.Maybe (Value Prelude.Text)),
                                  baselineEbsBandwidthMbps :: (Prelude.Maybe BaselineEbsBandwidthMbpsProperty),
                                  burstablePerformance :: (Prelude.Maybe (Value Prelude.Text)),
                                  cpuManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  excludedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  instanceGenerations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  localStorage :: (Prelude.Maybe (Value Prelude.Text)),
                                  localStorageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  memoryGiBPerVCpu :: (Prelude.Maybe MemoryGiBPerVCpuProperty),
                                  memoryMiB :: (Prelude.Maybe MemoryMiBProperty),
                                  networkBandwidthGbps :: (Prelude.Maybe NetworkBandwidthGbpsProperty),
                                  networkInterfaceCount :: (Prelude.Maybe NetworkInterfaceCountProperty),
                                  onDemandMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  requireHibernateSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                                  spotMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  totalLocalStorageGB :: (Prelude.Maybe TotalLocalStorageGBProperty),
                                  vCpuCount :: (Prelude.Maybe VCpuCountProperty)}
mkInstanceRequirementsProperty :: InstanceRequirementsProperty
mkInstanceRequirementsProperty
  = InstanceRequirementsProperty
      {acceleratorCount = Prelude.Nothing,
       acceleratorManufacturers = Prelude.Nothing,
       acceleratorNames = Prelude.Nothing,
       acceleratorTotalMemoryMiB = Prelude.Nothing,
       acceleratorTypes = Prelude.Nothing,
       allowedInstanceTypes = Prelude.Nothing,
       bareMetal = Prelude.Nothing,
       baselineEbsBandwidthMbps = Prelude.Nothing,
       burstablePerformance = Prelude.Nothing,
       cpuManufacturers = Prelude.Nothing,
       excludedInstanceTypes = Prelude.Nothing,
       instanceGenerations = Prelude.Nothing,
       localStorage = Prelude.Nothing,
       localStorageTypes = Prelude.Nothing,
       memoryGiBPerVCpu = Prelude.Nothing, memoryMiB = Prelude.Nothing,
       networkBandwidthGbps = Prelude.Nothing,
       networkInterfaceCount = Prelude.Nothing,
       onDemandMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       requireHibernateSupport = Prelude.Nothing,
       spotMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       totalLocalStorageGB = Prelude.Nothing, vCpuCount = Prelude.Nothing}
instance ToResourceProperties InstanceRequirementsProperty where
  toResourceProperties InstanceRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.InstanceRequirements",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AcceleratorCount" Prelude.<$> acceleratorCount,
                            (JSON..=) "AcceleratorManufacturers"
                              Prelude.<$> acceleratorManufacturers,
                            (JSON..=) "AcceleratorNames" Prelude.<$> acceleratorNames,
                            (JSON..=) "AcceleratorTotalMemoryMiB"
                              Prelude.<$> acceleratorTotalMemoryMiB,
                            (JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
                            (JSON..=) "AllowedInstanceTypes" Prelude.<$> allowedInstanceTypes,
                            (JSON..=) "BareMetal" Prelude.<$> bareMetal,
                            (JSON..=) "BaselineEbsBandwidthMbps"
                              Prelude.<$> baselineEbsBandwidthMbps,
                            (JSON..=) "BurstablePerformance" Prelude.<$> burstablePerformance,
                            (JSON..=) "CpuManufacturers" Prelude.<$> cpuManufacturers,
                            (JSON..=) "ExcludedInstanceTypes"
                              Prelude.<$> excludedInstanceTypes,
                            (JSON..=) "InstanceGenerations" Prelude.<$> instanceGenerations,
                            (JSON..=) "LocalStorage" Prelude.<$> localStorage,
                            (JSON..=) "LocalStorageTypes" Prelude.<$> localStorageTypes,
                            (JSON..=) "MemoryGiBPerVCpu" Prelude.<$> memoryGiBPerVCpu,
                            (JSON..=) "MemoryMiB" Prelude.<$> memoryMiB,
                            (JSON..=) "NetworkBandwidthGbps" Prelude.<$> networkBandwidthGbps,
                            (JSON..=) "NetworkInterfaceCount"
                              Prelude.<$> networkInterfaceCount,
                            (JSON..=) "OnDemandMaxPricePercentageOverLowestPrice"
                              Prelude.<$> onDemandMaxPricePercentageOverLowestPrice,
                            (JSON..=) "RequireHibernateSupport"
                              Prelude.<$> requireHibernateSupport,
                            (JSON..=) "SpotMaxPricePercentageOverLowestPrice"
                              Prelude.<$> spotMaxPricePercentageOverLowestPrice,
                            (JSON..=) "TotalLocalStorageGB" Prelude.<$> totalLocalStorageGB,
                            (JSON..=) "VCpuCount" Prelude.<$> vCpuCount])}
instance JSON.ToJSON InstanceRequirementsProperty where
  toJSON InstanceRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AcceleratorCount" Prelude.<$> acceleratorCount,
               (JSON..=) "AcceleratorManufacturers"
                 Prelude.<$> acceleratorManufacturers,
               (JSON..=) "AcceleratorNames" Prelude.<$> acceleratorNames,
               (JSON..=) "AcceleratorTotalMemoryMiB"
                 Prelude.<$> acceleratorTotalMemoryMiB,
               (JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
               (JSON..=) "AllowedInstanceTypes" Prelude.<$> allowedInstanceTypes,
               (JSON..=) "BareMetal" Prelude.<$> bareMetal,
               (JSON..=) "BaselineEbsBandwidthMbps"
                 Prelude.<$> baselineEbsBandwidthMbps,
               (JSON..=) "BurstablePerformance" Prelude.<$> burstablePerformance,
               (JSON..=) "CpuManufacturers" Prelude.<$> cpuManufacturers,
               (JSON..=) "ExcludedInstanceTypes"
                 Prelude.<$> excludedInstanceTypes,
               (JSON..=) "InstanceGenerations" Prelude.<$> instanceGenerations,
               (JSON..=) "LocalStorage" Prelude.<$> localStorage,
               (JSON..=) "LocalStorageTypes" Prelude.<$> localStorageTypes,
               (JSON..=) "MemoryGiBPerVCpu" Prelude.<$> memoryGiBPerVCpu,
               (JSON..=) "MemoryMiB" Prelude.<$> memoryMiB,
               (JSON..=) "NetworkBandwidthGbps" Prelude.<$> networkBandwidthGbps,
               (JSON..=) "NetworkInterfaceCount"
                 Prelude.<$> networkInterfaceCount,
               (JSON..=) "OnDemandMaxPricePercentageOverLowestPrice"
                 Prelude.<$> onDemandMaxPricePercentageOverLowestPrice,
               (JSON..=) "RequireHibernateSupport"
                 Prelude.<$> requireHibernateSupport,
               (JSON..=) "SpotMaxPricePercentageOverLowestPrice"
                 Prelude.<$> spotMaxPricePercentageOverLowestPrice,
               (JSON..=) "TotalLocalStorageGB" Prelude.<$> totalLocalStorageGB,
               (JSON..=) "VCpuCount" Prelude.<$> vCpuCount]))
instance Property "AcceleratorCount" InstanceRequirementsProperty where
  type PropertyType "AcceleratorCount" InstanceRequirementsProperty = AcceleratorCountProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {acceleratorCount = Prelude.pure newValue, ..}
instance Property "AcceleratorManufacturers" InstanceRequirementsProperty where
  type PropertyType "AcceleratorManufacturers" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {acceleratorManufacturers = Prelude.pure newValue, ..}
instance Property "AcceleratorNames" InstanceRequirementsProperty where
  type PropertyType "AcceleratorNames" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {acceleratorNames = Prelude.pure newValue, ..}
instance Property "AcceleratorTotalMemoryMiB" InstanceRequirementsProperty where
  type PropertyType "AcceleratorTotalMemoryMiB" InstanceRequirementsProperty = AcceleratorTotalMemoryMiBProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {acceleratorTotalMemoryMiB = Prelude.pure newValue, ..}
instance Property "AcceleratorTypes" InstanceRequirementsProperty where
  type PropertyType "AcceleratorTypes" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {acceleratorTypes = Prelude.pure newValue, ..}
instance Property "AllowedInstanceTypes" InstanceRequirementsProperty where
  type PropertyType "AllowedInstanceTypes" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {allowedInstanceTypes = Prelude.pure newValue, ..}
instance Property "BareMetal" InstanceRequirementsProperty where
  type PropertyType "BareMetal" InstanceRequirementsProperty = Value Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {bareMetal = Prelude.pure newValue, ..}
instance Property "BaselineEbsBandwidthMbps" InstanceRequirementsProperty where
  type PropertyType "BaselineEbsBandwidthMbps" InstanceRequirementsProperty = BaselineEbsBandwidthMbpsProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {baselineEbsBandwidthMbps = Prelude.pure newValue, ..}
instance Property "BurstablePerformance" InstanceRequirementsProperty where
  type PropertyType "BurstablePerformance" InstanceRequirementsProperty = Value Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {burstablePerformance = Prelude.pure newValue, ..}
instance Property "CpuManufacturers" InstanceRequirementsProperty where
  type PropertyType "CpuManufacturers" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {cpuManufacturers = Prelude.pure newValue, ..}
instance Property "ExcludedInstanceTypes" InstanceRequirementsProperty where
  type PropertyType "ExcludedInstanceTypes" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {excludedInstanceTypes = Prelude.pure newValue, ..}
instance Property "InstanceGenerations" InstanceRequirementsProperty where
  type PropertyType "InstanceGenerations" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {instanceGenerations = Prelude.pure newValue, ..}
instance Property "LocalStorage" InstanceRequirementsProperty where
  type PropertyType "LocalStorage" InstanceRequirementsProperty = Value Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {localStorage = Prelude.pure newValue, ..}
instance Property "LocalStorageTypes" InstanceRequirementsProperty where
  type PropertyType "LocalStorageTypes" InstanceRequirementsProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {localStorageTypes = Prelude.pure newValue, ..}
instance Property "MemoryGiBPerVCpu" InstanceRequirementsProperty where
  type PropertyType "MemoryGiBPerVCpu" InstanceRequirementsProperty = MemoryGiBPerVCpuProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {memoryGiBPerVCpu = Prelude.pure newValue, ..}
instance Property "MemoryMiB" InstanceRequirementsProperty where
  type PropertyType "MemoryMiB" InstanceRequirementsProperty = MemoryMiBProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {memoryMiB = Prelude.pure newValue, ..}
instance Property "NetworkBandwidthGbps" InstanceRequirementsProperty where
  type PropertyType "NetworkBandwidthGbps" InstanceRequirementsProperty = NetworkBandwidthGbpsProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {networkBandwidthGbps = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceCount" InstanceRequirementsProperty where
  type PropertyType "NetworkInterfaceCount" InstanceRequirementsProperty = NetworkInterfaceCountProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {networkInterfaceCount = Prelude.pure newValue, ..}
instance Property "OnDemandMaxPricePercentageOverLowestPrice" InstanceRequirementsProperty where
  type PropertyType "OnDemandMaxPricePercentageOverLowestPrice" InstanceRequirementsProperty = Value Prelude.Integer
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {onDemandMaxPricePercentageOverLowestPrice = Prelude.pure newValue,
         ..}
instance Property "RequireHibernateSupport" InstanceRequirementsProperty where
  type PropertyType "RequireHibernateSupport" InstanceRequirementsProperty = Value Prelude.Bool
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {requireHibernateSupport = Prelude.pure newValue, ..}
instance Property "SpotMaxPricePercentageOverLowestPrice" InstanceRequirementsProperty where
  type PropertyType "SpotMaxPricePercentageOverLowestPrice" InstanceRequirementsProperty = Value Prelude.Integer
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {spotMaxPricePercentageOverLowestPrice = Prelude.pure newValue, ..}
instance Property "TotalLocalStorageGB" InstanceRequirementsProperty where
  type PropertyType "TotalLocalStorageGB" InstanceRequirementsProperty = TotalLocalStorageGBProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {totalLocalStorageGB = Prelude.pure newValue, ..}
instance Property "VCpuCount" InstanceRequirementsProperty where
  type PropertyType "VCpuCount" InstanceRequirementsProperty = VCpuCountProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {vCpuCount = Prelude.pure newValue, ..}