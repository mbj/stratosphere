
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html

module Stratosphere.ResourceProperties.EC2EC2FleetPlacement where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EC2EC2FleetPlacement. See
-- 'ec2EC2FleetPlacement' for a more convenient constructor.
data EC2EC2FleetPlacement =
  EC2EC2FleetPlacement
  { _eC2EC2FleetPlacementAffinity :: Maybe (Val Text)
  , _eC2EC2FleetPlacementAvailabilityZone :: Maybe (Val Text)
  , _eC2EC2FleetPlacementGroupName :: Maybe (Val Text)
  , _eC2EC2FleetPlacementHostId :: Maybe (Val Text)
  , _eC2EC2FleetPlacementHostResourceGroupArn :: Maybe (Val Text)
  , _eC2EC2FleetPlacementPartitionNumber :: Maybe (Val Integer)
  , _eC2EC2FleetPlacementSpreadDomain :: Maybe (Val Text)
  , _eC2EC2FleetPlacementTenancy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetPlacement where
  toJSON EC2EC2FleetPlacement{..} =
    object $
    catMaybes
    [ fmap (("Affinity",) . toJSON) _eC2EC2FleetPlacementAffinity
    , fmap (("AvailabilityZone",) . toJSON) _eC2EC2FleetPlacementAvailabilityZone
    , fmap (("GroupName",) . toJSON) _eC2EC2FleetPlacementGroupName
    , fmap (("HostId",) . toJSON) _eC2EC2FleetPlacementHostId
    , fmap (("HostResourceGroupArn",) . toJSON) _eC2EC2FleetPlacementHostResourceGroupArn
    , fmap (("PartitionNumber",) . toJSON) _eC2EC2FleetPlacementPartitionNumber
    , fmap (("SpreadDomain",) . toJSON) _eC2EC2FleetPlacementSpreadDomain
    , fmap (("Tenancy",) . toJSON) _eC2EC2FleetPlacementTenancy
    ]

-- | Constructor for 'EC2EC2FleetPlacement' containing required fields as
-- arguments.
ec2EC2FleetPlacement
  :: EC2EC2FleetPlacement
ec2EC2FleetPlacement  =
  EC2EC2FleetPlacement
  { _eC2EC2FleetPlacementAffinity = Nothing
  , _eC2EC2FleetPlacementAvailabilityZone = Nothing
  , _eC2EC2FleetPlacementGroupName = Nothing
  , _eC2EC2FleetPlacementHostId = Nothing
  , _eC2EC2FleetPlacementHostResourceGroupArn = Nothing
  , _eC2EC2FleetPlacementPartitionNumber = Nothing
  , _eC2EC2FleetPlacementSpreadDomain = Nothing
  , _eC2EC2FleetPlacementTenancy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-affinity
ececfpAffinity :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpAffinity = lens _eC2EC2FleetPlacementAffinity (\s a -> s { _eC2EC2FleetPlacementAffinity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-availabilityzone
ececfpAvailabilityZone :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpAvailabilityZone = lens _eC2EC2FleetPlacementAvailabilityZone (\s a -> s { _eC2EC2FleetPlacementAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-groupname
ececfpGroupName :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpGroupName = lens _eC2EC2FleetPlacementGroupName (\s a -> s { _eC2EC2FleetPlacementGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-hostid
ececfpHostId :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpHostId = lens _eC2EC2FleetPlacementHostId (\s a -> s { _eC2EC2FleetPlacementHostId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-hostresourcegrouparn
ececfpHostResourceGroupArn :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpHostResourceGroupArn = lens _eC2EC2FleetPlacementHostResourceGroupArn (\s a -> s { _eC2EC2FleetPlacementHostResourceGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-partitionnumber
ececfpPartitionNumber :: Lens' EC2EC2FleetPlacement (Maybe (Val Integer))
ececfpPartitionNumber = lens _eC2EC2FleetPlacementPartitionNumber (\s a -> s { _eC2EC2FleetPlacementPartitionNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-spreaddomain
ececfpSpreadDomain :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpSpreadDomain = lens _eC2EC2FleetPlacementSpreadDomain (\s a -> s { _eC2EC2FleetPlacementSpreadDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-placement.html#cfn-ec2-ec2fleet-placement-tenancy
ececfpTenancy :: Lens' EC2EC2FleetPlacement (Maybe (Val Text))
ececfpTenancy = lens _eC2EC2FleetPlacementTenancy (\s a -> s { _eC2EC2FleetPlacementTenancy = a })
