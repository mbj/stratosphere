{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html

module Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetRequestConfigData where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetSpotFleetLaunchSpecification

-- | Full data type definition for EC2SpotFleetSpotFleetRequestConfigData. See
-- 'ec2SpotFleetSpotFleetRequestConfigData' for a more convenient
-- constructor.
data EC2SpotFleetSpotFleetRequestConfigData =
  EC2SpotFleetSpotFleetRequestConfigData
  { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole :: Val Text
  , _eC2SpotFleetSpotFleetRequestConfigDataLaunchSpecifications :: [EC2SpotFleetSpotFleetLaunchSpecification]
  , _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice :: Val Text
  , _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity :: Val Integer
  , _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration :: Maybe (Val Bool)
  , _eC2SpotFleetSpotFleetRequestConfigDataValidFrom :: Maybe (Val Text)
  , _eC2SpotFleetSpotFleetRequestConfigDataValidUntil :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetSpotFleetRequestConfigData where
  toJSON EC2SpotFleetSpotFleetRequestConfigData{..} =
    object $
    catMaybes
    [ fmap (("AllocationStrategy",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy
    , fmap (("ExcessCapacityTerminationPolicy",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy
    , (Just . ("IamFleetRole",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole
    , (Just . ("LaunchSpecifications",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataLaunchSpecifications
    , (Just . ("SpotPrice",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice
    , (Just . ("TargetCapacity",) . toJSON . fmap Integer') _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity
    , fmap (("TerminateInstancesWithExpiration",) . toJSON . fmap Bool') _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration
    , fmap (("ValidFrom",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataValidFrom
    , fmap (("ValidUntil",) . toJSON) _eC2SpotFleetSpotFleetRequestConfigDataValidUntil
    ]

instance FromJSON EC2SpotFleetSpotFleetRequestConfigData where
  parseJSON (Object obj) =
    EC2SpotFleetSpotFleetRequestConfigData <$>
      (obj .:? "AllocationStrategy") <*>
      (obj .:? "ExcessCapacityTerminationPolicy") <*>
      (obj .: "IamFleetRole") <*>
      (obj .: "LaunchSpecifications") <*>
      (obj .: "SpotPrice") <*>
      fmap (fmap unInteger') (obj .: "TargetCapacity") <*>
      fmap (fmap (fmap unBool')) (obj .:? "TerminateInstancesWithExpiration") <*>
      (obj .:? "ValidFrom") <*>
      (obj .:? "ValidUntil")
  parseJSON _ = mempty

-- | Constructor for 'EC2SpotFleetSpotFleetRequestConfigData' containing
-- required fields as arguments.
ec2SpotFleetSpotFleetRequestConfigData
  :: Val Text -- ^ 'ecsfsfrcdIamFleetRole'
  -> [EC2SpotFleetSpotFleetLaunchSpecification] -- ^ 'ecsfsfrcdLaunchSpecifications'
  -> Val Text -- ^ 'ecsfsfrcdSpotPrice'
  -> Val Integer -- ^ 'ecsfsfrcdTargetCapacity'
  -> EC2SpotFleetSpotFleetRequestConfigData
ec2SpotFleetSpotFleetRequestConfigData iamFleetRolearg launchSpecificationsarg spotPricearg targetCapacityarg =
  EC2SpotFleetSpotFleetRequestConfigData
  { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole = iamFleetRolearg
  , _eC2SpotFleetSpotFleetRequestConfigDataLaunchSpecifications = launchSpecificationsarg
  , _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice = spotPricearg
  , _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity = targetCapacityarg
  , _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataValidFrom = Nothing
  , _eC2SpotFleetSpotFleetRequestConfigDataValidUntil = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-allocationstrategy
ecsfsfrcdAllocationStrategy :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdAllocationStrategy = lens _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataAllocationStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-excesscapacityterminationpolicy
ecsfsfrcdExcessCapacityTerminationPolicy :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdExcessCapacityTerminationPolicy = lens _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataExcessCapacityTerminationPolicy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-iamfleetrole
ecsfsfrcdIamFleetRole :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Text)
ecsfsfrcdIamFleetRole = lens _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataIamFleetRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications
ecsfsfrcdLaunchSpecifications :: Lens' EC2SpotFleetSpotFleetRequestConfigData [EC2SpotFleetSpotFleetLaunchSpecification]
ecsfsfrcdLaunchSpecifications = lens _eC2SpotFleetSpotFleetRequestConfigDataLaunchSpecifications (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataLaunchSpecifications = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-spotprice
ecsfsfrcdSpotPrice :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Text)
ecsfsfrcdSpotPrice = lens _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-targetcapacity
ecsfsfrcdTargetCapacity :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Val Integer)
ecsfsfrcdTargetCapacity = lens _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-terminateinstanceswithexpiration
ecsfsfrcdTerminateInstancesWithExpiration :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Bool))
ecsfsfrcdTerminateInstancesWithExpiration = lens _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataTerminateInstancesWithExpiration = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validfrom
ecsfsfrcdValidFrom :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdValidFrom = lens _eC2SpotFleetSpotFleetRequestConfigDataValidFrom (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataValidFrom = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata.html#cfn-ec2-spotfleet-spotfleetrequestconfigdata-validuntil
ecsfsfrcdValidUntil :: Lens' EC2SpotFleetSpotFleetRequestConfigData (Maybe (Val Text))
ecsfsfrcdValidUntil = lens _eC2SpotFleetSpotFleetRequestConfigDataValidUntil (\s a -> s { _eC2SpotFleetSpotFleetRequestConfigDataValidUntil = a })
