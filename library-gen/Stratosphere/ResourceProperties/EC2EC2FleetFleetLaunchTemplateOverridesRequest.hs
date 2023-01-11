
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateOverridesRequest where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2EC2FleetPlacement

-- | Full data type definition for
-- EC2EC2FleetFleetLaunchTemplateOverridesRequest. See
-- 'ec2EC2FleetFleetLaunchTemplateOverridesRequest' for a more convenient
-- constructor.
data EC2EC2FleetFleetLaunchTemplateOverridesRequest =
  EC2EC2FleetFleetLaunchTemplateOverridesRequest
  { _eC2EC2FleetFleetLaunchTemplateOverridesRequestAvailabilityZone :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestInstanceType :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestMaxPrice :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestPlacement :: Maybe EC2EC2FleetPlacement
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestPriority :: Maybe (Val Double)
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestSubnetId :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestWeightedCapacity :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetFleetLaunchTemplateOverridesRequest where
  toJSON EC2EC2FleetFleetLaunchTemplateOverridesRequest{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZone",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestAvailabilityZone
    , fmap (("InstanceType",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestInstanceType
    , fmap (("MaxPrice",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestMaxPrice
    , fmap (("Placement",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestPlacement
    , fmap (("Priority",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestPriority
    , fmap (("SubnetId",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestSubnetId
    , fmap (("WeightedCapacity",) . toJSON) _eC2EC2FleetFleetLaunchTemplateOverridesRequestWeightedCapacity
    ]

-- | Constructor for 'EC2EC2FleetFleetLaunchTemplateOverridesRequest'
-- containing required fields as arguments.
ec2EC2FleetFleetLaunchTemplateOverridesRequest
  :: EC2EC2FleetFleetLaunchTemplateOverridesRequest
ec2EC2FleetFleetLaunchTemplateOverridesRequest  =
  EC2EC2FleetFleetLaunchTemplateOverridesRequest
  { _eC2EC2FleetFleetLaunchTemplateOverridesRequestAvailabilityZone = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestInstanceType = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestMaxPrice = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestPlacement = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestPriority = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestSubnetId = Nothing
  , _eC2EC2FleetFleetLaunchTemplateOverridesRequestWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-availabilityzone
ececffltorAvailabilityZone :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Text))
ececffltorAvailabilityZone = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestAvailabilityZone (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-instancetype
ececffltorInstanceType :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Text))
ececffltorInstanceType = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestInstanceType (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-maxprice
ececffltorMaxPrice :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Text))
ececffltorMaxPrice = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestMaxPrice (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestMaxPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-placement
ececffltorPlacement :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe EC2EC2FleetPlacement)
ececffltorPlacement = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestPlacement (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestPlacement = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-priority
ececffltorPriority :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Double))
ececffltorPriority = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestPriority (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestPriority = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-subnetid
ececffltorSubnetId :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Text))
ececffltorSubnetId = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestSubnetId (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateoverridesrequest-weightedcapacity
ececffltorWeightedCapacity :: Lens' EC2EC2FleetFleetLaunchTemplateOverridesRequest (Maybe (Val Double))
ececffltorWeightedCapacity = lens _eC2EC2FleetFleetLaunchTemplateOverridesRequestWeightedCapacity (\s a -> s { _eC2EC2FleetFleetLaunchTemplateOverridesRequestWeightedCapacity = a })
