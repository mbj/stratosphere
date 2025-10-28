module Stratosphere.EC2.EC2Fleet.InstanceRequirementsRequestProperty (
        module Exports, InstanceRequirementsRequestProperty(..),
        mkInstanceRequirementsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.AcceleratorCountRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.AcceleratorTotalMemoryMiBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.BaselineEbsBandwidthMbpsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.MemoryGiBPerVCpuRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.MemoryMiBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.NetworkBandwidthGbpsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.NetworkInterfaceCountRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.TotalLocalStorageGBRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.VCpuCountRangeRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceRequirementsRequestProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html>
    InstanceRequirementsRequestProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratorcount>
                                         acceleratorCount :: (Prelude.Maybe AcceleratorCountRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratormanufacturers>
                                         acceleratorManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratornames>
                                         acceleratorNames :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratortotalmemorymib>
                                         acceleratorTotalMemoryMiB :: (Prelude.Maybe AcceleratorTotalMemoryMiBRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-acceleratortypes>
                                         acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-allowedinstancetypes>
                                         allowedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-baremetal>
                                         bareMetal :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-baselineebsbandwidthmbps>
                                         baselineEbsBandwidthMbps :: (Prelude.Maybe BaselineEbsBandwidthMbpsRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-burstableperformance>
                                         burstablePerformance :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-cpumanufacturers>
                                         cpuManufacturers :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-excludedinstancetypes>
                                         excludedInstanceTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-instancegenerations>
                                         instanceGenerations :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-localstorage>
                                         localStorage :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-localstoragetypes>
                                         localStorageTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-maxspotpriceaspercentageofoptimalondemandprice>
                                         maxSpotPriceAsPercentageOfOptimalOnDemandPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-memorygibpervcpu>
                                         memoryGiBPerVCpu :: (Prelude.Maybe MemoryGiBPerVCpuRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-memorymib>
                                         memoryMiB :: (Prelude.Maybe MemoryMiBRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-networkbandwidthgbps>
                                         networkBandwidthGbps :: (Prelude.Maybe NetworkBandwidthGbpsRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-networkinterfacecount>
                                         networkInterfaceCount :: (Prelude.Maybe NetworkInterfaceCountRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-ondemandmaxpricepercentageoverlowestprice>
                                         onDemandMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-requirehibernatesupport>
                                         requireHibernateSupport :: (Prelude.Maybe (Value Prelude.Bool)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-spotmaxpricepercentageoverlowestprice>
                                         spotMaxPricePercentageOverLowestPrice :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-totallocalstoragegb>
                                         totalLocalStorageGB :: (Prelude.Maybe TotalLocalStorageGBRequestProperty),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-instancerequirementsrequest.html#cfn-ec2-ec2fleet-instancerequirementsrequest-vcpucount>
                                         vCpuCount :: (Prelude.Maybe VCpuCountRangeRequestProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceRequirementsRequestProperty ::
  InstanceRequirementsRequestProperty
mkInstanceRequirementsRequestProperty
  = InstanceRequirementsRequestProperty
      {haddock_workaround_ = (), acceleratorCount = Prelude.Nothing,
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
       maxSpotPriceAsPercentageOfOptimalOnDemandPrice = Prelude.Nothing,
       memoryGiBPerVCpu = Prelude.Nothing, memoryMiB = Prelude.Nothing,
       networkBandwidthGbps = Prelude.Nothing,
       networkInterfaceCount = Prelude.Nothing,
       onDemandMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       requireHibernateSupport = Prelude.Nothing,
       spotMaxPricePercentageOverLowestPrice = Prelude.Nothing,
       totalLocalStorageGB = Prelude.Nothing, vCpuCount = Prelude.Nothing}
instance ToResourceProperties InstanceRequirementsRequestProperty where
  toResourceProperties InstanceRequirementsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.InstanceRequirementsRequest",
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
instance JSON.ToJSON InstanceRequirementsRequestProperty where
  toJSON InstanceRequirementsRequestProperty {..}
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
instance Property "AcceleratorCount" InstanceRequirementsRequestProperty where
  type PropertyType "AcceleratorCount" InstanceRequirementsRequestProperty = AcceleratorCountRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {acceleratorCount = Prelude.pure newValue, ..}
instance Property "AcceleratorManufacturers" InstanceRequirementsRequestProperty where
  type PropertyType "AcceleratorManufacturers" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {acceleratorManufacturers = Prelude.pure newValue, ..}
instance Property "AcceleratorNames" InstanceRequirementsRequestProperty where
  type PropertyType "AcceleratorNames" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {acceleratorNames = Prelude.pure newValue, ..}
instance Property "AcceleratorTotalMemoryMiB" InstanceRequirementsRequestProperty where
  type PropertyType "AcceleratorTotalMemoryMiB" InstanceRequirementsRequestProperty = AcceleratorTotalMemoryMiBRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {acceleratorTotalMemoryMiB = Prelude.pure newValue, ..}
instance Property "AcceleratorTypes" InstanceRequirementsRequestProperty where
  type PropertyType "AcceleratorTypes" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {acceleratorTypes = Prelude.pure newValue, ..}
instance Property "AllowedInstanceTypes" InstanceRequirementsRequestProperty where
  type PropertyType "AllowedInstanceTypes" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {allowedInstanceTypes = Prelude.pure newValue, ..}
instance Property "BareMetal" InstanceRequirementsRequestProperty where
  type PropertyType "BareMetal" InstanceRequirementsRequestProperty = Value Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {bareMetal = Prelude.pure newValue, ..}
instance Property "BaselineEbsBandwidthMbps" InstanceRequirementsRequestProperty where
  type PropertyType "BaselineEbsBandwidthMbps" InstanceRequirementsRequestProperty = BaselineEbsBandwidthMbpsRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {baselineEbsBandwidthMbps = Prelude.pure newValue, ..}
instance Property "BurstablePerformance" InstanceRequirementsRequestProperty where
  type PropertyType "BurstablePerformance" InstanceRequirementsRequestProperty = Value Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {burstablePerformance = Prelude.pure newValue, ..}
instance Property "CpuManufacturers" InstanceRequirementsRequestProperty where
  type PropertyType "CpuManufacturers" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {cpuManufacturers = Prelude.pure newValue, ..}
instance Property "ExcludedInstanceTypes" InstanceRequirementsRequestProperty where
  type PropertyType "ExcludedInstanceTypes" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {excludedInstanceTypes = Prelude.pure newValue, ..}
instance Property "InstanceGenerations" InstanceRequirementsRequestProperty where
  type PropertyType "InstanceGenerations" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {instanceGenerations = Prelude.pure newValue, ..}
instance Property "LocalStorage" InstanceRequirementsRequestProperty where
  type PropertyType "LocalStorage" InstanceRequirementsRequestProperty = Value Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {localStorage = Prelude.pure newValue, ..}
instance Property "LocalStorageTypes" InstanceRequirementsRequestProperty where
  type PropertyType "LocalStorageTypes" InstanceRequirementsRequestProperty = ValueList Prelude.Text
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {localStorageTypes = Prelude.pure newValue, ..}
instance Property "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice" InstanceRequirementsRequestProperty where
  type PropertyType "MaxSpotPriceAsPercentageOfOptimalOnDemandPrice" InstanceRequirementsRequestProperty = Value Prelude.Integer
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {maxSpotPriceAsPercentageOfOptimalOnDemandPrice = Prelude.pure
                                                            newValue,
         ..}
instance Property "MemoryGiBPerVCpu" InstanceRequirementsRequestProperty where
  type PropertyType "MemoryGiBPerVCpu" InstanceRequirementsRequestProperty = MemoryGiBPerVCpuRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {memoryGiBPerVCpu = Prelude.pure newValue, ..}
instance Property "MemoryMiB" InstanceRequirementsRequestProperty where
  type PropertyType "MemoryMiB" InstanceRequirementsRequestProperty = MemoryMiBRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {memoryMiB = Prelude.pure newValue, ..}
instance Property "NetworkBandwidthGbps" InstanceRequirementsRequestProperty where
  type PropertyType "NetworkBandwidthGbps" InstanceRequirementsRequestProperty = NetworkBandwidthGbpsRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {networkBandwidthGbps = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceCount" InstanceRequirementsRequestProperty where
  type PropertyType "NetworkInterfaceCount" InstanceRequirementsRequestProperty = NetworkInterfaceCountRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {networkInterfaceCount = Prelude.pure newValue, ..}
instance Property "OnDemandMaxPricePercentageOverLowestPrice" InstanceRequirementsRequestProperty where
  type PropertyType "OnDemandMaxPricePercentageOverLowestPrice" InstanceRequirementsRequestProperty = Value Prelude.Integer
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {onDemandMaxPricePercentageOverLowestPrice = Prelude.pure newValue,
         ..}
instance Property "RequireHibernateSupport" InstanceRequirementsRequestProperty where
  type PropertyType "RequireHibernateSupport" InstanceRequirementsRequestProperty = Value Prelude.Bool
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {requireHibernateSupport = Prelude.pure newValue, ..}
instance Property "SpotMaxPricePercentageOverLowestPrice" InstanceRequirementsRequestProperty where
  type PropertyType "SpotMaxPricePercentageOverLowestPrice" InstanceRequirementsRequestProperty = Value Prelude.Integer
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {spotMaxPricePercentageOverLowestPrice = Prelude.pure newValue, ..}
instance Property "TotalLocalStorageGB" InstanceRequirementsRequestProperty where
  type PropertyType "TotalLocalStorageGB" InstanceRequirementsRequestProperty = TotalLocalStorageGBRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {totalLocalStorageGB = Prelude.pure newValue, ..}
instance Property "VCpuCount" InstanceRequirementsRequestProperty where
  type PropertyType "VCpuCount" InstanceRequirementsRequestProperty = VCpuCountRangeRequestProperty
  set newValue InstanceRequirementsRequestProperty {..}
    = InstanceRequirementsRequestProperty
        {vCpuCount = Prelude.pure newValue, ..}