
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetLaunchSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetBlockDeviceMapping
import Stratosphere.ResourceProperties.EC2SpotFleetIamInstanceProfileSpecification
import Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetMonitoring
import Stratosphere.ResourceProperties.EC2SpotFleetInstanceNetworkInterfaceSpecification
import Stratosphere.ResourceProperties.EC2SpotFleetSpotPlacement
import Stratosphere.ResourceProperties.EC2SpotFleetGroupIdentifier
import Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetTagSpecification

-- | Full data type definition for EC2SpotFleetSpotFleetLaunchSpecification.
-- See 'ec2SpotFleetSpotFleetLaunchSpecification' for a more convenient
-- constructor.
data EC2SpotFleetSpotFleetLaunchSpecification =
  EC2SpotFleetSpotFleetLaunchSpecification
  { _eC2SpotFleetSpotFleetLaunchSpecificationBlockDeviceMappings :: Maybe [EC2SpotFleetBlockDeviceMapping]
  , _eC2SpotFleetSpotFleetLaunchSpecificationEbsOptimized :: Maybe (Val Bool)
  , _eC2SpotFleetSpotFleetLaunchSpecificationIamInstanceProfile :: Maybe EC2SpotFleetIamInstanceProfileSpecification
  , _eC2SpotFleetSpotFleetLaunchSpecificationImageId :: Val Text
  , _eC2SpotFleetSpotFleetLaunchSpecificationInstanceType :: Val Text
  , _eC2SpotFleetSpotFleetLaunchSpecificationKernelId :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationKeyName :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationMonitoring :: Maybe EC2SpotFleetSpotFleetMonitoring
  , _eC2SpotFleetSpotFleetLaunchSpecificationNetworkInterfaces :: Maybe [EC2SpotFleetInstanceNetworkInterfaceSpecification]
  , _eC2SpotFleetSpotFleetLaunchSpecificationPlacement :: Maybe EC2SpotFleetSpotPlacement
  , _eC2SpotFleetSpotFleetLaunchSpecificationRamdiskId :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationSecurityGroups :: Maybe [EC2SpotFleetGroupIdentifier]
  , _eC2SpotFleetSpotFleetLaunchSpecificationSpotPrice :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationSubnetId :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationTagSpecifications :: Maybe [EC2SpotFleetSpotFleetTagSpecification]
  , _eC2SpotFleetSpotFleetLaunchSpecificationUserData :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetLaunchSpecificationWeightedCapacity :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSpotFleetLaunchSpecification where
  toJSON EC2SpotFleetSpotFleetLaunchSpecification{..} =
    object $
    catMaybes
    [ fmap (("BlockDeviceMappings",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationBlockDeviceMappings
    , fmap (("EbsOptimized",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationEbsOptimized
    , fmap (("IamInstanceProfile",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationIamInstanceProfile
    , (Just . ("ImageId",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationImageId
    , (Just . ("InstanceType",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationInstanceType
    , fmap (("KernelId",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationKernelId
    , fmap (("KeyName",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationKeyName
    , fmap (("Monitoring",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationMonitoring
    , fmap (("NetworkInterfaces",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationNetworkInterfaces
    , fmap (("Placement",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationPlacement
    , fmap (("RamdiskId",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationRamdiskId
    , fmap (("SecurityGroups",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationSecurityGroups
    , fmap (("SpotPrice",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationSpotPrice
    , fmap (("SubnetId",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationSubnetId
    , fmap (("TagSpecifications",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationTagSpecifications
    , fmap (("UserData",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationUserData
    , fmap (("WeightedCapacity",) . toJSON) _eC2SpotFleetSpotFleetLaunchSpecificationWeightedCapacity
    ]

-- | Constructor for 'EC2SpotFleetSpotFleetLaunchSpecification' containing
-- required fields as arguments.
ec2SpotFleetSpotFleetLaunchSpecification
  :: Val Text -- ^ 'ecsfsflsImageId'
  -> Val Text -- ^ 'ecsfsflsInstanceType'
  -> EC2SpotFleetSpotFleetLaunchSpecification
ec2SpotFleetSpotFleetLaunchSpecification imageIdarg instanceTypearg =
  EC2SpotFleetSpotFleetLaunchSpecification
  { _eC2SpotFleetSpotFleetLaunchSpecificationBlockDeviceMappings = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationEbsOptimized = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationIamInstanceProfile = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationImageId = imageIdarg
  , _eC2SpotFleetSpotFleetLaunchSpecificationInstanceType = instanceTypearg
  , _eC2SpotFleetSpotFleetLaunchSpecificationKernelId = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationKeyName = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationMonitoring = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationNetworkInterfaces = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationPlacement = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationRamdiskId = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationSecurityGroups = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationSpotPrice = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationSubnetId = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationTagSpecifications = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationUserData = Nothing
  , _eC2SpotFleetSpotFleetLaunchSpecificationWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-blockdevicemappings
ecsfsflsBlockDeviceMappings :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe [EC2SpotFleetBlockDeviceMapping])
ecsfsflsBlockDeviceMappings = lens _eC2SpotFleetSpotFleetLaunchSpecificationBlockDeviceMappings (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-ebsoptimized
ecsfsflsEbsOptimized :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Bool))
ecsfsflsEbsOptimized = lens _eC2SpotFleetSpotFleetLaunchSpecificationEbsOptimized (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-iaminstanceprofile
ecsfsflsIamInstanceProfile :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe EC2SpotFleetIamInstanceProfileSpecification)
ecsfsflsIamInstanceProfile = lens _eC2SpotFleetSpotFleetLaunchSpecificationIamInstanceProfile (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationIamInstanceProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-imageid
ecsfsflsImageId :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Val Text)
ecsfsflsImageId = lens _eC2SpotFleetSpotFleetLaunchSpecificationImageId (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-instancetype
ecsfsflsInstanceType :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Val Text)
ecsfsflsInstanceType = lens _eC2SpotFleetSpotFleetLaunchSpecificationInstanceType (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-kernelid
ecsfsflsKernelId :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsKernelId = lens _eC2SpotFleetSpotFleetLaunchSpecificationKernelId (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationKernelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-keyname
ecsfsflsKeyName :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsKeyName = lens _eC2SpotFleetSpotFleetLaunchSpecificationKeyName (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-monitoring
ecsfsflsMonitoring :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe EC2SpotFleetSpotFleetMonitoring)
ecsfsflsMonitoring = lens _eC2SpotFleetSpotFleetLaunchSpecificationMonitoring (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-networkinterfaces
ecsfsflsNetworkInterfaces :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe [EC2SpotFleetInstanceNetworkInterfaceSpecification])
ecsfsflsNetworkInterfaces = lens _eC2SpotFleetSpotFleetLaunchSpecificationNetworkInterfaces (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationNetworkInterfaces = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-placement
ecsfsflsPlacement :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe EC2SpotFleetSpotPlacement)
ecsfsflsPlacement = lens _eC2SpotFleetSpotFleetLaunchSpecificationPlacement (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-ramdiskid
ecsfsflsRamdiskId :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsRamdiskId = lens _eC2SpotFleetSpotFleetLaunchSpecificationRamdiskId (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationRamdiskId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-securitygroups
ecsfsflsSecurityGroups :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe [EC2SpotFleetGroupIdentifier])
ecsfsflsSecurityGroups = lens _eC2SpotFleetSpotFleetLaunchSpecificationSecurityGroups (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-spotprice
ecsfsflsSpotPrice :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsSpotPrice = lens _eC2SpotFleetSpotFleetLaunchSpecificationSpotPrice (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-subnetid
ecsfsflsSubnetId :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsSubnetId = lens _eC2SpotFleetSpotFleetLaunchSpecificationSubnetId (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-tagspecifications
ecsfsflsTagSpecifications :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe [EC2SpotFleetSpotFleetTagSpecification])
ecsfsflsTagSpecifications = lens _eC2SpotFleetSpotFleetLaunchSpecificationTagSpecifications (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationTagSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-userdata
ecsfsflsUserData :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Text))
ecsfsflsUserData = lens _eC2SpotFleetSpotFleetLaunchSpecificationUserData (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationUserData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-spotfleetlaunchspecification-weightedcapacity
ecsfsflsWeightedCapacity :: Lens' EC2SpotFleetSpotFleetLaunchSpecification (Maybe (Val Double))
ecsfsflsWeightedCapacity = lens _eC2SpotFleetSpotFleetLaunchSpecificationWeightedCapacity (\s a -> s { _eC2SpotFleetSpotFleetLaunchSpecificationWeightedCapacity = a })
