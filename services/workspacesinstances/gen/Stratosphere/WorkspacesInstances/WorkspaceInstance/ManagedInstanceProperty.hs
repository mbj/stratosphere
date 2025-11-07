module Stratosphere.WorkspacesInstances.WorkspaceInstance.ManagedInstanceProperty (
        module Exports, ManagedInstanceProperty(..),
        mkManagedInstanceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.CapacityReservationSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.CpuOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.CreditSpecificationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.EnclaveOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.HibernationOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.IamInstanceProfileSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMaintenanceOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMarketOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceMetadataOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceNetworkInterfaceSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.InstanceNetworkPerformanceOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.LicenseConfigurationRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.PlacementProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.PrivateDnsNameOptionsRequestProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.RunInstancesMonitoringEnabledProperty as Exports
import {-# SOURCE #-} Stratosphere.WorkspacesInstances.WorkspaceInstance.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ManagedInstanceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html>
    ManagedInstanceProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-blockdevicemappings>
                             blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-capacityreservationspecification>
                             capacityReservationSpecification :: (Prelude.Maybe CapacityReservationSpecificationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-cpuoptions>
                             cpuOptions :: (Prelude.Maybe CpuOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-creditspecification>
                             creditSpecification :: (Prelude.Maybe CreditSpecificationRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-disableapistop>
                             disableApiStop :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-ebsoptimized>
                             ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-enableprimaryipv6>
                             enablePrimaryIpv6 :: (Prelude.Maybe (Value Prelude.Bool)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-enclaveoptions>
                             enclaveOptions :: (Prelude.Maybe EnclaveOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-hibernationoptions>
                             hibernationOptions :: (Prelude.Maybe HibernationOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-iaminstanceprofile>
                             iamInstanceProfile :: (Prelude.Maybe IamInstanceProfileSpecificationProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-imageid>
                             imageId :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-instancemarketoptions>
                             instanceMarketOptions :: (Prelude.Maybe InstanceMarketOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-instancetype>
                             instanceType :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-ipv6addresscount>
                             ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-keyname>
                             keyName :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-licensespecifications>
                             licenseSpecifications :: (Prelude.Maybe [LicenseConfigurationRequestProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-maintenanceoptions>
                             maintenanceOptions :: (Prelude.Maybe InstanceMaintenanceOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-metadataoptions>
                             metadataOptions :: (Prelude.Maybe InstanceMetadataOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-monitoring>
                             monitoring :: (Prelude.Maybe RunInstancesMonitoringEnabledProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-networkinterfaces>
                             networkInterfaces :: (Prelude.Maybe [InstanceNetworkInterfaceSpecificationProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-networkperformanceoptions>
                             networkPerformanceOptions :: (Prelude.Maybe InstanceNetworkPerformanceOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-placement>
                             placement :: (Prelude.Maybe PlacementProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-privatednsnameoptions>
                             privateDnsNameOptions :: (Prelude.Maybe PrivateDnsNameOptionsRequestProperty),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-subnetid>
                             subnetId :: (Prelude.Maybe (Value Prelude.Text)),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-tagspecifications>
                             tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-workspacesinstances-workspaceinstance-managedinstance.html#cfn-workspacesinstances-workspaceinstance-managedinstance-userdata>
                             userData :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkManagedInstanceProperty ::
  Value Prelude.Text -> Value Prelude.Text -> ManagedInstanceProperty
mkManagedInstanceProperty imageId instanceType
  = ManagedInstanceProperty
      {haddock_workaround_ = (), imageId = imageId,
       instanceType = instanceType, blockDeviceMappings = Prelude.Nothing,
       capacityReservationSpecification = Prelude.Nothing,
       cpuOptions = Prelude.Nothing,
       creditSpecification = Prelude.Nothing,
       disableApiStop = Prelude.Nothing, ebsOptimized = Prelude.Nothing,
       enablePrimaryIpv6 = Prelude.Nothing,
       enclaveOptions = Prelude.Nothing,
       hibernationOptions = Prelude.Nothing,
       iamInstanceProfile = Prelude.Nothing,
       instanceMarketOptions = Prelude.Nothing,
       ipv6AddressCount = Prelude.Nothing, keyName = Prelude.Nothing,
       licenseSpecifications = Prelude.Nothing,
       maintenanceOptions = Prelude.Nothing,
       metadataOptions = Prelude.Nothing, monitoring = Prelude.Nothing,
       networkInterfaces = Prelude.Nothing,
       networkPerformanceOptions = Prelude.Nothing,
       placement = Prelude.Nothing,
       privateDnsNameOptions = Prelude.Nothing,
       subnetId = Prelude.Nothing, tagSpecifications = Prelude.Nothing,
       userData = Prelude.Nothing}
instance ToResourceProperties ManagedInstanceProperty where
  toResourceProperties ManagedInstanceProperty {..}
    = ResourceProperties
        {awsType = "AWS::WorkspacesInstances::WorkspaceInstance.ManagedInstance",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                               (JSON..=) "CapacityReservationSpecification"
                                 Prelude.<$> capacityReservationSpecification,
                               (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
                               (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
                               (JSON..=) "DisableApiStop" Prelude.<$> disableApiStop,
                               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "EnablePrimaryIpv6" Prelude.<$> enablePrimaryIpv6,
                               (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
                               (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
                               (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                               (JSON..=) "InstanceMarketOptions"
                                 Prelude.<$> instanceMarketOptions,
                               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                               (JSON..=) "KeyName" Prelude.<$> keyName,
                               (JSON..=) "LicenseSpecifications"
                                 Prelude.<$> licenseSpecifications,
                               (JSON..=) "MaintenanceOptions" Prelude.<$> maintenanceOptions,
                               (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                               (JSON..=) "Monitoring" Prelude.<$> monitoring,
                               (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                               (JSON..=) "NetworkPerformanceOptions"
                                 Prelude.<$> networkPerformanceOptions,
                               (JSON..=) "Placement" Prelude.<$> placement,
                               (JSON..=) "PrivateDnsNameOptions"
                                 Prelude.<$> privateDnsNameOptions,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "UserData" Prelude.<$> userData]))}
instance JSON.ToJSON ManagedInstanceProperty where
  toJSON ManagedInstanceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ImageId" JSON..= imageId, "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                  (JSON..=) "CapacityReservationSpecification"
                    Prelude.<$> capacityReservationSpecification,
                  (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
                  (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
                  (JSON..=) "DisableApiStop" Prelude.<$> disableApiStop,
                  (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "EnablePrimaryIpv6" Prelude.<$> enablePrimaryIpv6,
                  (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
                  (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
                  (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                  (JSON..=) "InstanceMarketOptions"
                    Prelude.<$> instanceMarketOptions,
                  (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                  (JSON..=) "KeyName" Prelude.<$> keyName,
                  (JSON..=) "LicenseSpecifications"
                    Prelude.<$> licenseSpecifications,
                  (JSON..=) "MaintenanceOptions" Prelude.<$> maintenanceOptions,
                  (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                  (JSON..=) "Monitoring" Prelude.<$> monitoring,
                  (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                  (JSON..=) "NetworkPerformanceOptions"
                    Prelude.<$> networkPerformanceOptions,
                  (JSON..=) "Placement" Prelude.<$> placement,
                  (JSON..=) "PrivateDnsNameOptions"
                    Prelude.<$> privateDnsNameOptions,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "UserData" Prelude.<$> userData])))
instance Property "BlockDeviceMappings" ManagedInstanceProperty where
  type PropertyType "BlockDeviceMappings" ManagedInstanceProperty = [BlockDeviceMappingProperty]
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "CapacityReservationSpecification" ManagedInstanceProperty where
  type PropertyType "CapacityReservationSpecification" ManagedInstanceProperty = CapacityReservationSpecificationProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {capacityReservationSpecification = Prelude.pure newValue, ..}
instance Property "CpuOptions" ManagedInstanceProperty where
  type PropertyType "CpuOptions" ManagedInstanceProperty = CpuOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {cpuOptions = Prelude.pure newValue, ..}
instance Property "CreditSpecification" ManagedInstanceProperty where
  type PropertyType "CreditSpecification" ManagedInstanceProperty = CreditSpecificationRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {creditSpecification = Prelude.pure newValue, ..}
instance Property "DisableApiStop" ManagedInstanceProperty where
  type PropertyType "DisableApiStop" ManagedInstanceProperty = Value Prelude.Bool
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {disableApiStop = Prelude.pure newValue, ..}
instance Property "EbsOptimized" ManagedInstanceProperty where
  type PropertyType "EbsOptimized" ManagedInstanceProperty = Value Prelude.Bool
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {ebsOptimized = Prelude.pure newValue, ..}
instance Property "EnablePrimaryIpv6" ManagedInstanceProperty where
  type PropertyType "EnablePrimaryIpv6" ManagedInstanceProperty = Value Prelude.Bool
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {enablePrimaryIpv6 = Prelude.pure newValue, ..}
instance Property "EnclaveOptions" ManagedInstanceProperty where
  type PropertyType "EnclaveOptions" ManagedInstanceProperty = EnclaveOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {enclaveOptions = Prelude.pure newValue, ..}
instance Property "HibernationOptions" ManagedInstanceProperty where
  type PropertyType "HibernationOptions" ManagedInstanceProperty = HibernationOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {hibernationOptions = Prelude.pure newValue, ..}
instance Property "IamInstanceProfile" ManagedInstanceProperty where
  type PropertyType "IamInstanceProfile" ManagedInstanceProperty = IamInstanceProfileSpecificationProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {iamInstanceProfile = Prelude.pure newValue, ..}
instance Property "ImageId" ManagedInstanceProperty where
  type PropertyType "ImageId" ManagedInstanceProperty = Value Prelude.Text
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {imageId = newValue, ..}
instance Property "InstanceMarketOptions" ManagedInstanceProperty where
  type PropertyType "InstanceMarketOptions" ManagedInstanceProperty = InstanceMarketOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {instanceMarketOptions = Prelude.pure newValue, ..}
instance Property "InstanceType" ManagedInstanceProperty where
  type PropertyType "InstanceType" ManagedInstanceProperty = Value Prelude.Text
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {instanceType = newValue, ..}
instance Property "Ipv6AddressCount" ManagedInstanceProperty where
  type PropertyType "Ipv6AddressCount" ManagedInstanceProperty = Value Prelude.Integer
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "KeyName" ManagedInstanceProperty where
  type PropertyType "KeyName" ManagedInstanceProperty = Value Prelude.Text
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {keyName = Prelude.pure newValue, ..}
instance Property "LicenseSpecifications" ManagedInstanceProperty where
  type PropertyType "LicenseSpecifications" ManagedInstanceProperty = [LicenseConfigurationRequestProperty]
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {licenseSpecifications = Prelude.pure newValue, ..}
instance Property "MaintenanceOptions" ManagedInstanceProperty where
  type PropertyType "MaintenanceOptions" ManagedInstanceProperty = InstanceMaintenanceOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {maintenanceOptions = Prelude.pure newValue, ..}
instance Property "MetadataOptions" ManagedInstanceProperty where
  type PropertyType "MetadataOptions" ManagedInstanceProperty = InstanceMetadataOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {metadataOptions = Prelude.pure newValue, ..}
instance Property "Monitoring" ManagedInstanceProperty where
  type PropertyType "Monitoring" ManagedInstanceProperty = RunInstancesMonitoringEnabledProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {monitoring = Prelude.pure newValue, ..}
instance Property "NetworkInterfaces" ManagedInstanceProperty where
  type PropertyType "NetworkInterfaces" ManagedInstanceProperty = [InstanceNetworkInterfaceSpecificationProperty]
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {networkInterfaces = Prelude.pure newValue, ..}
instance Property "NetworkPerformanceOptions" ManagedInstanceProperty where
  type PropertyType "NetworkPerformanceOptions" ManagedInstanceProperty = InstanceNetworkPerformanceOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {networkPerformanceOptions = Prelude.pure newValue, ..}
instance Property "Placement" ManagedInstanceProperty where
  type PropertyType "Placement" ManagedInstanceProperty = PlacementProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {placement = Prelude.pure newValue, ..}
instance Property "PrivateDnsNameOptions" ManagedInstanceProperty where
  type PropertyType "PrivateDnsNameOptions" ManagedInstanceProperty = PrivateDnsNameOptionsRequestProperty
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {privateDnsNameOptions = Prelude.pure newValue, ..}
instance Property "SubnetId" ManagedInstanceProperty where
  type PropertyType "SubnetId" ManagedInstanceProperty = Value Prelude.Text
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {subnetId = Prelude.pure newValue, ..}
instance Property "TagSpecifications" ManagedInstanceProperty where
  type PropertyType "TagSpecifications" ManagedInstanceProperty = [TagSpecificationProperty]
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "UserData" ManagedInstanceProperty where
  type PropertyType "UserData" ManagedInstanceProperty = Value Prelude.Text
  set newValue ManagedInstanceProperty {..}
    = ManagedInstanceProperty {userData = Prelude.pure newValue, ..}