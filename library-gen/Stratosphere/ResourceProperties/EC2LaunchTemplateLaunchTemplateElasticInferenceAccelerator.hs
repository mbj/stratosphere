{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator. See
-- 'ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator' for a more
-- convenient constructor.
data EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator =
  EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator where
  toJSON EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator{..} =
    object $
    catMaybes
    [ fmap (("Type",) . toJSON) _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType
    ]

instance FromJSON EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator where
  parseJSON (Object obj) =
    EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator <$>
      (obj .:? "Type")
  parseJSON _ = mempty

-- | Constructor for
-- 'EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator' containing
-- required fields as arguments.
ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  :: EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator  =
  EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-type
ecltlteiaType :: Lens' EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator (Maybe (Val Text))
ecltlteiaType = lens _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType (\s a -> s { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType = a })
