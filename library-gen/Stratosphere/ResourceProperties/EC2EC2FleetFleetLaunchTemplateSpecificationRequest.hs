
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateSpecificationRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2EC2FleetFleetLaunchTemplateSpecificationRequest. See
-- 'ec2EC2FleetFleetLaunchTemplateSpecificationRequest' for a more
-- convenient constructor.
data EC2EC2FleetFleetLaunchTemplateSpecificationRequest =
  EC2EC2FleetFleetLaunchTemplateSpecificationRequest
  { _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateId :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateName :: Maybe (Val Text)
  , _eC2EC2FleetFleetLaunchTemplateSpecificationRequestVersion :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetFleetLaunchTemplateSpecificationRequest where
  toJSON EC2EC2FleetFleetLaunchTemplateSpecificationRequest{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateName
    , fmap (("Version",) . toJSON) _eC2EC2FleetFleetLaunchTemplateSpecificationRequestVersion
    ]

-- | Constructor for 'EC2EC2FleetFleetLaunchTemplateSpecificationRequest'
-- containing required fields as arguments.
ec2EC2FleetFleetLaunchTemplateSpecificationRequest
  :: EC2EC2FleetFleetLaunchTemplateSpecificationRequest
ec2EC2FleetFleetLaunchTemplateSpecificationRequest  =
  EC2EC2FleetFleetLaunchTemplateSpecificationRequest
  { _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateId = Nothing
  , _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateName = Nothing
  , _eC2EC2FleetFleetLaunchTemplateSpecificationRequestVersion = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplateid
ececffltsrLaunchTemplateId :: Lens' EC2EC2FleetFleetLaunchTemplateSpecificationRequest (Maybe (Val Text))
ececffltsrLaunchTemplateId = lens _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateId (\s a -> s { _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-launchtemplatename
ececffltsrLaunchTemplateName :: Lens' EC2EC2FleetFleetLaunchTemplateSpecificationRequest (Maybe (Val Text))
ececffltsrLaunchTemplateName = lens _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateName (\s a -> s { _eC2EC2FleetFleetLaunchTemplateSpecificationRequestLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplatespecificationrequest-version
ececffltsrVersion :: Lens' EC2EC2FleetFleetLaunchTemplateSpecificationRequest (Maybe (Val Text))
ececffltsrVersion = lens _eC2EC2FleetFleetLaunchTemplateSpecificationRequestVersion (\s a -> s { _eC2EC2FleetFleetLaunchTemplateSpecificationRequestVersion = a })
