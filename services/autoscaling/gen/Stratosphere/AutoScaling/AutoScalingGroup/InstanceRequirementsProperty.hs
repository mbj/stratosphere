module Stratosphere.AutoScaling.AutoScalingGroup.InstanceRequirementsProperty (
        module Exports, InstanceRequirementsProperty(..),
        mkInstanceRequirementsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.AcceleratorCountRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.AcceleratorTotalMemoryMiBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.BaselineEbsBandwidthMbpsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.BaselinePerformanceFactorsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.MemoryGiBPerVCpuRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.MemoryMiBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.NetworkBandwidthGbpsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.NetworkInterfaceCountRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.TotalLocalStorageGBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.AutoScalingGroup.VCpuCountRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceRequirementsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html>
    InstanceRequirementsProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratorcount>
                                  acceleratorCount :: (Prelude.Maybe AcceleratorCountRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratormanufacturers>
                                  acceleratorManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratornames>
                                  acceleratorNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratortotalmemorymib>
                                  acceleratorTotalMemoryMiB :: (Prelude.Maybe AcceleratorTotalMemoryMiBRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-acceleratortypes>
                                  acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-allowedinstancetypes>
                                  allowedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baremetal>
                                  bareMetal :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baselineebsbandwidthmbps>
                                  baselineEbsBandwidthMbps :: (Prelude.Maybe BaselineEbsBandwidthMbpsRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-baselineperformancefactors>
                                  baselinePerformanceFactors :: (Prelude.Maybe BaselinePerformanceFactorsRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-burstableperformance>
                                  burstablePerformance :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-cpumanufacturers>
                                  cpuManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-excludedinstancetypes>
                                  excludedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-instancegenerations>
                                  instanceGenerations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-localstorage>
                                  localStorage :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-localstoragetypes>
                                  localStorageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-maxspotpriceaspercentageofoptimalondemandprice>
                                  maxSpotPriceAsPercentageOfOptimalOnDemandPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-memorygibpervcpu>
                                  memoryGiBPerVCpu :: (Prelude.Maybe MemoryGiBPerVCpuRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-memorymib>
                                  memoryMiB :: MemoryMiBRequestProperty,
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-networkbandwidthgbps>
                                  networkBandwidthGbps :: (Prelude.Maybe NetworkBandwidthGbpsRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-networkinterfacecount>
                                  networkInterfaceCount :: (Prelude.Maybe NetworkInterfaceCountRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-ondemandmaxpricepercentageoverlowestprice>
                                  onDemandMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-requirehibernatesupport>
                                  requireHibernateSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-spotmaxpricepercentageoverlowestprice>
                                  spotMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-totallocalstoragegb>
                                  totalLocalStorageGB :: (Prelude.Maybe TotalLocalStorageGBRequestProperty),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-autoscalinggroup-instancerequirements.html#cfn-autoscaling-autoscalinggroup-instancerequirements-vcpucount>
                                  vCpuCount :: VCpuCountRequestProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceRequirementsProperty ::
  MemoryMiBRequestProperty
  -> VCpuCountRequestProperty -> InstanceRequirementsProperty
mkInstanceRequirementsProperty memoryMiB vCpuCount
  = InstanceRequirementsProperty
      {haddock_workaround_ = (), memoryMiB = memoryMiB,
       vCpuCount = vCpuCount, acceleratorCount = Prelude.Nothing,
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
       memoryGiBPerVCpu = Prelude.Nothing,
       networkBandwidthGbps = Prelude.Nothing,
       networkInterfaceCount = Prelude.Nothing,
       onDemandMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       requireHibernateSupport = Prelude.Nothing,
       spotMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       totalLocalStorageGB = Prelude.Nothing}
instance ToResourceProperties InstanceRequirementsProperty where
  toResourceProperties InstanceRequirementsProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::AutoScalingGroup.InstanceRequirements",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MemoryMiB" JSON..= memoryMiB, "VCpuCount" JSON..= vCpuCount]
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
                               (JSON..=) "NetworkBandwidthGbps" Prelude.<$> networkBandwidthGbps,
                               (JSON..=) "NetworkInterfaceCount"
                                 Prelude.<$> networkInterfaceCount,
                               (JSON..=) "OnDemandMaxPricePercentageOverLowestPrice"
                                 Prelude.<$> onDemandMaxPricePercentageOverLowestPrice,
                               (JSON..=) "RequireHibernateSupport"
                                 Prelude.<$> requireHibernateSupport,
                               (JSON..=) "SpotMaxPricePercentageOverLowestPrice"
                                 Prelude.<$> spotMaxPricePercentageOverLowestPrice,
                               (JSON..=) "TotalLocalStorageGB" Prelude.<$> totalLocalStorageGB]))}
instance JSON.ToJSON InstanceRequirementsProperty where
  toJSON InstanceRequirementsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MemoryMiB" JSON..= memoryMiB, "VCpuCount" JSON..= vCpuCount]
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
                  (JSON..=) "NetworkBandwidthGbps" Prelude.<$> networkBandwidthGbps,
                  (JSON..=) "NetworkInterfaceCount"
                    Prelude.<$> networkInterfaceCount,
                  (JSON..=) "OnDemandMaxPricePercentageOverLowestPrice"
                    Prelude.<$> onDemandMaxPricePercentageOverLowestPrice,
                  (JSON..=) "RequireHibernateSupport"
                    Prelude.<$> requireHibernateSupport,
                  (JSON..=) "SpotMaxPricePercentageOverLowestPrice"
                    Prelude.<$> spotMaxPricePercentageOverLowestPrice,
                  (JSON..=) "TotalLocalStorageGB" Prelude.<$> totalLocalStorageGB])))
instance Property "AcceleratorCount" InstanceRequirementsProperty where
  type PropertyType "AcceleratorCount" InstanceRequirementsProperty = AcceleratorCountRequestProperty
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
  type PropertyType "AcceleratorTotalMemoryMiB" InstanceRequirementsProperty = AcceleratorTotalMemoryMiBRequestProperty
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
  type PropertyType "BaselineEbsBandwidthMbps" InstanceRequirementsProperty = BaselineEbsBandwidthMbpsRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {baselineEbsBandwidthMbps = Prelude.pure newValue, ..}
instance Property "BaselinePerformanceFactors" InstanceRequirementsProperty where
  type PropertyType "BaselinePerformanceFactors" InstanceRequirementsProperty = BaselinePerformanceFactorsRequestProperty
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
  type PropertyType "MemoryGiBPerVCpu" InstanceRequirementsProperty = MemoryGiBPerVCpuRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {memoryGiBPerVCpu = Prelude.pure newValue, ..}
instance Property "MemoryMiB" InstanceRequirementsProperty where
  type PropertyType "MemoryMiB" InstanceRequirementsProperty = MemoryMiBRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty {memoryMiB = newValue, ..}
instance Property "NetworkBandwidthGbps" InstanceRequirementsProperty where
  type PropertyType "NetworkBandwidthGbps" InstanceRequirementsProperty = NetworkBandwidthGbpsRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {networkBandwidthGbps = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceCount" InstanceRequirementsProperty where
  type PropertyType "NetworkInterfaceCount" InstanceRequirementsProperty = NetworkInterfaceCountRequestProperty
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
  type PropertyType "TotalLocalStorageGB" InstanceRequirementsProperty = TotalLocalStorageGBRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty
        {totalLocalStorageGB = Prelude.pure newValue, ..}
instance Property "VCpuCount" InstanceRequirementsProperty where
  type PropertyType "VCpuCount" InstanceRequirementsProperty = VCpuCountRequestProperty
  set newValue InstanceRequirementsProperty {..}
    = InstanceRequirementsProperty {vCpuCount = newValue, ..}