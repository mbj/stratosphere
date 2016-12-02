{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html

module Stratosphere.Resources.EC2Instance where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2InstanceBlockDeviceMapping
import Stratosphere.ResourceProperties.EC2InstanceNetworkInterface
import Stratosphere.ResourceProperties.EC2InstanceSsmAssociation
import Stratosphere.ResourceProperties.Tag
import Stratosphere.ResourceProperties.EC2InstanceVolume

-- | Full data type definition for EC2Instance. See 'ec2Instance' for a more
-- | convenient constructor.
data EC2Instance =
  EC2Instance
  { _eC2InstanceAdditionalInfo :: Maybe (Val Text)
  , _eC2InstanceAffinity :: Maybe (Val Text)
  , _eC2InstanceAvailabilityZone :: Maybe (Val Text)
  , _eC2InstanceBlockDeviceMappings :: Maybe [EC2InstanceBlockDeviceMapping]
  , _eC2InstanceDisableApiTermination :: Maybe (Val Bool')
  , _eC2InstanceEbsOptimized :: Maybe (Val Bool')
  , _eC2InstanceHostId :: Maybe (Val Text)
  , _eC2InstanceIamInstanceProfile :: Maybe (Val Text)
  , _eC2InstanceImageId :: Val Text
  , _eC2InstanceInstanceInitiatedShutdownBehavior :: Maybe (Val Text)
  , _eC2InstanceInstanceType :: Maybe (Val Text)
  , _eC2InstanceKernelId :: Maybe (Val Text)
  , _eC2InstanceKeyName :: Maybe (Val Text)
  , _eC2InstanceMonitoring :: Maybe (Val Bool')
  , _eC2InstanceNetworkInterfaces :: Maybe [EC2InstanceNetworkInterface]
  , _eC2InstancePlacementGroupName :: Maybe (Val Text)
  , _eC2InstancePrivateIpAddress :: Maybe (Val Text)
  , _eC2InstanceRamdiskId :: Maybe (Val Text)
  , _eC2InstanceSecurityGroupIds :: Maybe [Val Text]
  , _eC2InstanceSecurityGroups :: Maybe [Val Text]
  , _eC2InstanceSourceDestCheck :: Maybe (Val Bool')
  , _eC2InstanceSsmAssociations :: Maybe [EC2InstanceSsmAssociation]
  , _eC2InstanceSubnetId :: Maybe (Val Text)
  , _eC2InstanceTags :: Maybe [Tag]
  , _eC2InstanceTenancy :: Maybe (Val Text)
  , _eC2InstanceUserData :: Maybe (Val Text)
  , _eC2InstanceVolumes :: Maybe [EC2InstanceVolume]
  } deriving (Show, Generic)

instance ToJSON EC2Instance where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

instance FromJSON EC2Instance where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 12, omitNothingFields = True }

-- | Constructor for 'EC2Instance' containing required fields as arguments.
ec2Instance
  :: Val Text -- ^ 'eciImageId'
  -> EC2Instance
ec2Instance imageIdarg =
  EC2Instance
  { _eC2InstanceAdditionalInfo = Nothing
  , _eC2InstanceAffinity = Nothing
  , _eC2InstanceAvailabilityZone = Nothing
  , _eC2InstanceBlockDeviceMappings = Nothing
  , _eC2InstanceDisableApiTermination = Nothing
  , _eC2InstanceEbsOptimized = Nothing
  , _eC2InstanceHostId = Nothing
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
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-additionalinfo
eciAdditionalInfo :: Lens' EC2Instance (Maybe (Val Text))
eciAdditionalInfo = lens _eC2InstanceAdditionalInfo (\s a -> s { _eC2InstanceAdditionalInfo = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-affinity
eciAffinity :: Lens' EC2Instance (Maybe (Val Text))
eciAffinity = lens _eC2InstanceAffinity (\s a -> s { _eC2InstanceAffinity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-availabilityzone
eciAvailabilityZone :: Lens' EC2Instance (Maybe (Val Text))
eciAvailabilityZone = lens _eC2InstanceAvailabilityZone (\s a -> s { _eC2InstanceAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-blockdevicemappings
eciBlockDeviceMappings :: Lens' EC2Instance (Maybe [EC2InstanceBlockDeviceMapping])
eciBlockDeviceMappings = lens _eC2InstanceBlockDeviceMappings (\s a -> s { _eC2InstanceBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-disableapitermination
eciDisableApiTermination :: Lens' EC2Instance (Maybe (Val Bool'))
eciDisableApiTermination = lens _eC2InstanceDisableApiTermination (\s a -> s { _eC2InstanceDisableApiTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ebsoptimized
eciEbsOptimized :: Lens' EC2Instance (Maybe (Val Bool'))
eciEbsOptimized = lens _eC2InstanceEbsOptimized (\s a -> s { _eC2InstanceEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-hostid
eciHostId :: Lens' EC2Instance (Maybe (Val Text))
eciHostId = lens _eC2InstanceHostId (\s a -> s { _eC2InstanceHostId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-iaminstanceprofile
eciIamInstanceProfile :: Lens' EC2Instance (Maybe (Val Text))
eciIamInstanceProfile = lens _eC2InstanceIamInstanceProfile (\s a -> s { _eC2InstanceIamInstanceProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-imageid
eciImageId :: Lens' EC2Instance (Val Text)
eciImageId = lens _eC2InstanceImageId (\s a -> s { _eC2InstanceImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instanceinitiatedshutdownbehavior
eciInstanceInitiatedShutdownBehavior :: Lens' EC2Instance (Maybe (Val Text))
eciInstanceInitiatedShutdownBehavior = lens _eC2InstanceInstanceInitiatedShutdownBehavior (\s a -> s { _eC2InstanceInstanceInitiatedShutdownBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-instancetype
eciInstanceType :: Lens' EC2Instance (Maybe (Val Text))
eciInstanceType = lens _eC2InstanceInstanceType (\s a -> s { _eC2InstanceInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-kernelid
eciKernelId :: Lens' EC2Instance (Maybe (Val Text))
eciKernelId = lens _eC2InstanceKernelId (\s a -> s { _eC2InstanceKernelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-keyname
eciKeyName :: Lens' EC2Instance (Maybe (Val Text))
eciKeyName = lens _eC2InstanceKeyName (\s a -> s { _eC2InstanceKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-monitoring
eciMonitoring :: Lens' EC2Instance (Maybe (Val Bool'))
eciMonitoring = lens _eC2InstanceMonitoring (\s a -> s { _eC2InstanceMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-networkinterfaces
eciNetworkInterfaces :: Lens' EC2Instance (Maybe [EC2InstanceNetworkInterface])
eciNetworkInterfaces = lens _eC2InstanceNetworkInterfaces (\s a -> s { _eC2InstanceNetworkInterfaces = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-placementgroupname
eciPlacementGroupName :: Lens' EC2Instance (Maybe (Val Text))
eciPlacementGroupName = lens _eC2InstancePlacementGroupName (\s a -> s { _eC2InstancePlacementGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-privateipaddress
eciPrivateIpAddress :: Lens' EC2Instance (Maybe (Val Text))
eciPrivateIpAddress = lens _eC2InstancePrivateIpAddress (\s a -> s { _eC2InstancePrivateIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ramdiskid
eciRamdiskId :: Lens' EC2Instance (Maybe (Val Text))
eciRamdiskId = lens _eC2InstanceRamdiskId (\s a -> s { _eC2InstanceRamdiskId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroupids
eciSecurityGroupIds :: Lens' EC2Instance (Maybe [Val Text])
eciSecurityGroupIds = lens _eC2InstanceSecurityGroupIds (\s a -> s { _eC2InstanceSecurityGroupIds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-securitygroups
eciSecurityGroups :: Lens' EC2Instance (Maybe [Val Text])
eciSecurityGroups = lens _eC2InstanceSecurityGroups (\s a -> s { _eC2InstanceSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-sourcedestcheck
eciSourceDestCheck :: Lens' EC2Instance (Maybe (Val Bool'))
eciSourceDestCheck = lens _eC2InstanceSourceDestCheck (\s a -> s { _eC2InstanceSourceDestCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-ssmassociations
eciSsmAssociations :: Lens' EC2Instance (Maybe [EC2InstanceSsmAssociation])
eciSsmAssociations = lens _eC2InstanceSsmAssociations (\s a -> s { _eC2InstanceSsmAssociations = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-subnetid
eciSubnetId :: Lens' EC2Instance (Maybe (Val Text))
eciSubnetId = lens _eC2InstanceSubnetId (\s a -> s { _eC2InstanceSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tags
eciTags :: Lens' EC2Instance (Maybe [Tag])
eciTags = lens _eC2InstanceTags (\s a -> s { _eC2InstanceTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-tenancy
eciTenancy :: Lens' EC2Instance (Maybe (Val Text))
eciTenancy = lens _eC2InstanceTenancy (\s a -> s { _eC2InstanceTenancy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-userdata
eciUserData :: Lens' EC2Instance (Maybe (Val Text))
eciUserData = lens _eC2InstanceUserData (\s a -> s { _eC2InstanceUserData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance.html#cfn-ec2-instance-volumes
eciVolumes :: Lens' EC2Instance (Maybe [EC2InstanceVolume])
eciVolumes = lens _eC2InstanceVolumes (\s a -> s { _eC2InstanceVolumes = a })
