{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html

module Stratosphere.Resources.AutoScalingLaunchConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.AutoScalingLaunchConfigurationBlockDeviceMapping

-- | Full data type definition for AutoScalingLaunchConfiguration. See
-- 'autoScalingLaunchConfiguration' for a more convenient constructor.
data AutoScalingLaunchConfiguration =
  AutoScalingLaunchConfiguration
  { _autoScalingLaunchConfigurationAssociatePublicIpAddress :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationBlockDeviceMappings :: Maybe [AutoScalingLaunchConfigurationBlockDeviceMapping]
  , _autoScalingLaunchConfigurationClassicLinkVPCId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationClassicLinkVPCSecurityGroups :: Maybe (ValList Text)
  , _autoScalingLaunchConfigurationEbsOptimized :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationIamInstanceProfile :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationImageId :: Val Text
  , _autoScalingLaunchConfigurationInstanceId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationInstanceMonitoring :: Maybe (Val Bool)
  , _autoScalingLaunchConfigurationInstanceType :: Val Text
  , _autoScalingLaunchConfigurationKernelId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationKeyName :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationLaunchConfigurationName :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationPlacementTenancy :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationRamDiskId :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationSecurityGroups :: Maybe (ValList Text)
  , _autoScalingLaunchConfigurationSpotPrice :: Maybe (Val Text)
  , _autoScalingLaunchConfigurationUserData :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties AutoScalingLaunchConfiguration where
  toResourceProperties AutoScalingLaunchConfiguration{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::AutoScaling::LaunchConfiguration"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("AssociatePublicIpAddress",) . toJSON) _autoScalingLaunchConfigurationAssociatePublicIpAddress
        , fmap (("BlockDeviceMappings",) . toJSON) _autoScalingLaunchConfigurationBlockDeviceMappings
        , fmap (("ClassicLinkVPCId",) . toJSON) _autoScalingLaunchConfigurationClassicLinkVPCId
        , fmap (("ClassicLinkVPCSecurityGroups",) . toJSON) _autoScalingLaunchConfigurationClassicLinkVPCSecurityGroups
        , fmap (("EbsOptimized",) . toJSON) _autoScalingLaunchConfigurationEbsOptimized
        , fmap (("IamInstanceProfile",) . toJSON) _autoScalingLaunchConfigurationIamInstanceProfile
        , (Just . ("ImageId",) . toJSON) _autoScalingLaunchConfigurationImageId
        , fmap (("InstanceId",) . toJSON) _autoScalingLaunchConfigurationInstanceId
        , fmap (("InstanceMonitoring",) . toJSON) _autoScalingLaunchConfigurationInstanceMonitoring
        , (Just . ("InstanceType",) . toJSON) _autoScalingLaunchConfigurationInstanceType
        , fmap (("KernelId",) . toJSON) _autoScalingLaunchConfigurationKernelId
        , fmap (("KeyName",) . toJSON) _autoScalingLaunchConfigurationKeyName
        , fmap (("LaunchConfigurationName",) . toJSON) _autoScalingLaunchConfigurationLaunchConfigurationName
        , fmap (("PlacementTenancy",) . toJSON) _autoScalingLaunchConfigurationPlacementTenancy
        , fmap (("RamDiskId",) . toJSON) _autoScalingLaunchConfigurationRamDiskId
        , fmap (("SecurityGroups",) . toJSON) _autoScalingLaunchConfigurationSecurityGroups
        , fmap (("SpotPrice",) . toJSON) _autoScalingLaunchConfigurationSpotPrice
        , fmap (("UserData",) . toJSON) _autoScalingLaunchConfigurationUserData
        ]
    }

-- | Constructor for 'AutoScalingLaunchConfiguration' containing required
-- fields as arguments.
autoScalingLaunchConfiguration
  :: Val Text -- ^ 'aslcImageId'
  -> Val Text -- ^ 'aslcInstanceType'
  -> AutoScalingLaunchConfiguration
autoScalingLaunchConfiguration imageIdarg instanceTypearg =
  AutoScalingLaunchConfiguration
  { _autoScalingLaunchConfigurationAssociatePublicIpAddress = Nothing
  , _autoScalingLaunchConfigurationBlockDeviceMappings = Nothing
  , _autoScalingLaunchConfigurationClassicLinkVPCId = Nothing
  , _autoScalingLaunchConfigurationClassicLinkVPCSecurityGroups = Nothing
  , _autoScalingLaunchConfigurationEbsOptimized = Nothing
  , _autoScalingLaunchConfigurationIamInstanceProfile = Nothing
  , _autoScalingLaunchConfigurationImageId = imageIdarg
  , _autoScalingLaunchConfigurationInstanceId = Nothing
  , _autoScalingLaunchConfigurationInstanceMonitoring = Nothing
  , _autoScalingLaunchConfigurationInstanceType = instanceTypearg
  , _autoScalingLaunchConfigurationKernelId = Nothing
  , _autoScalingLaunchConfigurationKeyName = Nothing
  , _autoScalingLaunchConfigurationLaunchConfigurationName = Nothing
  , _autoScalingLaunchConfigurationPlacementTenancy = Nothing
  , _autoScalingLaunchConfigurationRamDiskId = Nothing
  , _autoScalingLaunchConfigurationSecurityGroups = Nothing
  , _autoScalingLaunchConfigurationSpotPrice = Nothing
  , _autoScalingLaunchConfigurationUserData = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cf-as-launchconfig-associatepubip
aslcAssociatePublicIpAddress :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Bool))
aslcAssociatePublicIpAddress = lens _autoScalingLaunchConfigurationAssociatePublicIpAddress (\s a -> s { _autoScalingLaunchConfigurationAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-blockdevicemappings
aslcBlockDeviceMappings :: Lens' AutoScalingLaunchConfiguration (Maybe [AutoScalingLaunchConfigurationBlockDeviceMapping])
aslcBlockDeviceMappings = lens _autoScalingLaunchConfigurationBlockDeviceMappings (\s a -> s { _autoScalingLaunchConfigurationBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-classiclinkvpcid
aslcClassicLinkVPCId :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcClassicLinkVPCId = lens _autoScalingLaunchConfigurationClassicLinkVPCId (\s a -> s { _autoScalingLaunchConfigurationClassicLinkVPCId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-classiclinkvpcsecuritygroups
aslcClassicLinkVPCSecurityGroups :: Lens' AutoScalingLaunchConfiguration (Maybe (ValList Text))
aslcClassicLinkVPCSecurityGroups = lens _autoScalingLaunchConfigurationClassicLinkVPCSecurityGroups (\s a -> s { _autoScalingLaunchConfigurationClassicLinkVPCSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-ebsoptimized
aslcEbsOptimized :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Bool))
aslcEbsOptimized = lens _autoScalingLaunchConfigurationEbsOptimized (\s a -> s { _autoScalingLaunchConfigurationEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-iaminstanceprofile
aslcIamInstanceProfile :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcIamInstanceProfile = lens _autoScalingLaunchConfigurationIamInstanceProfile (\s a -> s { _autoScalingLaunchConfigurationIamInstanceProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-imageid
aslcImageId :: Lens' AutoScalingLaunchConfiguration (Val Text)
aslcImageId = lens _autoScalingLaunchConfigurationImageId (\s a -> s { _autoScalingLaunchConfigurationImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instanceid
aslcInstanceId :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcInstanceId = lens _autoScalingLaunchConfigurationInstanceId (\s a -> s { _autoScalingLaunchConfigurationInstanceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instancemonitoring
aslcInstanceMonitoring :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Bool))
aslcInstanceMonitoring = lens _autoScalingLaunchConfigurationInstanceMonitoring (\s a -> s { _autoScalingLaunchConfigurationInstanceMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-instancetype
aslcInstanceType :: Lens' AutoScalingLaunchConfiguration (Val Text)
aslcInstanceType = lens _autoScalingLaunchConfigurationInstanceType (\s a -> s { _autoScalingLaunchConfigurationInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-kernelid
aslcKernelId :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcKernelId = lens _autoScalingLaunchConfigurationKernelId (\s a -> s { _autoScalingLaunchConfigurationKernelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-keyname
aslcKeyName :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcKeyName = lens _autoScalingLaunchConfigurationKeyName (\s a -> s { _autoScalingLaunchConfigurationKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-autoscaling-launchconfig-launchconfigurationname
aslcLaunchConfigurationName :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcLaunchConfigurationName = lens _autoScalingLaunchConfigurationLaunchConfigurationName (\s a -> s { _autoScalingLaunchConfigurationLaunchConfigurationName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-placementtenancy
aslcPlacementTenancy :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcPlacementTenancy = lens _autoScalingLaunchConfigurationPlacementTenancy (\s a -> s { _autoScalingLaunchConfigurationPlacementTenancy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-ramdiskid
aslcRamDiskId :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcRamDiskId = lens _autoScalingLaunchConfigurationRamDiskId (\s a -> s { _autoScalingLaunchConfigurationRamDiskId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-securitygroups
aslcSecurityGroups :: Lens' AutoScalingLaunchConfiguration (Maybe (ValList Text))
aslcSecurityGroups = lens _autoScalingLaunchConfigurationSecurityGroups (\s a -> s { _autoScalingLaunchConfigurationSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-spotprice
aslcSpotPrice :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcSpotPrice = lens _autoScalingLaunchConfigurationSpotPrice (\s a -> s { _autoScalingLaunchConfigurationSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-as-launchconfig.html#cfn-as-launchconfig-userdata
aslcUserData :: Lens' AutoScalingLaunchConfiguration (Maybe (Val Text))
aslcUserData = lens _autoScalingLaunchConfigurationUserData (\s a -> s { _autoScalingLaunchConfigurationUserData = a })
