
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html

module Stratosphere.ResourceProperties.EC2LaunchTemplatePlacement where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplatePlacement. See
-- 'ec2LaunchTemplatePlacement' for a more convenient constructor.
data EC2LaunchTemplatePlacement =
  EC2LaunchTemplatePlacement
  { _eC2LaunchTemplatePlacementAffinity :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementAvailabilityZone :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementGroupName :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementHostId :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementHostResourceGroupArn :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementPartitionNumber :: Maybe (Val Integer)
  , _eC2LaunchTemplatePlacementSpreadDomain :: Maybe (Val Text)
  , _eC2LaunchTemplatePlacementTenancy :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplatePlacement where
  toJSON EC2LaunchTemplatePlacement{..} =
    object $
    catMaybes
    [ fmap (("Affinity",) . toJSON) _eC2LaunchTemplatePlacementAffinity
    , fmap (("AvailabilityZone",) . toJSON) _eC2LaunchTemplatePlacementAvailabilityZone
    , fmap (("GroupName",) . toJSON) _eC2LaunchTemplatePlacementGroupName
    , fmap (("HostId",) . toJSON) _eC2LaunchTemplatePlacementHostId
    , fmap (("HostResourceGroupArn",) . toJSON) _eC2LaunchTemplatePlacementHostResourceGroupArn
    , fmap (("PartitionNumber",) . toJSON) _eC2LaunchTemplatePlacementPartitionNumber
    , fmap (("SpreadDomain",) . toJSON) _eC2LaunchTemplatePlacementSpreadDomain
    , fmap (("Tenancy",) . toJSON) _eC2LaunchTemplatePlacementTenancy
    ]

-- | Constructor for 'EC2LaunchTemplatePlacement' containing required fields
-- as arguments.
ec2LaunchTemplatePlacement
  :: EC2LaunchTemplatePlacement
ec2LaunchTemplatePlacement  =
  EC2LaunchTemplatePlacement
  { _eC2LaunchTemplatePlacementAffinity = Nothing
  , _eC2LaunchTemplatePlacementAvailabilityZone = Nothing
  , _eC2LaunchTemplatePlacementGroupName = Nothing
  , _eC2LaunchTemplatePlacementHostId = Nothing
  , _eC2LaunchTemplatePlacementHostResourceGroupArn = Nothing
  , _eC2LaunchTemplatePlacementPartitionNumber = Nothing
  , _eC2LaunchTemplatePlacementSpreadDomain = Nothing
  , _eC2LaunchTemplatePlacementTenancy = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-affinity
ecltpAffinity :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpAffinity = lens _eC2LaunchTemplatePlacementAffinity (\s a -> s { _eC2LaunchTemplatePlacementAffinity = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-availabilityzone
ecltpAvailabilityZone :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpAvailabilityZone = lens _eC2LaunchTemplatePlacementAvailabilityZone (\s a -> s { _eC2LaunchTemplatePlacementAvailabilityZone = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-groupname
ecltpGroupName :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpGroupName = lens _eC2LaunchTemplatePlacementGroupName (\s a -> s { _eC2LaunchTemplatePlacementGroupName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-hostid
ecltpHostId :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpHostId = lens _eC2LaunchTemplatePlacementHostId (\s a -> s { _eC2LaunchTemplatePlacementHostId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-hostresourcegrouparn
ecltpHostResourceGroupArn :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpHostResourceGroupArn = lens _eC2LaunchTemplatePlacementHostResourceGroupArn (\s a -> s { _eC2LaunchTemplatePlacementHostResourceGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-partitionnumber
ecltpPartitionNumber :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Integer))
ecltpPartitionNumber = lens _eC2LaunchTemplatePlacementPartitionNumber (\s a -> s { _eC2LaunchTemplatePlacementPartitionNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-spreaddomain
ecltpSpreadDomain :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpSpreadDomain = lens _eC2LaunchTemplatePlacementSpreadDomain (\s a -> s { _eC2LaunchTemplatePlacementSpreadDomain = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-placement.html#cfn-ec2-launchtemplate-launchtemplatedata-placement-tenancy
ecltpTenancy :: Lens' EC2LaunchTemplatePlacement (Maybe (Val Text))
ecltpTenancy = lens _eC2LaunchTemplatePlacementTenancy (\s a -> s { _eC2LaunchTemplatePlacementTenancy = a })
