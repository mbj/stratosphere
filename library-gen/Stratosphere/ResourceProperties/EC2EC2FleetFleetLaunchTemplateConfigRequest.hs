{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html

module Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateConfigRequest where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateSpecificationRequest
import Stratosphere.ResourceProperties.EC2EC2FleetFleetLaunchTemplateOverridesRequest

-- | Full data type definition for
-- EC2EC2FleetFleetLaunchTemplateConfigRequest. See
-- 'ec2EC2FleetFleetLaunchTemplateConfigRequest' for a more convenient
-- constructor.
data EC2EC2FleetFleetLaunchTemplateConfigRequest =
  EC2EC2FleetFleetLaunchTemplateConfigRequest
  { _eC2EC2FleetFleetLaunchTemplateConfigRequestLaunchTemplateSpecification :: Maybe EC2EC2FleetFleetLaunchTemplateSpecificationRequest
  , _eC2EC2FleetFleetLaunchTemplateConfigRequestOverrides :: Maybe [EC2EC2FleetFleetLaunchTemplateOverridesRequest]
  } deriving (Show, Eq)

instance ToJSON EC2EC2FleetFleetLaunchTemplateConfigRequest where
  toJSON EC2EC2FleetFleetLaunchTemplateConfigRequest{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateSpecification",) . toJSON) _eC2EC2FleetFleetLaunchTemplateConfigRequestLaunchTemplateSpecification
    , fmap (("Overrides",) . toJSON) _eC2EC2FleetFleetLaunchTemplateConfigRequestOverrides
    ]

instance FromJSON EC2EC2FleetFleetLaunchTemplateConfigRequest where
  parseJSON (Object obj) =
    EC2EC2FleetFleetLaunchTemplateConfigRequest <$>
      (obj .:? "LaunchTemplateSpecification") <*>
      (obj .:? "Overrides")
  parseJSON _ = mempty

-- | Constructor for 'EC2EC2FleetFleetLaunchTemplateConfigRequest' containing
-- required fields as arguments.
ec2EC2FleetFleetLaunchTemplateConfigRequest
  :: EC2EC2FleetFleetLaunchTemplateConfigRequest
ec2EC2FleetFleetLaunchTemplateConfigRequest  =
  EC2EC2FleetFleetLaunchTemplateConfigRequest
  { _eC2EC2FleetFleetLaunchTemplateConfigRequestLaunchTemplateSpecification = Nothing
  , _eC2EC2FleetFleetLaunchTemplateConfigRequestOverrides = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-launchtemplatespecification
ececffltcrLaunchTemplateSpecification :: Lens' EC2EC2FleetFleetLaunchTemplateConfigRequest (Maybe EC2EC2FleetFleetLaunchTemplateSpecificationRequest)
ececffltcrLaunchTemplateSpecification = lens _eC2EC2FleetFleetLaunchTemplateConfigRequestLaunchTemplateSpecification (\s a -> s { _eC2EC2FleetFleetLaunchTemplateConfigRequestLaunchTemplateSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-fleetlaunchtemplateconfigrequest.html#cfn-ec2-ec2fleet-fleetlaunchtemplateconfigrequest-overrides
ececffltcrOverrides :: Lens' EC2EC2FleetFleetLaunchTemplateConfigRequest (Maybe [EC2EC2FleetFleetLaunchTemplateOverridesRequest])
ececffltcrOverrides = lens _eC2EC2FleetFleetLaunchTemplateConfigRequestOverrides (\s a -> s { _eC2EC2FleetFleetLaunchTemplateConfigRequestOverrides = a })
