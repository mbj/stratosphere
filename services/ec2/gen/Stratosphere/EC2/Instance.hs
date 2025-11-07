module Stratosphere.EC2.Instance (
        module Exports, Instance(..), mkInstance
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Instance.BlockDeviceMappingProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.CpuOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.CreditSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.ElasticGpuSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.ElasticInferenceAcceleratorProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.EnclaveOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.HibernationOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.InstanceIpv6AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.LaunchTemplateSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.LicenseSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.MetadataOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.NetworkInterfaceProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.PrivateDnsNameOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.SsmAssociationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.VolumeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Instance
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html>
    Instance {haddock_workaround_ :: (),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-additionalinfo>
              additionalInfo :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-affinity>
              affinity :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-availabilityzone>
              availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-blockdevicemappings>
              blockDeviceMappings :: (Prelude.Maybe [BlockDeviceMappingProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-cpuoptions>
              cpuOptions :: (Prelude.Maybe CpuOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-creditspecification>
              creditSpecification :: (Prelude.Maybe CreditSpecificationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-disableapitermination>
              disableApiTermination :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-ebsoptimized>
              ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-elasticgpuspecifications>
              elasticGpuSpecifications :: (Prelude.Maybe [ElasticGpuSpecificationProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-elasticinferenceaccelerators>
              elasticInferenceAccelerators :: (Prelude.Maybe [ElasticInferenceAcceleratorProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-enclaveoptions>
              enclaveOptions :: (Prelude.Maybe EnclaveOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-hibernationoptions>
              hibernationOptions :: (Prelude.Maybe HibernationOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-hostid>
              hostId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-hostresourcegrouparn>
              hostResourceGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-iaminstanceprofile>
              iamInstanceProfile :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-imageid>
              imageId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-instanceinitiatedshutdownbehavior>
              instanceInitiatedShutdownBehavior :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-instancetype>
              instanceType :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-ipv6addresscount>
              ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-ipv6addresses>
              ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-kernelid>
              kernelId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-keyname>
              keyName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-launchtemplate>
              launchTemplate :: (Prelude.Maybe LaunchTemplateSpecificationProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-licensespecifications>
              licenseSpecifications :: (Prelude.Maybe [LicenseSpecificationProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-metadataoptions>
              metadataOptions :: (Prelude.Maybe MetadataOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-monitoring>
              monitoring :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-networkinterfaces>
              networkInterfaces :: (Prelude.Maybe [NetworkInterfaceProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-placementgroupname>
              placementGroupName :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-privatednsnameoptions>
              privateDnsNameOptions :: (Prelude.Maybe PrivateDnsNameOptionsProperty),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-privateipaddress>
              privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-propagatetagstovolumeoncreation>
              propagateTagsToVolumeOnCreation :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-ramdiskid>
              ramdiskId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-securitygroupids>
              securityGroupIds :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-securitygroups>
              securityGroups :: (Prelude.Maybe (ValueList Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-sourcedestcheck>
              sourceDestCheck :: (Prelude.Maybe (Value Prelude.Bool)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-ssmassociations>
              ssmAssociations :: (Prelude.Maybe [SsmAssociationProperty]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-subnetid>
              subnetId :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-tags>
              tags :: (Prelude.Maybe [Tag]),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-tenancy>
              tenancy :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-userdata>
              userData :: (Prelude.Maybe (Value Prelude.Text)),
              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-instance.html#cfn-ec2-instance-volumes>
              volumes :: (Prelude.Maybe [VolumeProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstance :: Instance
mkInstance
  = Instance
      {haddock_workaround_ = (), additionalInfo = Prelude.Nothing,
       affinity = Prelude.Nothing, availabilityZone = Prelude.Nothing,
       blockDeviceMappings = Prelude.Nothing,
       cpuOptions = Prelude.Nothing,
       creditSpecification = Prelude.Nothing,
       disableApiTermination = Prelude.Nothing,
       ebsOptimized = Prelude.Nothing,
       elasticGpuSpecifications = Prelude.Nothing,
       elasticInferenceAccelerators = Prelude.Nothing,
       enclaveOptions = Prelude.Nothing,
       hibernationOptions = Prelude.Nothing, hostId = Prelude.Nothing,
       hostResourceGroupArn = Prelude.Nothing,
       iamInstanceProfile = Prelude.Nothing, imageId = Prelude.Nothing,
       instanceInitiatedShutdownBehavior = Prelude.Nothing,
       instanceType = Prelude.Nothing, ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing, kernelId = Prelude.Nothing,
       keyName = Prelude.Nothing, launchTemplate = Prelude.Nothing,
       licenseSpecifications = Prelude.Nothing,
       metadataOptions = Prelude.Nothing, monitoring = Prelude.Nothing,
       networkInterfaces = Prelude.Nothing,
       placementGroupName = Prelude.Nothing,
       privateDnsNameOptions = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing,
       propagateTagsToVolumeOnCreation = Prelude.Nothing,
       ramdiskId = Prelude.Nothing, securityGroupIds = Prelude.Nothing,
       securityGroups = Prelude.Nothing,
       sourceDestCheck = Prelude.Nothing,
       ssmAssociations = Prelude.Nothing, subnetId = Prelude.Nothing,
       tags = Prelude.Nothing, tenancy = Prelude.Nothing,
       userData = Prelude.Nothing, volumes = Prelude.Nothing}
instance ToResourceProperties Instance where
  toResourceProperties Instance {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
                            (JSON..=) "Affinity" Prelude.<$> affinity,
                            (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                            (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
                            (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
                            (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
                            (JSON..=) "DisableApiTermination"
                              Prelude.<$> disableApiTermination,
                            (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                            (JSON..=) "ElasticGpuSpecifications"
                              Prelude.<$> elasticGpuSpecifications,
                            (JSON..=) "ElasticInferenceAccelerators"
                              Prelude.<$> elasticInferenceAccelerators,
                            (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
                            (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
                            (JSON..=) "HostId" Prelude.<$> hostId,
                            (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
                            (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
                            (JSON..=) "ImageId" Prelude.<$> imageId,
                            (JSON..=) "InstanceInitiatedShutdownBehavior"
                              Prelude.<$> instanceInitiatedShutdownBehavior,
                            (JSON..=) "InstanceType" Prelude.<$> instanceType,
                            (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                            (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                            (JSON..=) "KernelId" Prelude.<$> kernelId,
                            (JSON..=) "KeyName" Prelude.<$> keyName,
                            (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
                            (JSON..=) "LicenseSpecifications"
                              Prelude.<$> licenseSpecifications,
                            (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
                            (JSON..=) "Monitoring" Prelude.<$> monitoring,
                            (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
                            (JSON..=) "PlacementGroupName" Prelude.<$> placementGroupName,
                            (JSON..=) "PrivateDnsNameOptions"
                              Prelude.<$> privateDnsNameOptions,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                            (JSON..=) "PropagateTagsToVolumeOnCreation"
                              Prelude.<$> propagateTagsToVolumeOnCreation,
                            (JSON..=) "RamdiskId" Prelude.<$> ramdiskId,
                            (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
                            (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
                            (JSON..=) "SourceDestCheck" Prelude.<$> sourceDestCheck,
                            (JSON..=) "SsmAssociations" Prelude.<$> ssmAssociations,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Tenancy" Prelude.<$> tenancy,
                            (JSON..=) "UserData" Prelude.<$> userData,
                            (JSON..=) "Volumes" Prelude.<$> volumes])}
instance JSON.ToJSON Instance where
  toJSON Instance {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdditionalInfo" Prelude.<$> additionalInfo,
               (JSON..=) "Affinity" Prelude.<$> affinity,
               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
               (JSON..=) "BlockDeviceMappings" Prelude.<$> blockDeviceMappings,
               (JSON..=) "CpuOptions" Prelude.<$> cpuOptions,
               (JSON..=) "CreditSpecification" Prelude.<$> creditSpecification,
               (JSON..=) "DisableApiTermination"
                 Prelude.<$> disableApiTermination,
               (JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
               (JSON..=) "ElasticGpuSpecifications"
                 Prelude.<$> elasticGpuSpecifications,
               (JSON..=) "ElasticInferenceAccelerators"
                 Prelude.<$> elasticInferenceAccelerators,
               (JSON..=) "EnclaveOptions" Prelude.<$> enclaveOptions,
               (JSON..=) "HibernationOptions" Prelude.<$> hibernationOptions,
               (JSON..=) "HostId" Prelude.<$> hostId,
               (JSON..=) "HostResourceGroupArn" Prelude.<$> hostResourceGroupArn,
               (JSON..=) "IamInstanceProfile" Prelude.<$> iamInstanceProfile,
               (JSON..=) "ImageId" Prelude.<$> imageId,
               (JSON..=) "InstanceInitiatedShutdownBehavior"
                 Prelude.<$> instanceInitiatedShutdownBehavior,
               (JSON..=) "InstanceType" Prelude.<$> instanceType,
               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
               (JSON..=) "KernelId" Prelude.<$> kernelId,
               (JSON..=) "KeyName" Prelude.<$> keyName,
               (JSON..=) "LaunchTemplate" Prelude.<$> launchTemplate,
               (JSON..=) "LicenseSpecifications"
                 Prelude.<$> licenseSpecifications,
               (JSON..=) "MetadataOptions" Prelude.<$> metadataOptions,
               (JSON..=) "Monitoring" Prelude.<$> monitoring,
               (JSON..=) "NetworkInterfaces" Prelude.<$> networkInterfaces,
               (JSON..=) "PlacementGroupName" Prelude.<$> placementGroupName,
               (JSON..=) "PrivateDnsNameOptions"
                 Prelude.<$> privateDnsNameOptions,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
               (JSON..=) "PropagateTagsToVolumeOnCreation"
                 Prelude.<$> propagateTagsToVolumeOnCreation,
               (JSON..=) "RamdiskId" Prelude.<$> ramdiskId,
               (JSON..=) "SecurityGroupIds" Prelude.<$> securityGroupIds,
               (JSON..=) "SecurityGroups" Prelude.<$> securityGroups,
               (JSON..=) "SourceDestCheck" Prelude.<$> sourceDestCheck,
               (JSON..=) "SsmAssociations" Prelude.<$> ssmAssociations,
               (JSON..=) "SubnetId" Prelude.<$> subnetId,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Tenancy" Prelude.<$> tenancy,
               (JSON..=) "UserData" Prelude.<$> userData,
               (JSON..=) "Volumes" Prelude.<$> volumes]))
instance Property "AdditionalInfo" Instance where
  type PropertyType "AdditionalInfo" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {additionalInfo = Prelude.pure newValue, ..}
instance Property "Affinity" Instance where
  type PropertyType "Affinity" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {affinity = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Instance where
  type PropertyType "AvailabilityZone" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {availabilityZone = Prelude.pure newValue, ..}
instance Property "BlockDeviceMappings" Instance where
  type PropertyType "BlockDeviceMappings" Instance = [BlockDeviceMappingProperty]
  set newValue Instance {..}
    = Instance {blockDeviceMappings = Prelude.pure newValue, ..}
instance Property "CpuOptions" Instance where
  type PropertyType "CpuOptions" Instance = CpuOptionsProperty
  set newValue Instance {..}
    = Instance {cpuOptions = Prelude.pure newValue, ..}
instance Property "CreditSpecification" Instance where
  type PropertyType "CreditSpecification" Instance = CreditSpecificationProperty
  set newValue Instance {..}
    = Instance {creditSpecification = Prelude.pure newValue, ..}
instance Property "DisableApiTermination" Instance where
  type PropertyType "DisableApiTermination" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {disableApiTermination = Prelude.pure newValue, ..}
instance Property "EbsOptimized" Instance where
  type PropertyType "EbsOptimized" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {ebsOptimized = Prelude.pure newValue, ..}
instance Property "ElasticGpuSpecifications" Instance where
  type PropertyType "ElasticGpuSpecifications" Instance = [ElasticGpuSpecificationProperty]
  set newValue Instance {..}
    = Instance {elasticGpuSpecifications = Prelude.pure newValue, ..}
instance Property "ElasticInferenceAccelerators" Instance where
  type PropertyType "ElasticInferenceAccelerators" Instance = [ElasticInferenceAcceleratorProperty]
  set newValue Instance {..}
    = Instance
        {elasticInferenceAccelerators = Prelude.pure newValue, ..}
instance Property "EnclaveOptions" Instance where
  type PropertyType "EnclaveOptions" Instance = EnclaveOptionsProperty
  set newValue Instance {..}
    = Instance {enclaveOptions = Prelude.pure newValue, ..}
instance Property "HibernationOptions" Instance where
  type PropertyType "HibernationOptions" Instance = HibernationOptionsProperty
  set newValue Instance {..}
    = Instance {hibernationOptions = Prelude.pure newValue, ..}
instance Property "HostId" Instance where
  type PropertyType "HostId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {hostId = Prelude.pure newValue, ..}
instance Property "HostResourceGroupArn" Instance where
  type PropertyType "HostResourceGroupArn" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {hostResourceGroupArn = Prelude.pure newValue, ..}
instance Property "IamInstanceProfile" Instance where
  type PropertyType "IamInstanceProfile" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {iamInstanceProfile = Prelude.pure newValue, ..}
instance Property "ImageId" Instance where
  type PropertyType "ImageId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {imageId = Prelude.pure newValue, ..}
instance Property "InstanceInitiatedShutdownBehavior" Instance where
  type PropertyType "InstanceInitiatedShutdownBehavior" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance
        {instanceInitiatedShutdownBehavior = Prelude.pure newValue, ..}
instance Property "InstanceType" Instance where
  type PropertyType "InstanceType" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {instanceType = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" Instance where
  type PropertyType "Ipv6AddressCount" Instance = Value Prelude.Integer
  set newValue Instance {..}
    = Instance {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" Instance where
  type PropertyType "Ipv6Addresses" Instance = [InstanceIpv6AddressProperty]
  set newValue Instance {..}
    = Instance {ipv6Addresses = Prelude.pure newValue, ..}
instance Property "KernelId" Instance where
  type PropertyType "KernelId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {kernelId = Prelude.pure newValue, ..}
instance Property "KeyName" Instance where
  type PropertyType "KeyName" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {keyName = Prelude.pure newValue, ..}
instance Property "LaunchTemplate" Instance where
  type PropertyType "LaunchTemplate" Instance = LaunchTemplateSpecificationProperty
  set newValue Instance {..}
    = Instance {launchTemplate = Prelude.pure newValue, ..}
instance Property "LicenseSpecifications" Instance where
  type PropertyType "LicenseSpecifications" Instance = [LicenseSpecificationProperty]
  set newValue Instance {..}
    = Instance {licenseSpecifications = Prelude.pure newValue, ..}
instance Property "MetadataOptions" Instance where
  type PropertyType "MetadataOptions" Instance = MetadataOptionsProperty
  set newValue Instance {..}
    = Instance {metadataOptions = Prelude.pure newValue, ..}
instance Property "Monitoring" Instance where
  type PropertyType "Monitoring" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {monitoring = Prelude.pure newValue, ..}
instance Property "NetworkInterfaces" Instance where
  type PropertyType "NetworkInterfaces" Instance = [NetworkInterfaceProperty]
  set newValue Instance {..}
    = Instance {networkInterfaces = Prelude.pure newValue, ..}
instance Property "PlacementGroupName" Instance where
  type PropertyType "PlacementGroupName" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {placementGroupName = Prelude.pure newValue, ..}
instance Property "PrivateDnsNameOptions" Instance where
  type PropertyType "PrivateDnsNameOptions" Instance = PrivateDnsNameOptionsProperty
  set newValue Instance {..}
    = Instance {privateDnsNameOptions = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" Instance where
  type PropertyType "PrivateIpAddress" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {privateIpAddress = Prelude.pure newValue, ..}
instance Property "PropagateTagsToVolumeOnCreation" Instance where
  type PropertyType "PropagateTagsToVolumeOnCreation" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance
        {propagateTagsToVolumeOnCreation = Prelude.pure newValue, ..}
instance Property "RamdiskId" Instance where
  type PropertyType "RamdiskId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {ramdiskId = Prelude.pure newValue, ..}
instance Property "SecurityGroupIds" Instance where
  type PropertyType "SecurityGroupIds" Instance = ValueList Prelude.Text
  set newValue Instance {..}
    = Instance {securityGroupIds = Prelude.pure newValue, ..}
instance Property "SecurityGroups" Instance where
  type PropertyType "SecurityGroups" Instance = ValueList Prelude.Text
  set newValue Instance {..}
    = Instance {securityGroups = Prelude.pure newValue, ..}
instance Property "SourceDestCheck" Instance where
  type PropertyType "SourceDestCheck" Instance = Value Prelude.Bool
  set newValue Instance {..}
    = Instance {sourceDestCheck = Prelude.pure newValue, ..}
instance Property "SsmAssociations" Instance where
  type PropertyType "SsmAssociations" Instance = [SsmAssociationProperty]
  set newValue Instance {..}
    = Instance {ssmAssociations = Prelude.pure newValue, ..}
instance Property "SubnetId" Instance where
  type PropertyType "SubnetId" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {subnetId = Prelude.pure newValue, ..}
instance Property "Tags" Instance where
  type PropertyType "Tags" Instance = [Tag]
  set newValue Instance {..}
    = Instance {tags = Prelude.pure newValue, ..}
instance Property "Tenancy" Instance where
  type PropertyType "Tenancy" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {tenancy = Prelude.pure newValue, ..}
instance Property "UserData" Instance where
  type PropertyType "UserData" Instance = Value Prelude.Text
  set newValue Instance {..}
    = Instance {userData = Prelude.pure newValue, ..}
instance Property "Volumes" Instance where
  type PropertyType "Volumes" Instance = [VolumeProperty]
  set newValue Instance {..}
    = Instance {volumes = Prelude.pure newValue, ..}