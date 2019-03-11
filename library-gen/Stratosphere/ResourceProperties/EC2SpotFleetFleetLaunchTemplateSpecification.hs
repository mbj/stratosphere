{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html

module Stratosphere.ResourceProperties.EC2SpotFleetFleetLaunchTemplateSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2SpotFleetFleetLaunchTemplateSpecification. See
-- 'ec2SpotFleetFleetLaunchTemplateSpecification' for a more convenient
-- constructor.
data EC2SpotFleetFleetLaunchTemplateSpecification =
  EC2SpotFleetFleetLaunchTemplateSpecification
  { _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateId :: Maybe (Val Text)
  , _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateName :: Maybe (Val Text)
  , _eC2SpotFleetFleetLaunchTemplateSpecificationVersion :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetFleetLaunchTemplateSpecification where
  toJSON EC2SpotFleetFleetLaunchTemplateSpecification{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateId",) . toJSON) _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateId
    , fmap (("LaunchTemplateName",) . toJSON) _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateName
    , (Just . ("Version",) . toJSON) _eC2SpotFleetFleetLaunchTemplateSpecificationVersion
    ]

-- | Constructor for 'EC2SpotFleetFleetLaunchTemplateSpecification' containing
-- required fields as arguments.
ec2SpotFleetFleetLaunchTemplateSpecification
  :: Val Text -- ^ 'ecsffltsVersion'
  -> EC2SpotFleetFleetLaunchTemplateSpecification
ec2SpotFleetFleetLaunchTemplateSpecification versionarg =
  EC2SpotFleetFleetLaunchTemplateSpecification
  { _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateId = Nothing
  , _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateName = Nothing
  , _eC2SpotFleetFleetLaunchTemplateSpecificationVersion = versionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplateid
ecsffltsLaunchTemplateId :: Lens' EC2SpotFleetFleetLaunchTemplateSpecification (Maybe (Val Text))
ecsffltsLaunchTemplateId = lens _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateId (\s a -> s { _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-launchtemplatename
ecsffltsLaunchTemplateName :: Lens' EC2SpotFleetFleetLaunchTemplateSpecification (Maybe (Val Text))
ecsffltsLaunchTemplateName = lens _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateName (\s a -> s { _eC2SpotFleetFleetLaunchTemplateSpecificationLaunchTemplateName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-fleetlaunchtemplatespecification.html#cfn-ec2-spotfleet-fleetlaunchtemplatespecification-version
ecsffltsVersion :: Lens' EC2SpotFleetFleetLaunchTemplateSpecification (Val Text)
ecsffltsVersion = lens _eC2SpotFleetFleetLaunchTemplateSpecificationVersion (\s a -> s { _eC2SpotFleetFleetLaunchTemplateSpecificationVersion = a })
