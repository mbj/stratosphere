
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetOnDemandOptionsRequest where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2EC2FleetCapacityReservationOptionsRequest

-- | Full data type definition for EC2EC2FleetOnDemandOptionsRequest. See
-- 'ec2EC2FleetOnDemandOptionsRequest' for a more convenient constructor.
data EC2EC2FleetOnDemandOptionsRequest =
  EC2EC2FleetOnDemandOptionsRequest
  { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy :: Maybe (Val Text)
  , _eC2EC2FleetOnDemandOptionsRequestCapacityReservationOptions :: Maybe EC2EC2FleetCapacityReservationOptionsRequest
  , _eC2EC2FleetOnDemandOptionsRequestMaxTotalPrice :: Maybe (Val Text)
  , _eC2EC2FleetOnDemandOptionsRequestMinTargetCapacity :: Maybe (Val Integer)
  , _eC2EC2FleetOnDemandOptionsRequestSingleAvailabilityZone :: Maybe (Val Bool)
  , _eC2EC2FleetOnDemandOptionsRequestSingleInstanceType :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetOnDemandOptionsRequest where
  toJSON EC2EC2FleetOnDemandOptionsRequest{..} =
    object $
    catMaybes
    [ fmap (("AllocationStrategy",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy
    , fmap (("CapacityReservationOptions",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestCapacityReservationOptions
    , fmap (("MaxTotalPrice",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestMaxTotalPrice
    , fmap (("MinTargetCapacity",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestMinTargetCapacity
    , fmap (("SingleAvailabilityZone",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestSingleAvailabilityZone
    , fmap (("SingleInstanceType",) . toJSON) _eC2EC2FleetOnDemandOptionsRequestSingleInstanceType
    ]

-- | Constructor for 'EC2EC2FleetOnDemandOptionsRequest' containing required
-- fields as arguments.
ec2EC2FleetOnDemandOptionsRequest
  :: EC2EC2FleetOnDemandOptionsRequest
ec2EC2FleetOnDemandOptionsRequest  =
  EC2EC2FleetOnDemandOptionsRequest
  { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy = Nothing
  , _eC2EC2FleetOnDemandOptionsRequestCapacityReservationOptions = Nothing
  , _eC2EC2FleetOnDemandOptionsRequestMaxTotalPrice = Nothing
  , _eC2EC2FleetOnDemandOptionsRequestMinTargetCapacity = Nothing
  , _eC2EC2FleetOnDemandOptionsRequestSingleAvailabilityZone = Nothing
  , _eC2EC2FleetOnDemandOptionsRequestSingleInstanceType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-allocationstrategy
ececfodorAllocationStrategy :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Text))
ececfodorAllocationStrategy = lens _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestAllocationStrategy = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-capacityreservationoptions
ececfodorCapacityReservationOptions :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe EC2EC2FleetCapacityReservationOptionsRequest)
ececfodorCapacityReservationOptions = lens _eC2EC2FleetOnDemandOptionsRequestCapacityReservationOptions (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestCapacityReservationOptions = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-maxtotalprice
ececfodorMaxTotalPrice :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Text))
ececfodorMaxTotalPrice = lens _eC2EC2FleetOnDemandOptionsRequestMaxTotalPrice (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestMaxTotalPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-mintargetcapacity
ececfodorMinTargetCapacity :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Integer))
ececfodorMinTargetCapacity = lens _eC2EC2FleetOnDemandOptionsRequestMinTargetCapacity (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestMinTargetCapacity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-singleavailabilityzone
ececfodorSingleAvailabilityZone :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Bool))
ececfodorSingleAvailabilityZone = lens _eC2EC2FleetOnDemandOptionsRequestSingleAvailabilityZone (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestSingleAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-ondemandoptionsrequest.html#cfn-ec2-ec2fleet-ondemandoptionsrequest-singleinstancetype
ececfodorSingleInstanceType :: Lens' EC2EC2FleetOnDemandOptionsRequest (Maybe (Val Bool))
ececfodorSingleInstanceType = lens _eC2EC2FleetOnDemandOptionsRequestSingleInstanceType (\s a -> s { _eC2EC2FleetOnDemandOptionsRequestSingleInstanceType = a })
