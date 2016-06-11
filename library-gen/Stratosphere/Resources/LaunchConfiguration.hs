{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::AutoScaling::LaunchConfiguration type creates an Auto Scaling
-- launch configuration that can be used by an Auto Scaling group to configure
-- Amazon EC2 instances in the Auto Scaling group.

module Stratosphere.Resources.LaunchConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.AutoScalingBlockDeviceMapping

-- | Full data type definition for LaunchConfiguration. See
-- 'launchConfiguration' for a more convenient constructor.
data LaunchConfiguration =
  LaunchConfiguration
  { _launchConfigurationAssociatePublicIpAddress :: Maybe (Val Bool')
  , _launchConfigurationBlockDeviceMappings :: Maybe [AutoScalingBlockDeviceMapping]
  , _launchConfigurationClassicLinkVPCId :: Maybe (Val Text)
  , _launchConfigurationClassicLinkVPCSecurityGroups :: Maybe [Val Text]
  , _launchConfigurationEbsOptimized :: Maybe (Val Bool')
  , _launchConfigurationIamInstanceProfile :: Maybe (Val Text)
  , _launchConfigurationImageId :: Val Text
  , _launchConfigurationInstanceId :: Maybe (Val Text)
  , _launchConfigurationInstanceMonitoring :: Maybe (Val Bool')
  , _launchConfigurationInstanceType :: Val Text
  , _launchConfigurationKernelId :: Maybe (Val Text)
  , _launchConfigurationKeyName :: Maybe (Val Text)
  , _launchConfigurationPlacementTenancy :: Maybe (Val Text)
  , _launchConfigurationRamDiskId :: Maybe (Val Text)
  , _launchConfigurationSecurityGroups :: Maybe [Val Text]
  , _launchConfigurationSpotPrice :: Maybe (Val Text)
  , _launchConfigurationUserData :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON LaunchConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON LaunchConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'LaunchConfiguration' containing required fields as
-- arguments.
launchConfiguration
  :: Val Text -- ^ 'lcImageId'
  -> Val Text -- ^ 'lcInstanceType'
  -> LaunchConfiguration
launchConfiguration imageIdarg instanceTypearg =
  LaunchConfiguration
  { _launchConfigurationAssociatePublicIpAddress = Nothing
  , _launchConfigurationBlockDeviceMappings = Nothing
  , _launchConfigurationClassicLinkVPCId = Nothing
  , _launchConfigurationClassicLinkVPCSecurityGroups = Nothing
  , _launchConfigurationEbsOptimized = Nothing
  , _launchConfigurationIamInstanceProfile = Nothing
  , _launchConfigurationImageId = imageIdarg
  , _launchConfigurationInstanceId = Nothing
  , _launchConfigurationInstanceMonitoring = Nothing
  , _launchConfigurationInstanceType = instanceTypearg
  , _launchConfigurationKernelId = Nothing
  , _launchConfigurationKeyName = Nothing
  , _launchConfigurationPlacementTenancy = Nothing
  , _launchConfigurationRamDiskId = Nothing
  , _launchConfigurationSecurityGroups = Nothing
  , _launchConfigurationSpotPrice = Nothing
  , _launchConfigurationUserData = Nothing
  }

-- | For Amazon EC2 instances in a VPC, indicates whether instances in the
-- Auto Scaling group receive public IP addresses. If you specify true, each
-- instance in the Auto Scaling receives a unique public IP address. Note If
-- this resource has a public IP address and is also in a VPC that is defined
-- in the same template, you must use the DependsOn attribute to declare a
-- dependency on the VPC-gateway attachment. For more information, see
-- DependsOn Attribute.
lcAssociatePublicIpAddress :: Lens' LaunchConfiguration (Maybe (Val Bool'))
lcAssociatePublicIpAddress = lens _launchConfigurationAssociatePublicIpAddress (\s a -> s { _launchConfigurationAssociatePublicIpAddress = a })

-- | Specifies how block devices are exposed to the instance. You can specify
-- virtual devices and EBS volumes.
lcBlockDeviceMappings :: Lens' LaunchConfiguration (Maybe [AutoScalingBlockDeviceMapping])
lcBlockDeviceMappings = lens _launchConfigurationBlockDeviceMappings (\s a -> s { _launchConfigurationBlockDeviceMappings = a })

-- | The ID of a ClassicLink-enabled VPC to link your EC2-Classic instances
-- to. You can specify this property only for EC2-Classic instances. For more
-- information, see ClassicLink in the Amazon Elastic Compute Cloud User
-- Guide.
lcClassicLinkVPCId :: Lens' LaunchConfiguration (Maybe (Val Text))
lcClassicLinkVPCId = lens _launchConfigurationClassicLinkVPCId (\s a -> s { _launchConfigurationClassicLinkVPCId = a })

-- | The IDs of one or more security groups for the VPC that you specified in
-- the ClassicLinkVPCId property.
lcClassicLinkVPCSecurityGroups :: Lens' LaunchConfiguration (Maybe [Val Text])
lcClassicLinkVPCSecurityGroups = lens _launchConfigurationClassicLinkVPCSecurityGroups (\s a -> s { _launchConfigurationClassicLinkVPCSecurityGroups = a })

-- | Specifies whether the launch configuration is optimized for EBS I/O. This
-- optimization provides dedicated throughput to Amazon EBS and an optimized
-- configuration stack to provide optimal EBS I/O performance. Additional fees
-- are incurred when using EBS-optimized instances. For more information about
-- fees and supported instance types, see EBS-Optimized Instances in the
-- Amazon EC2 User Guide for Linux Instances.
lcEbsOptimized :: Lens' LaunchConfiguration (Maybe (Val Bool'))
lcEbsOptimized = lens _launchConfigurationEbsOptimized (\s a -> s { _launchConfigurationEbsOptimized = a })

-- | Provides the name or the Amazon Resource Name (ARN) of the instance
-- profile associated with the IAM role for the instance. The instance profile
-- contains the IAM role.
lcIamInstanceProfile :: Lens' LaunchConfiguration (Maybe (Val Text))
lcIamInstanceProfile = lens _launchConfigurationIamInstanceProfile (\s a -> s { _launchConfigurationIamInstanceProfile = a })

-- | Provides the unique ID of the Amazon Machine Image (AMI) that was
-- assigned during registration.
lcImageId :: Lens' LaunchConfiguration (Val Text)
lcImageId = lens _launchConfigurationImageId (\s a -> s { _launchConfigurationImageId = a })

-- | The ID of the Amazon EC2 instance you want to use to create the launch
-- configuration. Use this property if you want the launch configuration to
-- use settings from an existing Amazon EC2 instance. When you use an instance
-- to create a launch configuration, all properties are derived from the
-- instance with the exception of BlockDeviceMapping and
-- AssociatePublicIpAddress. You can override any properties from the instance
-- by specifying them in the launch configuration.
lcInstanceId :: Lens' LaunchConfiguration (Maybe (Val Text))
lcInstanceId = lens _launchConfigurationInstanceId (\s a -> s { _launchConfigurationInstanceId = a })

-- | Indicates whether detailed instance monitoring is enabled for the Auto
-- Scaling group. By default, this property is set to true (enabled). When
-- detailed monitoring is enabled, Amazon CloudWatch (CloudWatch) generates
-- metrics every minute and your account is charged a fee. When you disable
-- detailed monitoring, CloudWatch generates metrics every 5 minutes. For more
-- information, see Monitor Your Auto Scaling Instances in the Auto Scaling
-- Developer Guide.
lcInstanceMonitoring :: Lens' LaunchConfiguration (Maybe (Val Bool'))
lcInstanceMonitoring = lens _launchConfigurationInstanceMonitoring (\s a -> s { _launchConfigurationInstanceMonitoring = a })

-- | Specifies the instance type of the EC2 instance.
lcInstanceType :: Lens' LaunchConfiguration (Val Text)
lcInstanceType = lens _launchConfigurationInstanceType (\s a -> s { _launchConfigurationInstanceType = a })

-- | Provides the ID of the kernel associated with the EC2 AMI.
lcKernelId :: Lens' LaunchConfiguration (Maybe (Val Text))
lcKernelId = lens _launchConfigurationKernelId (\s a -> s { _launchConfigurationKernelId = a })

-- | Provides the name of the EC2 key pair.
lcKeyName :: Lens' LaunchConfiguration (Maybe (Val Text))
lcKeyName = lens _launchConfigurationKeyName (\s a -> s { _launchConfigurationKeyName = a })

-- | The tenancy of the instance. An instance with a tenancy of dedicated runs
-- on single-tenant hardware and can only be launched in a VPC. You must set
-- the value of this parameter to dedicated if want to launch dedicated
-- instances in a shared tenancy VPC (a VPC with the instance placement
-- tenancy attribute set to default). For more information, see
-- CreateLaunchConfiguration in the Auto Scaling API Reference. If you specify
-- this property, you must specify at least one subnet in the
-- VPCZoneIdentifier property of the AWS::AutoScaling::AutoScalingGroup
-- resource.
lcPlacementTenancy :: Lens' LaunchConfiguration (Maybe (Val Text))
lcPlacementTenancy = lens _launchConfigurationPlacementTenancy (\s a -> s { _launchConfigurationPlacementTenancy = a })

-- | The ID of the RAM disk to select. Some kernels require additional drivers
-- at launch. Check the kernel requirements for information about whether you
-- need to specify a RAM disk. To find kernel requirements, refer to the AWS
-- Resource Center and search for the kernel ID.
lcRamDiskId :: Lens' LaunchConfiguration (Maybe (Val Text))
lcRamDiskId = lens _launchConfigurationRamDiskId (\s a -> s { _launchConfigurationRamDiskId = a })

-- | A list that contains the EC2 security groups to assign to the Amazon EC2
-- instances in the Auto Scaling group. The list can contain the name of
-- existing EC2 security groups or references to AWS::EC2::SecurityGroup
-- resources created in the template. If your instances are launched within
-- VPC, specify Amazon VPC security group IDs.
lcSecurityGroups :: Lens' LaunchConfiguration (Maybe [Val Text])
lcSecurityGroups = lens _launchConfigurationSecurityGroups (\s a -> s { _launchConfigurationSecurityGroups = a })

-- | The spot price for this autoscaling group. If a spot price is set, then
-- the autoscaling group will launch when the current spot price is less than
-- the amount specified in the template. When you have specified a spot price
-- for an auto scaling group, the group will only launch when the spot price
-- has been met, regardless of the setting in the autoscaling group's
-- DesiredCapacity. For more information about configuring a spot price for an
-- autoscaling group, see Using Auto Scaling to Launch Spot Instances in the
-- AutoScaling Developer Guide.
lcSpotPrice :: Lens' LaunchConfiguration (Maybe (Val Text))
lcSpotPrice = lens _launchConfigurationSpotPrice (\s a -> s { _launchConfigurationSpotPrice = a })

-- | The user data available to the launched EC2 instances.
lcUserData :: Lens' LaunchConfiguration (Maybe (Val Text))
lcUserData = lens _launchConfigurationUserData (\s a -> s { _launchConfigurationUserData = a })