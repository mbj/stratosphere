module Stratosphere.EC2.LaunchTemplate.LaunchTemplateDataProperty (
        module Exports, LaunchTemplateDataProperty(..),
        mkLaunchTemplateDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.CapacityReservationSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.CpuOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.CreditSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.ElasticGpuSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.EnclaveOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.HibernationOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.IamInstanceProfileProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.InstanceMarketOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.InstanceRequirementsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.LaunchTemplateElasticInferenceAcceleratorProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.LicenseSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MaintenanceOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MetadataOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.MonitoringProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.NetworkInterfaceProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.PlacementProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.PrivateDnsNameOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LaunchTemplateDataProperty
  = LaunchTemplateDataProperty {blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
                                capacityReservationSpecification :: (Prelude.Maybe CapacityReservationSpecificationProperty),
                                cpuOptions :: (Prelude.Maybe CpuOptionsProperty),
                                creditSpecification :: (Prelude.Maybe CreditSpecificationProperty),
                                disableApiStop :: (Prelude.Maybe (Value Prelude.Bool)),
                                disableApiTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                                ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                                elasticGpuSpecifications :: (Prelude.Maybe [ElasticGpuSpecificationProperty]),
                                elasticInferenceAccelerators :: (Prelude.Maybe [LaunchTemplateElasticInferenceAcceleratorProperty]),
                                enclaveOptions :: (Prelude.Maybe EnclaveOptionsProperty),
                                hibernationOptions :: (Prelude.Maybe HibernationOptionsProperty),
                                iamInstanceProfile :: (Prelude.Maybe IamInstanceProfileProperty),
                                imageId :: (Prelude.Maybe (Value Prelude.Text)),
                                instanceInitiatedShutdownBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                instanceMarketOptions :: (Prelude.Maybe InstanceMarketOptionsProperty),
                                instanceRequirements :: (Prelude.Maybe InstanceRequirementsProperty),
                                instanceType :: (Prelude.Maybe (Value Prelude.Text)),
                                kernelId :: (Prelude.Maybe (Value Prelude.Text)),
                                keyName :: (Prelude.Maybe (Value Prelude.Text)),
                                licenseSpecifications :: (Prelude.Maybe [LicenseSpecificationProperty]),
                                maintenanceOptions :: (Prelude.Maybe MaintenanceOptionsProperty),
                                metadataOptions :: (Prelude.Maybe MetadataOptionsProperty),
                                monitoring :: (Prelude.Maybe MonitoringProperty),
                                networkInterfaces :: (Prelude.Maybe [NetworkInterfaceProperty]),
                                placement :: (Prelude.Maybe PlacementProperty),
                                privateDnsNameOptions :: (Prelude.Maybe PrivateDnsNameOptionsProperty),
                                ramDiskId :: (Prelude.Maybe (Value Prelude.Text)),
                                securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
                                securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
                                tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                                userData :: (Prelude.Maybe (Value Prelude.Text))}
mkLaunchTemplateDataProperty :: LaunchTemplateDataProperty
mkLaunchTemplateDataProperty
  = LaunchTemplateDataProperty
      {blockDeviceMappings = Prelude.Nothing,
       capacityReservationSpecification = Prelude.Nothing,
       cpuOptions = Prelude.Nothing,
       creditSpecification = Prelude.Nothing,
       disableApiStop = Prelude.Nothing,
       disableApiTermination = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing,
       elasticGpuSpecifications = Prelude.Nothing,
       elasticInferenceAccelerators = Prelude.Nothing,
       enclaveOptions = Prelude.Nothing,
       hibernationOptions = Prelude.Nothing,
       iamInstanceProfile = Prelude.Nothing, imageId = Prelude.Nothing,
       instanceInitiatedShutdownBehavior = Prelude.Nothing,
       instanceMarketOptions = Prelude.Nothing,
       instanceRequirements = Prelude.Nothing,
       instanceType = Prelude.Nothing, kernelId = Prelude.Nothing,
       keyName = Prelude.Nothing, licenseSpecifications = Prelude.Nothing,
       maintenanceOptions = Prelude.Nothing,
       metadataOptions = Prelude.Nothing, monitoring = Prelude.Nothing,
       networkInterfaces = Prelude.Nothing, placement = Prelude.Nothing,
       privateDnsNameOptions = Prelude.Nothing,
       ramDiskId = Prelude.Nothing, securityGroupIds = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, userData = Prelude.Nothing}
instance ToResourceProperties LaunchTemplateDataProperty where
  toResourceProperties LaunchTemplateDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.LaunchTemplateData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                            (JSON..=) "CapacityReservationSpecification"
                              Prelude.<$> capacityReservationSpecification,
                            (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
                            (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
                            (JSON..=) "DisableApiStop" Prelude.<$> disableApiStop,
                            (JSON..=) "DisableApiTermination"
                              Prelude.<$> disableApiTermination,
                            (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                            (JSON..=) "ElasticGpuSpecifications"
                              Prelude.<$> elasticGpuSpecifications,
                            (JSON..=) "ElasticInferenceAccelerators"
                              Prelude.<$> elasticInferenceAccelerators,
                            (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
                            (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
                            (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                            (JSON..=) "ImageId" Prelude.<$> imageId,
                            (JSON..=) "InstanceInitiatedShutdownBehavior"
                              Prelude.<$> instanceInitiatedShutdownBehavior,
                            (JSON..=) "InstanceMarketOptions"
                              Prelude.<$> instanceMarketOptions,
                            (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "KernelId" Prelude.<$> kernelId,
                            (JSON..=) "KeyName" Prelude.<$> keyName,
                            (JSON..=) "LicenseSpecifications"
                              Prelude.<$> licenseSpecifications,
                            (JSON..=) "MaintenanceOptions" Prelude.<$> maintenanceOptions,
                            (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                            (JSON..=) "Monitoring" Prelude.<$> monitoring,
                            (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                            (JSON..=) "Placement" Prelude.<$> placement,
                            (JSON..=) "PrivateDnsNameOptions"
                              Prelude.<$> privateDnsNameOptions,
                            (JSON..=) "RamDiskId" Prelude.<$> ramDiskId,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                            (JSON..=) "UserData" Prelude.<$> userData])}
instance JSON.ToJSON LaunchTemplateDataProperty where
  toJSON LaunchTemplateDataProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
               (JSON..=) "CapacityReservationSpecification"
                 Prelude.<$> capacityReservationSpecification,
               (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
               (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
               (JSON..=) "DisableApiStop" Prelude.<$> disableApiStop,
               (JSON..=) "DisableApiTermination"
                 Prelude.<$> disableApiTermination,
               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
               (JSON..=) "ElasticGpuSpecifications"
                 Prelude.<$> elasticGpuSpecifications,
               (JSON..=) "ElasticInferenceAccelerators"
                 Prelude.<$> elasticInferenceAccelerators,
               (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
               (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
               (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
               (JSON..=) "ImageId" Prelude.<$> imageId,
               (JSON..=) "InstanceInitiatedShutdownBehavior"
                 Prelude.<$> instanceInitiatedShutdownBehavior,
               (JSON..=) "InstanceMarketOptions"
                 Prelude.<$> instanceMarketOptions,
               (JSON..=) "InstanceRequirements" Prelude.<$> instanceRequirements,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "KernelId" Prelude.<$> kernelId,
               (JSON..=) "KeyName" Prelude.<$> keyName,
               (JSON..=) "LicenseSpecifications"
                 Prelude.<$> licenseSpecifications,
               (JSON..=) "MaintenanceOptions" Prelude.<$> maintenanceOptions,
               (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
               (JSON..=) "Monitoring" Prelude.<$> monitoring,
               (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
               (JSON..=) "Placement" Prelude.<$> placement,
               (JSON..=) "PrivateDnsNameOptions"
                 Prelude.<$> privateDnsNameOptions,
               (JSON..=) "RamDiskId" Prelude.<$> ramDiskId,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
               (JSON..=) "UserData" Prelude.<$> userData]))
instance Property "BlockDeviceMappings" LaunchTemplateDataProperty where
  type PropertyType "BlockDeviceMappings" LaunchTemplateDataProperty = [BlockDeviceMappingProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "CapacityReservationSpecification" LaunchTemplateDataProperty where
  type PropertyType "CapacityReservationSpecification" LaunchTemplateDataProperty = CapacityReservationSpecificationProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {capacityReservationSpecification = Prelude.pure newValue, ..}
instance Property "CpuOptions" LaunchTemplateDataProperty where
  type PropertyType "CpuOptions" LaunchTemplateDataProperty = CpuOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {cpuOptions = Prelude.pure newValue, ..}
instance Property "CreditSpecification" LaunchTemplateDataProperty where
  type PropertyType "CreditSpecification" LaunchTemplateDataProperty = CreditSpecificationProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {creditSpecification = Prelude.pure newValue, ..}
instance Property "DisableApiStop" LaunchTemplateDataProperty where
  type PropertyType "DisableApiStop" LaunchTemplateDataProperty = Value Prelude.Bool
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {disableApiStop = Prelude.pure newValue, ..}
instance Property "DisableApiTermination" LaunchTemplateDataProperty where
  type PropertyType "DisableApiTermination" LaunchTemplateDataProperty = Value Prelude.Bool
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {disableApiTermination = Prelude.pure newValue, ..}
instance Property "EbsOptimized" LaunchTemplateDataProperty where
  type PropertyType "EbsOptimized" LaunchTemplateDataProperty = Value Prelude.Bool
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {ebsOptimized = Prelude.pure newValue, ..}
instance Property "ElasticGpuSpecifications" LaunchTemplateDataProperty where
  type PropertyType "ElasticGpuSpecifications" LaunchTemplateDataProperty = [ElasticGpuSpecificationProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {elasticGpuSpecifications = Prelude.pure newValue, ..}
instance Property "ElasticInferenceAccelerators" LaunchTemplateDataProperty where
  type PropertyType "ElasticInferenceAccelerators" LaunchTemplateDataProperty = [LaunchTemplateElasticInferenceAcceleratorProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {elasticInferenceAccelerators = Prelude.pure newValue, ..}
instance Property "EnclaveOptions" LaunchTemplateDataProperty where
  type PropertyType "EnclaveOptions" LaunchTemplateDataProperty = EnclaveOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {enclaveOptions = Prelude.pure newValue, ..}
instance Property "HibernationOptions" LaunchTemplateDataProperty where
  type PropertyType "HibernationOptions" LaunchTemplateDataProperty = HibernationOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {hibernationOptions = Prelude.pure newValue, ..}
instance Property "IamInstanceProfile" LaunchTemplateDataProperty where
  type PropertyType "IamInstanceProfile" LaunchTemplateDataProperty = IamInstanceProfileProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {iamInstanceProfile = Prelude.pure newValue, ..}
instance Property "ImageId" LaunchTemplateDataProperty where
  type PropertyType "ImageId" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty {imageId = Prelude.pure newValue, ..}
instance Property "InstanceInitiatedShutdownBehavior" LaunchTemplateDataProperty where
  type PropertyType "InstanceInitiatedShutdownBehavior" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {instanceInitiatedShutdownBehavior = Prelude.pure newValue, ..}
instance Property "InstanceMarketOptions" LaunchTemplateDataProperty where
  type PropertyType "InstanceMarketOptions" LaunchTemplateDataProperty = InstanceMarketOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {instanceMarketOptions = Prelude.pure newValue, ..}
instance Property "InstanceRequirements" LaunchTemplateDataProperty where
  type PropertyType "InstanceRequirements" LaunchTemplateDataProperty = InstanceRequirementsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {instanceRequirements = Prelude.pure newValue, ..}
instance Property "InstanceType" LaunchTemplateDataProperty where
  type PropertyType "InstanceType" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {instanceType = Prelude.pure newValue, ..}
instance Property "KernelId" LaunchTemplateDataProperty where
  type PropertyType "KernelId" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty {kernelId = Prelude.pure newValue, ..}
instance Property "KeyName" LaunchTemplateDataProperty where
  type PropertyType "KeyName" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty {keyName = Prelude.pure newValue, ..}
instance Property "LicenseSpecifications" LaunchTemplateDataProperty where
  type PropertyType "LicenseSpecifications" LaunchTemplateDataProperty = [LicenseSpecificationProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {licenseSpecifications = Prelude.pure newValue, ..}
instance Property "MaintenanceOptions" LaunchTemplateDataProperty where
  type PropertyType "MaintenanceOptions" LaunchTemplateDataProperty = MaintenanceOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {maintenanceOptions = Prelude.pure newValue, ..}
instance Property "MetadataOptions" LaunchTemplateDataProperty where
  type PropertyType "MetadataOptions" LaunchTemplateDataProperty = MetadataOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {metadataOptions = Prelude.pure newValue, ..}
instance Property "Monitoring" LaunchTemplateDataProperty where
  type PropertyType "Monitoring" LaunchTemplateDataProperty = MonitoringProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {monitoring = Prelude.pure newValue, ..}
instance Property "NetworkInterfaces" LaunchTemplateDataProperty where
  type PropertyType "NetworkInterfaces" LaunchTemplateDataProperty = [NetworkInterfaceProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {networkInterfaces = Prelude.pure newValue, ..}
instance Property "Placement" LaunchTemplateDataProperty where
  type PropertyType "Placement" LaunchTemplateDataProperty = PlacementProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {placement = Prelude.pure newValue, ..}
instance Property "PrivateDnsNameOptions" LaunchTemplateDataProperty where
  type PropertyType "PrivateDnsNameOptions" LaunchTemplateDataProperty = PrivateDnsNameOptionsProperty
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {privateDnsNameOptions = Prelude.pure newValue, ..}
instance Property "RamDiskId" LaunchTemplateDataProperty where
  type PropertyType "RamDiskId" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {ramDiskId = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" LaunchTemplateDataProperty where
  type PropertyType "SecurityGroupIds" LaunchTemplateDataProperty = ValueList Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SecurityGroups" LaunchTemplateDataProperty where
  type PropertyType "SecurityGroups" LaunchTemplateDataProperty = ValueList Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {securityGroups = Prelude.pure newValue, ..}
instance Property "TagSpecifications" LaunchTemplateDataProperty where
  type PropertyType "TagSpecifications" LaunchTemplateDataProperty = [TagSpecificationProperty]
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "UserData" LaunchTemplateDataProperty where
  type PropertyType "UserData" LaunchTemplateDataProperty = Value Prelude.Text
  set newValue LaunchTemplateDataProperty {..}
    = LaunchTemplateDataProperty {userData = Prelude.pure newValue, ..}