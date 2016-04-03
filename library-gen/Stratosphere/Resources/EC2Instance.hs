{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::Instance type creates an Amazon EC2 instance. If an Elastic
-- IP address is attached to your instance, AWS CloudFormation reattaches the
-- Elastic IP address after it updates the instance. For more information
-- about updating stacks, see AWS CloudFormation Stacks Updates.

module Stratosphere.Resources.EC2Instance where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2BlockDeviceMapping
import Stratosphere.ResourceProperties.NetworkInterface
import Stratosphere.ResourceProperties.EC2SsmAssociations
import Stratosphere.ResourceProperties.ResourceTag
import Stratosphere.ResourceProperties.EC2MountPoint

data EC2Instance =
  EC2Instance
  { _eC2InstanceAvailabilityZone :: Maybe (Val Text)
  , _eC2InstanceBlockDeviceMappings :: Maybe [Val EC2BlockDeviceMapping]
  , _eC2InstanceDisableApiTermination :: Maybe (Val Bool)
  , _eC2InstanceEbsOptimized :: Maybe (Val Bool)
  , _eC2InstanceIamInstanceProfile :: Maybe (Val Text)
  , _eC2InstanceImageId :: Val Text
  , _eC2InstanceInstanceInitiatedShutdownBehavior :: Maybe (Val Text)
  , _eC2InstanceInstanceType :: Maybe (Val Text)
  , _eC2InstanceKernelId :: Maybe (Val Text)
  , _eC2InstanceKeyName :: Maybe (Val Text)
  , _eC2InstanceMonitoring :: Maybe (Val Bool)
  , _eC2InstanceNetworkInterfaces :: Maybe [Val NetworkInterface]
  , _eC2InstancePlacementGroupName :: Maybe (Val Text)
  , _eC2InstancePrivateIpAddress :: Maybe (Val Text)
  , _eC2InstanceRamdiskId :: Maybe (Val Text)
  , _eC2InstanceSecurityGroupIds :: Maybe [Val Text]
  , _eC2InstanceSecurityGroups :: Maybe [Val Text]
  , _eC2InstanceSourceDestCheck :: Maybe (Val Bool)
  , _eC2InstanceSsmAssociations :: Maybe [Val EC2SsmAssociations]
  , _eC2InstanceSubnetId :: Maybe (Val Text)
  , _eC2InstanceTags :: Maybe [Val ResourceTag]
  , _eC2InstanceTenancy :: Maybe (Val Text)
  , _eC2InstanceUserData :: Maybe (Val Text)
  , _eC2InstanceVolumes :: Maybe [Val EC2MountPoint]
  , _eC2InstanceAdditionalInfo :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2Instance where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON EC2Instance where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

ec2Instance
  :: Val Text -- ^ ImageId
  -> EC2Instance
ec2Instance imageIdarg =
  EC2Instance
  { _eC2InstanceAvailabilityZone = Nothing
  , _eC2InstanceBlockDeviceMappings = Nothing
  , _eC2InstanceDisableApiTermination = Nothing
  , _eC2InstanceEbsOptimized = Nothing
  , _eC2InstanceIamInstanceProfile = Nothing
  , _eC2InstanceImageId = imageIdarg
  , _eC2InstanceInstanceInitiatedShutdownBehavior = Nothing
  , _eC2InstanceInstanceType = Nothing
  , _eC2InstanceKernelId = Nothing
  , _eC2InstanceKeyName = Nothing
  , _eC2InstanceMonitoring = Nothing
  , _eC2InstanceNetworkInterfaces = Nothing
  , _eC2InstancePlacementGroupName = Nothing
  , _eC2InstancePrivateIpAddress = Nothing
  , _eC2InstanceRamdiskId = Nothing
  , _eC2InstanceSecurityGroupIds = Nothing
  , _eC2InstanceSecurityGroups = Nothing
  , _eC2InstanceSourceDestCheck = Nothing
  , _eC2InstanceSsmAssociations = Nothing
  , _eC2InstanceSubnetId = Nothing
  , _eC2InstanceTags = Nothing
  , _eC2InstanceTenancy = Nothing
  , _eC2InstanceUserData = Nothing
  , _eC2InstanceVolumes = Nothing
  , _eC2InstanceAdditionalInfo = Nothing
  }

-- | Specifies the name of the Availability Zone in which the instance is
-- located. For more information about AWS regions and Availability Zones, see
-- Regions and Availability Zones in the Amazon EC2 User Guide.
eciAvailabilityZone :: Lens' EC2Instance (Maybe (Val Text))
eciAvailabilityZone = lens _eC2InstanceAvailabilityZone (\s a -> s { _eC2InstanceAvailabilityZone = a })

-- | Defines a set of Amazon Elastic Block Store block device mappings,
-- ephemeral instance store block device mappings, or both. For more
-- information, see Amazon Elastic Block Store or Amazon EC2 Instance Store in
-- the Amazon EC2 User Guide for Linux Instances.
eciBlockDeviceMappings :: Lens' EC2Instance (Maybe [Val EC2BlockDeviceMapping])
eciBlockDeviceMappings = lens _eC2InstanceBlockDeviceMappings (\s a -> s { _eC2InstanceBlockDeviceMappings = a })

-- | Specifies whether the instance can be terminated through the API.
eciDisableApiTermination :: Lens' EC2Instance (Maybe (Val Bool))
eciDisableApiTermination = lens _eC2InstanceDisableApiTermination (\s a -> s { _eC2InstanceDisableApiTermination = a })

-- | Specifies whether the instance is optimized for Amazon Elastic Block
-- Store I/O. This optimization provides dedicated throughput to Amazon EBS
-- and an optimized configuration stack to provide optimal EBS I/O
-- performance. For more information about the instance types that can be
-- launched as Amazon EBS optimized instances, see Amazon EBS-Optimized
-- Instances in the Amazon Elastic Compute Cloud User Guide. Additional fees
-- are incurred when using Amazon EBS-optimized instances.
eciEbsOptimized :: Lens' EC2Instance (Maybe (Val Bool))
eciEbsOptimized = lens _eC2InstanceEbsOptimized (\s a -> s { _eC2InstanceEbsOptimized = a })

-- | The physical ID (resource name) of an instance profile or a reference to
-- an AWS::IAM::InstanceProfile resource. For more information about IAM
-- roles, see Working with Roles in the AWS Identity and Access Management
-- User Guide.
eciIamInstanceProfile :: Lens' EC2Instance (Maybe (Val Text))
eciIamInstanceProfile = lens _eC2InstanceIamInstanceProfile (\s a -> s { _eC2InstanceIamInstanceProfile = a })

-- | Provides the unique ID of the Amazon Machine Image (AMI) that was
-- assigned during registration.
eciImageId :: Lens' EC2Instance (Val Text)
eciImageId = lens _eC2InstanceImageId (\s a -> s { _eC2InstanceImageId = a })

-- | Indicates whether an instance stops or terminates when you shut down the
-- instance from the instance's operating system shutdown command. You can
-- specify stop or terminate. For more information, see the RunInstances
-- command in the Amazon EC2 API Reference.
eciInstanceInitiatedShutdownBehavior :: Lens' EC2Instance (Maybe (Val Text))
eciInstanceInitiatedShutdownBehavior = lens _eC2InstanceInstanceInitiatedShutdownBehavior (\s a -> s { _eC2InstanceInstanceInitiatedShutdownBehavior = a })

-- | The instance type, such as t2.micro. The default type is "m1.small". For
-- a list of instance types, see Instance Families and Types.
eciInstanceType :: Lens' EC2Instance (Maybe (Val Text))
eciInstanceType = lens _eC2InstanceInstanceType (\s a -> s { _eC2InstanceInstanceType = a })

-- | The kernel ID.
eciKernelId :: Lens' EC2Instance (Maybe (Val Text))
eciKernelId = lens _eC2InstanceKernelId (\s a -> s { _eC2InstanceKernelId = a })

-- | Provides the name of the Amazon EC2 key pair.
eciKeyName :: Lens' EC2Instance (Maybe (Val Text))
eciKeyName = lens _eC2InstanceKeyName (\s a -> s { _eC2InstanceKeyName = a })

-- | Specifies whether monitoring is enabled for the instance.
eciMonitoring :: Lens' EC2Instance (Maybe (Val Bool))
eciMonitoring = lens _eC2InstanceMonitoring (\s a -> s { _eC2InstanceMonitoring = a })

-- | A list of embedded objects that describe the network interfaces to
-- associate with this instance. Note If this resource has a public IP address
-- and is also in a VPC that is defined in the same template, you must use the
-- DependsOn attribute to declare a dependency on the VPC-gateway attachment.
-- For more information, see DependsOn Attribute.
eciNetworkInterfaces :: Lens' EC2Instance (Maybe [Val NetworkInterface])
eciNetworkInterfaces = lens _eC2InstanceNetworkInterfaces (\s a -> s { _eC2InstanceNetworkInterfaces = a })

-- | The name of an existing placement group that you want to launch the
-- instance into (for cluster instances).
eciPlacementGroupName :: Lens' EC2Instance (Maybe (Val Text))
eciPlacementGroupName = lens _eC2InstancePlacementGroupName (\s a -> s { _eC2InstancePlacementGroupName = a })

-- | The private IP address for this instance. Important If you make an update
-- to an instance that requires replacement, you must assign a new private IP
-- address. During a replacement, AWS CloudFormation creates a new instance
-- but doesn't delete the old instance until the stack has successfully
-- updated. If the stack update fails, AWS CloudFormation uses the old
-- instance in order to roll back the stack to the previous working state. The
-- old and new instances cannot have the same private IP address. (Optional)
-- If you're using Amazon VPC, you can use this parameter to assign the
-- instance a specific available IP address from the subnet (for example,
-- 10.0.0.25). By default, Amazon VPC selects an IP address from the subnet
-- for the instance.
eciPrivateIpAddress :: Lens' EC2Instance (Maybe (Val Text))
eciPrivateIpAddress = lens _eC2InstancePrivateIpAddress (\s a -> s { _eC2InstancePrivateIpAddress = a })

-- | The ID of the RAM disk to select. Some kernels require additional drivers
-- at launch. Check the kernel requirements for information about whether you
-- need to specify a RAM disk. To find kernel requirements, go to the AWS
-- Resource Center and search for the kernel ID.
eciRamdiskId :: Lens' EC2Instance (Maybe (Val Text))
eciRamdiskId = lens _eC2InstanceRamdiskId (\s a -> s { _eC2InstanceRamdiskId = a })

-- | A list that contains the security group IDs for VPC security groups to
-- assign to the Amazon EC2 instance. If you specified the NetworkInterfaces
-- property, do not specify this property.
eciSecurityGroupIds :: Lens' EC2Instance (Maybe [Val Text])
eciSecurityGroupIds = lens _eC2InstanceSecurityGroupIds (\s a -> s { _eC2InstanceSecurityGroupIds = a })

-- | Valid only for Amazon EC2 security groups. A list that contains the
-- Amazon EC2 security groups to assign to the Amazon EC2 instance. The list
-- can contain both the name of existing Amazon EC2 security groups or
-- references to AWS::EC2::SecurityGroup resources created in the template.
eciSecurityGroups :: Lens' EC2Instance (Maybe [Val Text])
eciSecurityGroups = lens _eC2InstanceSecurityGroups (\s a -> s { _eC2InstanceSecurityGroups = a })

-- | Controls whether source/destination checking is enabled on the instance.
-- Also determines if an instance in a VPC will perform network address
-- translation (NAT). A value of "true" means that source/destination checking
-- is enabled, and a value of "false" means that checking is disabled. For the
-- instance to perform NAT, the value must be "false". For more information,
-- see NAT Instances in the Amazon Virtual Private Cloud User Guide.
eciSourceDestCheck :: Lens' EC2Instance (Maybe (Val Bool))
eciSourceDestCheck = lens _eC2InstanceSourceDestCheck (\s a -> s { _eC2InstanceSourceDestCheck = a })

-- | The Amazon EC2 Simple Systems Manager (SSM) document and parameter values
-- to associate with this instance. To use this property, you must specify an
-- IAM role for the instance. For more information, see Prerequisites for
-- Remotely Running Commands on EC2 Instances in the Amazon EC2 User Guide for
-- Microsoft Windows Instances. Note You can currently associate only one
-- document with an instance.
eciSsmAssociations :: Lens' EC2Instance (Maybe [Val EC2SsmAssociations])
eciSsmAssociations = lens _eC2InstanceSsmAssociations (\s a -> s { _eC2InstanceSsmAssociations = a })

-- | If you're using Amazon VPC, this property specifies the ID of the subnet
-- that you want to launch the instance into. If you specified the
-- NetworkInterfaces property, do not specify this property.
eciSubnetId :: Lens' EC2Instance (Maybe (Val Text))
eciSubnetId = lens _eC2InstanceSubnetId (\s a -> s { _eC2InstanceSubnetId = a })

-- | An arbitrary set of tags (key–value pairs) for this instance.
eciTags :: Lens' EC2Instance (Maybe [Val ResourceTag])
eciTags = lens _eC2InstanceTags (\s a -> s { _eC2InstanceTags = a })

-- | The tenancy of the instance that you want to launch. This value can be
-- either "default" or "dedicated". An instance that has a tenancy value of
-- "dedicated" runs on single-tenant hardware and can be launched only into a
-- VPC. For more information, see Using EC2 Dedicated Instances Within Your
-- VPC in the Amazon VPC User Guide.
eciTenancy :: Lens' EC2Instance (Maybe (Val Text))
eciTenancy = lens _eC2InstanceTenancy (\s a -> s { _eC2InstanceTenancy = a })

-- | Base64-encoded MIME user data that is made available to the instances.
eciUserData :: Lens' EC2Instance (Maybe (Val Text))
eciUserData = lens _eC2InstanceUserData (\s a -> s { _eC2InstanceUserData = a })

-- | The Amazon EBS volumes to attach to the instance. Note Before detaching a
-- volume, unmount any file systems on the device within your operating
-- system. If you don't unmount the file system, a volume might get stuck in a
-- busy state while detaching.
eciVolumes :: Lens' EC2Instance (Maybe [Val EC2MountPoint])
eciVolumes = lens _eC2InstanceVolumes (\s a -> s { _eC2InstanceVolumes = a })

-- | Reserved.
eciAdditionalInfo :: Lens' EC2Instance (Maybe (Val Text))
eciAdditionalInfo = lens _eC2InstanceAdditionalInfo (\s a -> s { _eC2InstanceAdditionalInfo = a })