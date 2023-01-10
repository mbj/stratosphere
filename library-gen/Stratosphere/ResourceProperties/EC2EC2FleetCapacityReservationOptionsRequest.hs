
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetCapacityReservationOptionsRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2EC2FleetCapacityReservationOptionsRequest. See
-- 'ec2EC2FleetCapacityReservationOptionsRequest' for a more convenient
-- constructor.
data EC2EC2FleetCapacityReservationOptionsRequest =
  EC2EC2FleetCapacityReservationOptionsRequest
  { _eC2EC2FleetCapacityReservationOptionsRequestUsageStrategy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetCapacityReservationOptionsRequest where
  toJSON EC2EC2FleetCapacityReservationOptionsRequest{..} =
    object $
    catMaybes
    [ fmap (("UsageStrategy",) . toJSON) _eC2EC2FleetCapacityReservationOptionsRequestUsageStrategy
    ]

-- | Constructor for 'EC2EC2FleetCapacityReservationOptionsRequest' containing
-- required fields as arguments.
ec2EC2FleetCapacityReservationOptionsRequest
  :: EC2EC2FleetCapacityReservationOptionsRequest
ec2EC2FleetCapacityReservationOptionsRequest  =
  EC2EC2FleetCapacityReservationOptionsRequest
  { _eC2EC2FleetCapacityReservationOptionsRequestUsageStrategy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html#cfn-ec2-ec2fleet-capacityreservationoptionsrequest-usagestrategy
ececfcrorUsageStrategy :: Lens' EC2EC2FleetCapacityReservationOptionsRequest (Maybe (Val Text))
ececfcrorUsageStrategy = lens _eC2EC2FleetCapacityReservationOptionsRequestUsageStrategy (\s a -> s { _eC2EC2FleetCapacityReservationOptionsRequestUsageStrategy = a })
