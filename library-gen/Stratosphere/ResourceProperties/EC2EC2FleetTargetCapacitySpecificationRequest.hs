{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetTargetCapacitySpecificationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2EC2FleetTargetCapacitySpecificationRequest. See
-- 'ec2EC2FleetTargetCapacitySpecificationRequest' for a more convenient
-- constructor.
data EC2EC2FleetTargetCapacitySpecificationRequest =
  EC2EC2FleetTargetCapacitySpecificationRequest
  { _eC2EC2FleetTargetCapacitySpecificationRequestDefaultTargetCapacityType :: Maybe (Val Text)
  , _eC2EC2FleetTargetCapacitySpecificationRequestOnDemandTargetCapacity :: Maybe (Val Integer)
  , _eC2EC2FleetTargetCapacitySpecificationRequestSpotTargetCapacity :: Maybe (Val Integer)
  , _eC2EC2FleetTargetCapacitySpecificationRequestTotalTargetCapacity :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetTargetCapacitySpecificationRequest where
  toJSON EC2EC2FleetTargetCapacitySpecificationRequest{..} =
    object $
    catMaybes
    [ fmap (("DefaultTargetCapacityType",) . toJSON) _eC2EC2FleetTargetCapacitySpecificationRequestDefaultTargetCapacityType
    , fmap (("OnDemandTargetCapacity",) . toJSON . fmap Integer') _eC2EC2FleetTargetCapacitySpecificationRequestOnDemandTargetCapacity
    , fmap (("SpotTargetCapacity",) . toJSON . fmap Integer') _eC2EC2FleetTargetCapacitySpecificationRequestSpotTargetCapacity
    , (Just . ("TotalTargetCapacity",) . toJSON . fmap Integer') _eC2EC2FleetTargetCapacitySpecificationRequestTotalTargetCapacity
    ]

-- | Constructor for 'EC2EC2FleetTargetCapacitySpecificationRequest'
-- containing required fields as arguments.
ec2EC2FleetTargetCapacitySpecificationRequest
  :: Val Integer -- ^ 'ececftcsrTotalTargetCapacity'
  -> EC2EC2FleetTargetCapacitySpecificationRequest
ec2EC2FleetTargetCapacitySpecificationRequest totalTargetCapacityarg =
  EC2EC2FleetTargetCapacitySpecificationRequest
  { _eC2EC2FleetTargetCapacitySpecificationRequestDefaultTargetCapacityType = Nothing
  , _eC2EC2FleetTargetCapacitySpecificationRequestOnDemandTargetCapacity = Nothing
  , _eC2EC2FleetTargetCapacitySpecificationRequestSpotTargetCapacity = Nothing
  , _eC2EC2FleetTargetCapacitySpecificationRequestTotalTargetCapacity = totalTargetCapacityarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-defaulttargetcapacitytype
ececftcsrDefaultTargetCapacityType :: Lens' EC2EC2FleetTargetCapacitySpecificationRequest (Maybe (Val Text))
ececftcsrDefaultTargetCapacityType = lens _eC2EC2FleetTargetCapacitySpecificationRequestDefaultTargetCapacityType (\s a -> s { _eC2EC2FleetTargetCapacitySpecificationRequestDefaultTargetCapacityType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-ondemandtargetcapacity
ececftcsrOnDemandTargetCapacity :: Lens' EC2EC2FleetTargetCapacitySpecificationRequest (Maybe (Val Integer))
ececftcsrOnDemandTargetCapacity = lens _eC2EC2FleetTargetCapacitySpecificationRequestOnDemandTargetCapacity (\s a -> s { _eC2EC2FleetTargetCapacitySpecificationRequestOnDemandTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-spottargetcapacity
ececftcsrSpotTargetCapacity :: Lens' EC2EC2FleetTargetCapacitySpecificationRequest (Maybe (Val Integer))
ececftcsrSpotTargetCapacity = lens _eC2EC2FleetTargetCapacitySpecificationRequestSpotTargetCapacity (\s a -> s { _eC2EC2FleetTargetCapacitySpecificationRequestSpotTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-targetcapacityspecificationrequest.html#cfn-ec2-ec2fleet-targetcapacityspecificationrequest-totaltargetcapacity
ececftcsrTotalTargetCapacity :: Lens' EC2EC2FleetTargetCapacitySpecificationRequest (Val Integer)
ececftcsrTotalTargetCapacity = lens _eC2EC2FleetTargetCapacitySpecificationRequestTotalTargetCapacity (\s a -> s { _eC2EC2FleetTargetCapacitySpecificationRequestTotalTargetCapacity = a })
