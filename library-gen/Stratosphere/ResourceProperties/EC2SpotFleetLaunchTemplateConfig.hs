{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html

module Stratosphere.ResourceProperties.EC2SpotFleetLaunchTemplateConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetFleetLaunchTemplateSpecification
import Stratosphere.ResourceProperties.EC2SpotFleetLaunchTemplateOverrides

-- | Full data type definition for EC2SpotFleetLaunchTemplateConfig. See
-- 'ec2SpotFleetLaunchTemplateConfig' for a more convenient constructor.
data EC2SpotFleetLaunchTemplateConfig =
  EC2SpotFleetLaunchTemplateConfig
  { _eC2SpotFleetLaunchTemplateConfigLaunchTemplateSpecification :: Maybe EC2SpotFleetFleetLaunchTemplateSpecification
  , _eC2SpotFleetLaunchTemplateConfigOverrides :: Maybe [EC2SpotFleetLaunchTemplateOverrides]
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetLaunchTemplateConfig where
  toJSON EC2SpotFleetLaunchTemplateConfig{..} =
    object $
    catMaybes
    [ fmap (("LaunchTemplateSpecification",) . toJSON) _eC2SpotFleetLaunchTemplateConfigLaunchTemplateSpecification
    , fmap (("Overrides",) . toJSON) _eC2SpotFleetLaunchTemplateConfigOverrides
    ]

-- | Constructor for 'EC2SpotFleetLaunchTemplateConfig' containing required
-- fields as arguments.
ec2SpotFleetLaunchTemplateConfig
  :: EC2SpotFleetLaunchTemplateConfig
ec2SpotFleetLaunchTemplateConfig  =
  EC2SpotFleetLaunchTemplateConfig
  { _eC2SpotFleetLaunchTemplateConfigLaunchTemplateSpecification = Nothing
  , _eC2SpotFleetLaunchTemplateConfigOverrides = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-launchtemplatespecification
ecsfltcLaunchTemplateSpecification :: Lens' EC2SpotFleetLaunchTemplateConfig (Maybe EC2SpotFleetFleetLaunchTemplateSpecification)
ecsfltcLaunchTemplateSpecification = lens _eC2SpotFleetLaunchTemplateConfigLaunchTemplateSpecification (\s a -> s { _eC2SpotFleetLaunchTemplateConfigLaunchTemplateSpecification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-launchtemplateconfig.html#cfn-ec2-spotfleet-launchtemplateconfig-overrides
ecsfltcOverrides :: Lens' EC2SpotFleetLaunchTemplateConfig (Maybe [EC2SpotFleetLaunchTemplateOverrides])
ecsfltcOverrides = lens _eC2SpotFleetLaunchTemplateConfigOverrides (\s a -> s { _eC2SpotFleetLaunchTemplateConfigOverrides = a })
