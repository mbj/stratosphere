
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html

module Stratosphere.ResourceProperties.EC2SpotFleetLaunchTemplateOverrides where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetLaunchTemplateOverrides. See
-- 'ec2SpotFleetLaunchTemplateOverrides' for a more convenient constructor.
data EC2SpotFleetLaunchTemplateOverrides =
  EC2SpotFleetLaunchTemplateOverrides
  { _eC2SpotFleetLaunchTemplateOverridesAvailabilityZone :: Maybe (Val Text)
  , _eC2SpotFleetLaunchTemplateOverridesInstanceType :: Maybe (Val Text)
  , _eC2SpotFleetLaunchTemplateOverridesSpotPrice :: Maybe (Val Text)
  , _eC2SpotFleetLaunchTemplateOverridesSubnetId :: Maybe (Val Text)
  , _eC2SpotFleetLaunchTemplateOverridesWeightedCapacity :: Maybe (Val Double)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetLaunchTemplateOverrides where
  toJSON EC2SpotFleetLaunchTemplateOverrides{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZone",) . toJSON) _eC2SpotFleetLaunchTemplateOverridesAvailabilityZone
    , fmap (("InstanceType",) . toJSON) _eC2SpotFleetLaunchTemplateOverridesInstanceType
    , fmap (("SpotPrice",) . toJSON) _eC2SpotFleetLaunchTemplateOverridesSpotPrice
    , fmap (("SubnetId",) . toJSON) _eC2SpotFleetLaunchTemplateOverridesSubnetId
    , fmap (("WeightedCapacity",) . toJSON) _eC2SpotFleetLaunchTemplateOverridesWeightedCapacity
    ]

-- | Constructor for 'EC2SpotFleetLaunchTemplateOverrides' containing required
-- fields as arguments.
ec2SpotFleetLaunchTemplateOverrides
  :: EC2SpotFleetLaunchTemplateOverrides
ec2SpotFleetLaunchTemplateOverrides  =
  EC2SpotFleetLaunchTemplateOverrides
  { _eC2SpotFleetLaunchTemplateOverridesAvailabilityZone = Nothing
  , _eC2SpotFleetLaunchTemplateOverridesInstanceType = Nothing
  , _eC2SpotFleetLaunchTemplateOverridesSpotPrice = Nothing
  , _eC2SpotFleetLaunchTemplateOverridesSubnetId = Nothing
  , _eC2SpotFleetLaunchTemplateOverridesWeightedCapacity = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-availabilityzone
ecsfltoAvailabilityZone :: Lens' EC2SpotFleetLaunchTemplateOverrides (Maybe (Val Text))
ecsfltoAvailabilityZone = lens _eC2SpotFleetLaunchTemplateOverridesAvailabilityZone (\s a -> s { _eC2SpotFleetLaunchTemplateOverridesAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-instancetype
ecsfltoInstanceType :: Lens' EC2SpotFleetLaunchTemplateOverrides (Maybe (Val Text))
ecsfltoInstanceType = lens _eC2SpotFleetLaunchTemplateOverridesInstanceType (\s a -> s { _eC2SpotFleetLaunchTemplateOverridesInstanceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-spotprice
ecsfltoSpotPrice :: Lens' EC2SpotFleetLaunchTemplateOverrides (Maybe (Val Text))
ecsfltoSpotPrice = lens _eC2SpotFleetLaunchTemplateOverridesSpotPrice (\s a -> s { _eC2SpotFleetLaunchTemplateOverridesSpotPrice = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-subnetid
ecsfltoSubnetId :: Lens' EC2SpotFleetLaunchTemplateOverrides (Maybe (Val Text))
ecsfltoSubnetId = lens _eC2SpotFleetLaunchTemplateOverridesSubnetId (\s a -> s { _eC2SpotFleetLaunchTemplateOverridesSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateoverrides.html#cfn-ec2-spotfleet-launchtemplateoverrides-weightedcapacity
ecsfltoWeightedCapacity :: Lens' EC2SpotFleetLaunchTemplateOverrides (Maybe (Val Double))
ecsfltoWeightedCapacity = lens _eC2SpotFleetLaunchTemplateOverridesWeightedCapacity (\s a -> s { _eC2SpotFleetLaunchTemplateOverridesWeightedCapacity = a })
