
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator. See
-- 'ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator' for a more
-- convenient constructor.
data EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator =
  EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorCount :: Maybe (Val Integer)
  , _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator where
  toJSON EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorCount
    , fmap (("Type",) . toJSON) _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType
    ]

-- | Constructor for
-- 'EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator' containing
-- required fields as arguments.
ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  :: EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
ec2LaunchTemplateLaunchTemplateElasticInferenceAccelerator  =
  EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator
  { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorCount = Nothing
  , _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-count
ecltlteiaCount :: Lens' EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator (Maybe (Val Integer))
ecltlteiaCount = lens _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorCount (\s a -> s { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator.html#cfn-ec2-launchtemplate-launchtemplateelasticinferenceaccelerator-type
ecltlteiaType :: Lens' EC2LaunchTemplateLaunchTemplateElasticInferenceAccelerator (Maybe (Val Text))
ecltlteiaType = lens _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType (\s a -> s { _eC2LaunchTemplateLaunchTemplateElasticInferenceAcceleratorType = a })
