
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetSpotOptionsRequest where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EC2EC2FleetSpotOptionsRequest. See
-- 'ec2EC2FleetSpotOptionsRequest' for a more convenient constructor.
data EC2EC2FleetSpotOptionsRequest =
  EC2EC2FleetSpotOptionsRequest
  { _eC2EC2FleetSpotOptionsRequestAllocationStrategy :: Maybe (Val Text)
  , _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior :: Maybe (Val Text)
  , _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount :: Maybe (Val Integer)
  , _eC2EC2FleetSpotOptionsRequestMaxTotalPrice :: Maybe (Val Text)
  , _eC2EC2FleetSpotOptionsRequestMinTargetCapacity :: Maybe (Val Integer)
  , _eC2EC2FleetSpotOptionsRequestSingleAvailabilityZone :: Maybe (Val Bool)
  , _eC2EC2FleetSpotOptionsRequestSingleInstanceType :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetSpotOptionsRequest where
  toJSON EC2EC2FleetSpotOptionsRequest{..} =
    object $
    catMaybes
    [ fmap (("AllocationStrategy",) . toJSON) _eC2EC2FleetSpotOptionsRequestAllocationStrategy
    , fmap (("InstanceInterruptionBehavior",) . toJSON) _eC2EC2FleetSpotOptionsRequestInstanceInterruptionBehavior
    , fmap (("InstancePoolsToUseCount",) . toJSON) _eC2EC2FleetSpotOptionsRequestInstancePoolsToUseCount
    , fmap (("MaxTotalPrice",) . toJSON) _eC2EC2FleetSpotOptionsRequestMaxTotalPrice
    , fmap (("MinTargetCapacity",) . toJSON) _eC2EC2FleetSpotOptionsRequestMinTargetCapacity
    , fmap (("SingleAvailabilityZone",) . toJSON) _eC2EC2FleetSpotOptionsRequestSingleAvailabilityZone
    , fmap (("SingleInstanceType",) . toJSON) _eC2EC2FleetSpotOptionsRequestSingleInstanceType
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
  , _eC2EC2FleetSpotOptionsRequestMaxTotalPrice = Nothing
  , _eC2EC2FleetSpotOptionsRequestMinTargetCapacity = Nothing
  , _eC2EC2FleetSpotOptionsRequestSingleAvailabilityZone = Nothing
  , _eC2EC2FleetSpotOptionsRequestSingleInstanceType = Nothing
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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-maxtotalprice
ececfsorMaxTotalPrice :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Text))
ececfsorMaxTotalPrice = lens _eC2EC2FleetSpotOptionsRequestMaxTotalPrice (\s a -> s { _eC2EC2FleetSpotOptionsRequestMaxTotalPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-mintargetcapacity
ececfsorMinTargetCapacity :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Integer))
ececfsorMinTargetCapacity = lens _eC2EC2FleetSpotOptionsRequestMinTargetCapacity (\s a -> s { _eC2EC2FleetSpotOptionsRequestMinTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-singleavailabilityzone
ececfsorSingleAvailabilityZone :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Bool))
ececfsorSingleAvailabilityZone = lens _eC2EC2FleetSpotOptionsRequestSingleAvailabilityZone (\s a -> s { _eC2EC2FleetSpotOptionsRequestSingleAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-spotoptionsrequest.html#cfn-ec2-ec2fleet-spotoptionsrequest-singleinstancetype
ececfsorSingleInstanceType :: Lens' EC2EC2FleetSpotOptionsRequest (Maybe (Val Bool))
ececfsorSingleInstanceType = lens _eC2EC2FleetSpotOptionsRequestSingleInstanceType (\s a -> s { _eC2EC2FleetSpotOptionsRequestSingleInstanceType = a })
