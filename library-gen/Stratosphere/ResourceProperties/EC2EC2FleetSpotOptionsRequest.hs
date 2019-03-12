{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetSpotOptionsRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2EC2FleetSpotOptionsRequest. See
-- 'ec2EC2FleetSpotOptionsRequest' for a more convenient constructor.
data EC2EC2FleetSpotOptionsRequest =
  EC2EC2FleetSpotOptionsRequest
  { _eC2EC2FleetSpotOptionsRequestAllocationStrategy :: Maybe (Val Text)
  , _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior :: Maybe (Val Text)
  , _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetSpotOptionsRequest where
  toJSON EC2EC2FleetSpotOptionsRequest{..} =
    object $
    catMaybes
    [ fmap (("AllocationStrategy",) . toJSON) _eC2EC2FleetSpotOptionsRequestAllocationStrategy
    , fmap (("InstanceInterruptionBehavior",) . toJSON) _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior
    , fmap (("InstancePoolsToUseCount",) . toJSON) _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount
    ]

-- | Constructor for 'EC2EC2FleetSpotOptionsRequest' containing required
-- fields as arguments.
ec2EC2FleetSpotOptionsRequest
  :: EC2EC2FleetSpotOptionsRequest
ec2EC2FleetSpotOptionsRequest  =
  EC2EC2FleetSpotOptionsRequest
  { _eC2EC2FleetSpotOptionsRequestAllocationStrategy = Nothing
  , _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior = Nothing
  , _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-allocationstrategy
ececfsorAllocationStrategy :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Text))
ececfsorAllocationStrategy = lens _eC2EC2FleetSpotOptionsRequestAllocationStrategy (\s a -> s { _eC2EC2FleetSpotOptionsRequestAllocationStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instanceinterruptionbehavior
ececfsorInstanceInterruptionBehavior :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Text))
ececfsorInstanceInterruptionBehavior = lens _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior (\s a -> s { _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-instancepoolstousecount
ececfsorInstancePoolsToUseCount :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Integer))
ececfsorInstancePoolsToUseCount = lens _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount (\s a -> s { _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount = a })
