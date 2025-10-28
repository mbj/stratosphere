module Stratosphere.Deadline.Fleet.CustomerManagedWorkerCapabilitiesProperty (
        module Exports, CustomerManagedWorkerCapabilitiesProperty(..),
        mkCustomerManagedWorkerCapabilitiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.AcceleratorCountRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.AcceleratorTotalMemoryMiBRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAmountCapabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.FleetAttributeCapabilityProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.MemoryMiBRangeProperty as Exports
import {-# SOURCE #-} Stratosphere.Deadline.Fleet.VCpuCountRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomerManagedWorkerCapabilitiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html>
    CustomerManagedWorkerCapabilitiesProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-acceleratorcount>
                                               acceleratorCount :: (Prelude.Maybe AcceleratorCountRangeProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-acceleratortotalmemorymib>
                                               acceleratorTotalMemoryMiB :: (Prelude.Maybe AcceleratorTotalMemoryMiBRangeProperty),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-acceleratortypes>
                                               acceleratorTypes :: (Prelude.Maybe (ValueList Prelude.Text)),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-cpuarchitecturetype>
                                               cpuArchitectureType :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-customamounts>
                                               customAmounts :: (Prelude.Maybe [FleetAmountCapabilityProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-customattributes>
                                               customAttributes :: (Prelude.Maybe [FleetAttributeCapabilityProperty]),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-memorymib>
                                               memoryMiB :: MemoryMiBRangeProperty,
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-osfamily>
                                               osFamily :: (Value Prelude.Text),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-deadline-fleet-customermanagedworkercapabilities.html#cfn-deadline-fleet-customermanagedworkercapabilities-vcpucount>
                                               vCpuCount :: VCpuCountRangeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomerManagedWorkerCapabilitiesProperty ::
  Value Prelude.Text
  -> MemoryMiBRangeProperty
     -> Value Prelude.Text
        -> VCpuCountRangeProperty
           -> CustomerManagedWorkerCapabilitiesProperty
mkCustomerManagedWorkerCapabilitiesProperty
  cpuArchitectureType
  memoryMiB
  osFamily
  vCpuCount
  = CustomerManagedWorkerCapabilitiesProperty
      {haddock_workaround_ = (),
       cpuArchitectureType = cpuArchitectureType, memoryMiB = memoryMiB,
       osFamily = osFamily, vCpuCount = vCpuCount,
       acceleratorCount = Prelude.Nothing,
       acceleratorTotalMemoryMiB = Prelude.Nothing,
       acceleratorTypes = Prelude.Nothing,
       customAmounts = Prelude.Nothing,
       customAttributes = Prelude.Nothing}
instance ToResourceProperties CustomerManagedWorkerCapabilitiesProperty where
  toResourceProperties CustomerManagedWorkerCapabilitiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.CustomerManagedWorkerCapabilities",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CpuArchitectureType" JSON..= cpuArchitectureType,
                            "MemoryMiB" JSON..= memoryMiB, "OsFamily" JSON..= osFamily,
                            "VCpuCount" JSON..= vCpuCount]
                           (Prelude.catMaybes
                              [(JSON..=) "AcceleratorCount" Prelude.<$> acceleratorCount,
                               (JSON..=) "AcceleratorTotalMemoryMiB"
                                 Prelude.<$> acceleratorTotalMemoryMiB,
                               (JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
                               (JSON..=) "CustomAmounts" Prelude.<$> customAmounts,
                               (JSON..=) "CustomAttributes" Prelude.<$> customAttributes]))}
instance JSON.ToJSON CustomerManagedWorkerCapabilitiesProperty where
  toJSON CustomerManagedWorkerCapabilitiesProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CpuArchitectureType" JSON..= cpuArchitectureType,
               "MemoryMiB" JSON..= memoryMiB, "OsFamily" JSON..= osFamily,
               "VCpuCount" JSON..= vCpuCount]
              (Prelude.catMaybes
                 [(JSON..=) "AcceleratorCount" Prelude.<$> acceleratorCount,
                  (JSON..=) "AcceleratorTotalMemoryMiB"
                    Prelude.<$> acceleratorTotalMemoryMiB,
                  (JSON..=) "AcceleratorTypes" Prelude.<$> acceleratorTypes,
                  (JSON..=) "CustomAmounts" Prelude.<$> customAmounts,
                  (JSON..=) "CustomAttributes" Prelude.<$> customAttributes])))
instance Property "AcceleratorCount" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "AcceleratorCount" CustomerManagedWorkerCapabilitiesProperty = AcceleratorCountRangeProperty
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {acceleratorCount = Prelude.pure newValue, ..}
instance Property "AcceleratorTotalMemoryMiB" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "AcceleratorTotalMemoryMiB" CustomerManagedWorkerCapabilitiesProperty = AcceleratorTotalMemoryMiBRangeProperty
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {acceleratorTotalMemoryMiB = Prelude.pure newValue, ..}
instance Property "AcceleratorTypes" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "AcceleratorTypes" CustomerManagedWorkerCapabilitiesProperty = ValueList Prelude.Text
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {acceleratorTypes = Prelude.pure newValue, ..}
instance Property "CpuArchitectureType" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "CpuArchitectureType" CustomerManagedWorkerCapabilitiesProperty = Value Prelude.Text
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {cpuArchitectureType = newValue, ..}
instance Property "CustomAmounts" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "CustomAmounts" CustomerManagedWorkerCapabilitiesProperty = [FleetAmountCapabilityProperty]
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {customAmounts = Prelude.pure newValue, ..}
instance Property "CustomAttributes" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "CustomAttributes" CustomerManagedWorkerCapabilitiesProperty = [FleetAttributeCapabilityProperty]
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {customAttributes = Prelude.pure newValue, ..}
instance Property "MemoryMiB" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "MemoryMiB" CustomerManagedWorkerCapabilitiesProperty = MemoryMiBRangeProperty
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {memoryMiB = newValue, ..}
instance Property "OsFamily" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "OsFamily" CustomerManagedWorkerCapabilitiesProperty = Value Prelude.Text
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {osFamily = newValue, ..}
instance Property "VCpuCount" CustomerManagedWorkerCapabilitiesProperty where
  type PropertyType "VCpuCount" CustomerManagedWorkerCapabilitiesProperty = VCpuCountRangeProperty
  set newValue CustomerManagedWorkerCapabilitiesProperty {..}
    = CustomerManagedWorkerCapabilitiesProperty
        {vCpuCount = newValue, ..}