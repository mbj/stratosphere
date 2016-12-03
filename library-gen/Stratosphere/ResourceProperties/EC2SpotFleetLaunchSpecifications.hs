{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html

module Stratosphere.ResourceProperties.EC2SpotFleetLaunchSpecifications where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetBlockDeviceMappings
import Stratosphere.ResourceProperties.EC2SpotFleetIamInstanceProfile
import Stratosphere.ResourceProperties.EC2SpotFleetMonitoring
import Stratosphere.ResourceProperties.EC2SpotFleetNetworkInterfaces
import Stratosphere.ResourceProperties.EC2SpotFleetPlacement
import Stratosphere.ResourceProperties.EC2SpotFleetSecurityGroups

-- | Full data type definition for EC2SpotFleetLaunchSpecifications. See
-- | 'ec2SpotFleetLaunchSpecifications' for a more convenient constructor.
data EC2SpotFleetLaunchSpecifications =
  EC2SpotFleetLaunchSpecifications
  { _eC2SpotFleetLaunchSpecificationsBlockDeviceMappings :: Maybe [EC2SpotFleetBlockDeviceMappings]
  , _eC2SpotFleetLaunchSpecificationsEbsOptimized :: Maybe (Val Bool')
  , _eC2SpotFleetLaunchSpecificationsIamInstanceProfile :: Maybe EC2SpotFleetIamInstanceProfile
  , _eC2SpotFleetLaunchSpecificationsImageId :: Val Text
  , _eC2SpotFleetLaunchSpecificationsInstanceType :: Val Text
  , _eC2SpotFleetLaunchSpecificationsKernelId :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsKeyName :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsMonitoring :: Maybe EC2SpotFleetMonitoring
  , _eC2SpotFleetLaunchSpecificationsNetworkInterfaces :: Maybe [EC2SpotFleetNetworkInterfaces]
  , _eC2SpotFleetLaunchSpecificationsPlacement :: Maybe EC2SpotFleetPlacement
  , _eC2SpotFleetLaunchSpecificationsRamdiskId :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsSecurityGroups :: Maybe [EC2SpotFleetSecurityGroups]
  , _eC2SpotFleetLaunchSpecificationsSpotPrice :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsSubnetId :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsUserData :: Maybe (Val Text)
  , _eC2SpotFleetLaunchSpecificationsWeightedCapacity :: Maybe (Val Double')
  } deriving (Show, Generic)

instance ToJSON EC2SpotFleetLaunchSpecifications where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON EC2SpotFleetLaunchSpecifications where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetLaunchSpecifications' containing required
-- | fields as arguments.
ec2SpotFleetLaunchSpecifications
  :: Val Text -- ^ 'ecsflsImageId'
  -> Val Text -- ^ 'ecsflsInstanceType'
  -> EC2SpotFleetLaunchSpecifications
ec2SpotFleetLaunchSpecifications imageIdarg instanceTypearg =
  EC2SpotFleetLaunchSpecifications
  { _eC2SpotFleetLaunchSpecificationsBlockDeviceMappings = Nothing
  , _eC2SpotFleetLaunchSpecificationsEbsOptimized = Nothing
  , _eC2SpotFleetLaunchSpecificationsIamInstanceProfile = Nothing
  , _eC2SpotFleetLaunchSpecificationsImageId = imageIdarg
  , _eC2SpotFleetLaunchSpecificationsInstanceType = instanceTypearg
  , _eC2SpotFleetLaunchSpecificationsKernelId = Nothing
  , _eC2SpotFleetLaunchSpecificationsKeyName = Nothing
  , _eC2SpotFleetLaunchSpecificationsMonitoring = Nothing
  , _eC2SpotFleetLaunchSpecificationsNetworkInterfaces = Nothing
  , _eC2SpotFleetLaunchSpecificationsPlacement = Nothing
  , _eC2SpotFleetLaunchSpecificationsRamdiskId = Nothing
  , _eC2SpotFleetLaunchSpecificationsSecurityGroups = Nothing
  , _eC2SpotFleetLaunchSpecificationsSpotPrice = Nothing
  , _eC2SpotFleetLaunchSpecificationsSubnetId = Nothing
  , _eC2SpotFleetLaunchSpecificationsUserData = Nothing
  , _eC2SpotFleetLaunchSpecificationsWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-blockdevicemappings
ecsflsBlockDeviceMappings :: Lens' EC2SpotFleetLaunchSpecifications (Maybe [EC2SpotFleetBlockDeviceMappings])
ecsflsBlockDeviceMappings = lens _eC2SpotFleetLaunchSpecificationsBlockDeviceMappings (\s a -> s { _eC2SpotFleetLaunchSpecificationsBlockDeviceMappings = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-ebsoptimized
ecsflsEbsOptimized :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Bool'))
ecsflsEbsOptimized = lens _eC2SpotFleetLaunchSpecificationsEbsOptimized (\s a -> s { _eC2SpotFleetLaunchSpecificationsEbsOptimized = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-iaminstanceprofile
ecsflsIamInstanceProfile :: Lens' EC2SpotFleetLaunchSpecifications (Maybe EC2SpotFleetIamInstanceProfile)
ecsflsIamInstanceProfile = lens _eC2SpotFleetLaunchSpecificationsIamInstanceProfile (\s a -> s { _eC2SpotFleetLaunchSpecificationsIamInstanceProfile = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-imageid
ecsflsImageId :: Lens' EC2SpotFleetLaunchSpecifications (Val Text)
ecsflsImageId = lens _eC2SpotFleetLaunchSpecificationsImageId (\s a -> s { _eC2SpotFleetLaunchSpecificationsImageId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-instancetype
ecsflsInstanceType :: Lens' EC2SpotFleetLaunchSpecifications (Val Text)
ecsflsInstanceType = lens _eC2SpotFleetLaunchSpecificationsInstanceType (\s a -> s { _eC2SpotFleetLaunchSpecificationsInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-kernelid
ecsflsKernelId :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsKernelId = lens _eC2SpotFleetLaunchSpecificationsKernelId (\s a -> s { _eC2SpotFleetLaunchSpecificationsKernelId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-keyname
ecsflsKeyName :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsKeyName = lens _eC2SpotFleetLaunchSpecificationsKeyName (\s a -> s { _eC2SpotFleetLaunchSpecificationsKeyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-monitoring
ecsflsMonitoring :: Lens' EC2SpotFleetLaunchSpecifications (Maybe EC2SpotFleetMonitoring)
ecsflsMonitoring = lens _eC2SpotFleetLaunchSpecificationsMonitoring (\s a -> s { _eC2SpotFleetLaunchSpecificationsMonitoring = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-networkinterfaces
ecsflsNetworkInterfaces :: Lens' EC2SpotFleetLaunchSpecifications (Maybe [EC2SpotFleetNetworkInterfaces])
ecsflsNetworkInterfaces = lens _eC2SpotFleetLaunchSpecificationsNetworkInterfaces (\s a -> s { _eC2SpotFleetLaunchSpecificationsNetworkInterfaces = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-placement
ecsflsPlacement :: Lens' EC2SpotFleetLaunchSpecifications (Maybe EC2SpotFleetPlacement)
ecsflsPlacement = lens _eC2SpotFleetLaunchSpecificationsPlacement (\s a -> s { _eC2SpotFleetLaunchSpecificationsPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-ramdiskid
ecsflsRamdiskId :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsRamdiskId = lens _eC2SpotFleetLaunchSpecificationsRamdiskId (\s a -> s { _eC2SpotFleetLaunchSpecificationsRamdiskId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-securitygroups
ecsflsSecurityGroups :: Lens' EC2SpotFleetLaunchSpecifications (Maybe [EC2SpotFleetSecurityGroups])
ecsflsSecurityGroups = lens _eC2SpotFleetLaunchSpecificationsSecurityGroups (\s a -> s { _eC2SpotFleetLaunchSpecificationsSecurityGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-spotprice
ecsflsSpotPrice :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsSpotPrice = lens _eC2SpotFleetLaunchSpecificationsSpotPrice (\s a -> s { _eC2SpotFleetLaunchSpecificationsSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-subnetid
ecsflsSubnetId :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsSubnetId = lens _eC2SpotFleetLaunchSpecificationsSubnetId (\s a -> s { _eC2SpotFleetLaunchSpecificationsSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-userdata
ecsflsUserData :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Text))
ecsflsUserData = lens _eC2SpotFleetLaunchSpecificationsUserData (\s a -> s { _eC2SpotFleetLaunchSpecificationsUserData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications.html#cfn-ec2-spotfleet-launchspecifications-weightedcapacity
ecsflsWeightedCapacity :: Lens' EC2SpotFleetLaunchSpecifications (Maybe (Val Double'))
ecsflsWeightedCapacity = lens _eC2SpotFleetLaunchSpecificationsWeightedCapacity (\s a -> s { _eC2SpotFleetLaunchSpecificationsWeightedCapacity = a })
