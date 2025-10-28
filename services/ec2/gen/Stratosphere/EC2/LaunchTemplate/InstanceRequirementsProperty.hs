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
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.BaselinePerformanceFactorsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MemoryGiBPerVCpuProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MemoryMiBProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.NetworkBandwidthGbpsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.NetworkInterfaceCountProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.TotalLocalStorageGBProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.VCpuCountProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceRequirementsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html>
    InstanceRequirementsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-acceleratorcount>
                                  acceleratorCount :: (Prelude.Maybe AcceleratorCountProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-acceleratormanufacturers>
                                  acceleratorManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-acceleratornames>
                                  acceleratorNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-acceleratortotalmemorymib>
                                  acceleratorTotalMemoryMiB :: (Prelude.Maybe AcceleratorTotalMemoryMiBProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-acceleratortypes>
                                  acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-allowedinstancetypes>
                                  allowedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-baremetal>
                                  bareMetal :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-baselineebsbandwidthmbps>
                                  baselineEbsBandwidthMbps :: (Prelude.Maybe BaselineEbsBandwidthMbpsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-baselineperformancefactors>
                                  baselinePerformanceFactors :: (Prelude.Maybe BaselinePerformanceFactorsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-burstableperformance>
                                  burstablePerformance :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-cpumanufacturers>
                                  cpuManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-excludedinstancetypes>
                                  excludedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-instancegenerations>
                                  instanceGenerations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-localstorage>
                                  localStorage :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-localstoragetypes>
                                  localStorageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-maxspotpriceaspercentageofoptimalondemandprice>
                                  maxSpotPriceAsPercentageOfOptimalOnDemandPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-memorygibpervcpu>
                                  memoryGiBPerVCpu :: (Prelude.Maybe MemoryGiBPerVCpuProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-memorymib>
                                  memoryMiB :: (Prelude.Maybe MemoryMiBProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-networkbandwidthgbps>
                                  networkBandwidthGbps :: (Prelude.Maybe NetworkBandwidthGbpsProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-networkinterfacecount>
                                  networkInterfaceCount :: (Prelude.Maybe NetworkInterfaceCountProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-ondemandmaxpricepercentageoverlowestprice>
                                  onDemandMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-requirehibernatesupport>
                                  requireHibernateSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-spotmaxpricepercentageoverlowestprice>
                                  spotMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-totallocalstoragegb>
                                  totalLocalStorageGB :: (Prelude.Maybe TotalLocalStorageGBProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-instancerequirements.html#cfn-ec2-launchtemplate-instancerequirements-vcpucount>
                                  vCpuCount :: (Prelude.Maybe VCpuCountProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceRequirementsProperty :: InstanceRequirementsProperty
mkInstanceRequirementsProperty
  = InstanceRequirementsProperty
      {haddock_workaround_ = (), acceleratorCount = Prelude.Nothing,
       acceleratorManufacturers = Prelude.Nothing,
       acceleratorNames = Prelude.Nothing,
       acceleratorTotalMemoryMiB = Prelude.Nothing,
       acceleratorTypes = Prelude.Nothing,
       allowedInstanceTypes = Prelude.Nothing,
       bareMetal = Prelude.Nothing,
       baselineEbsBandwidthMbps = Prelude.Nothing,
       baselinePerformanceFactors = Prelude.Nothing,
       burstablePerformance = Prelude.Nothing,
       cpuManufacturers = Prelude.Nothing,
       excludedInstanceTypes = Prelude.Nothing,
       instanceGenerations = Prelude.Nothing,
       localStorage = Prelude.Nothing,
       localStorageTypes = Prelude.Nothing,
       maxSpotPriceAsPercentageOfOptimalOnDemandPrice = Prelude.Nothing,
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
         supportsTags = Prelude.False,
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
                            (JSON..=) "BaselinePerformanceFactors"
                              Prelude.<$> baselinePerformanceFactors,
                            (JSON..=) "BurstablePerformance" Prelude.<$> burstablePerformance,
                            (JSON..=) "CpuManufacturers" Prelude.<$> cpuManufacturers,
                            (JSON..=) "ExcludedInstanceTypes"
                              Prelude.<$> excludedInstanceTypes,
                            (JSON..=) "InstanceGenerations" Prelude.<$> instanceGenerations,
                            (JSON..=) "LocalStorage" Prelude.<$> localStorage,
                            (JSON..=) "LocalStorageTypes" Prelude.<$> localStorageTypes,
                            (JSON..=) "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice"
                              Prelude.<$> maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
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
               (JSON..=) "BaselinePerformanceFactors"
                 Prelude.<$> baselinePerformanceFactors,
               (JSON..=) "BurstablePerformance" Prelude.<$> burstablePerformance,
               (JSON..=) "CpuManufacturers" Prelude.<$> cpuManufacturers,
               (JSON..=) "ExcludedInstanceTypes"
                 Prelude.<$> excludedInstanceTypes,
               (JSON..=) "InstanceGenerations" Prelude.<$> instanceGenerations,
               (JSON..=) "LocalStorage" Prelude.<$> localStorage,
               (JSON..=) "LocalStorageTypes" Prelude.<$> localStorageTypes,
               (JSON..=) "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice"
                 Prelude.<$> maxSpotPriceAsPercentageOfOptimalOnDemandPrice,
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
instance Property "BaselinePerformanceFactors" InstanceRequirementsProperty where
  type PropertyType "BaselinePerformanceFactors" InstanceRequirementsProperty = BaselinePerformanceFactorsProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {baselinePerformanceFactors = Prelude.pure newValue, ..}
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
instance Property "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice" InstanceRequirementsProperty where
  type PropertyType "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice" InstanceRequirementsProperty = Value Prelude.Integer
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {maxSpotPriceAsPercentageOfOptimalOnDemandPrice = Prelude.pure
                                                            newValue,
         ..}
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