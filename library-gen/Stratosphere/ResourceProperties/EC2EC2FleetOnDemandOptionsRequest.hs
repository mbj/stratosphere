{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetOnDemandOptionsRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2EC2FleetOnDemandOptionsRequest. See
-- 'ec2EC2FleetOnDemandOptionsRequest' for a more convenient constructor.
data EC2EC2FleetOnDemandOptionsRequest =
  EC2EC2FleetOnDemandOptionsRequest
  { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetOnDemandOptionsRequest where
  toJSON EC2EC2FleetOnDemandOptionsRequest{..} =
    object $
    catMaybes
    [ fmap (("AllocationStrategy",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy
    ]

-- | Constructor for 'EC2EC2FleetOnDemandOptionsRequest' containing required
-- fields as arguments.
ec2EC2FleetOnDemandOptionsRequest
  :: EC2EC2FleetOnDemandOptionsRequest
ec2EC2FleetOnDemandOptionsRequest  =
  EC2EC2FleetOnDemandOptionsRequest
  { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-allocationstrategy
ececfodorAllocationStrategy :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Text))
ececfodorAllocationStrategy = lens _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy = a })
