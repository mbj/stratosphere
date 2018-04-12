{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateElasticGpuSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateElasticGpuSpecification.
-- See 'ec2LaunchTemplateElasticGpuSpecification' for a more convenient
-- constructor.
data EC2LaunchTemplateElasticGpuSpecification =
  EC2LaunchTemplateElasticGpuSpecification
  { _eC2LaunchTemplateElasticGpuSpecificationType :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateElasticGpuSpecification where
  toJSON EC2LaunchTemplateElasticGpuSpecification{..} =
    object $
    catMaybes
    [ fmap (("Type",) . toJSON) _eC2LaunchTemplateElasticGpuSpecificationType
    ]

instance FromJSON EC2LaunchTemplateElasticGpuSpecification where
  parseJSON (Object obj) =
    EC2LaunchTemplateElasticGpuSpecification <$>
      (obj .:? "Type")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateElasticGpuSpecification' containing
-- required fields as arguments.
ec2LaunchTemplateElasticGpuSpecification
  :: EC2LaunchTemplateElasticGpuSpecification
ec2LaunchTemplateElasticGpuSpecification  =
  EC2LaunchTemplateElasticGpuSpecification
  { _eC2LaunchTemplateElasticGpuSpecificationType = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-elasticgpuspecification.html#cfn-ec2-launchtemplate-elasticgpuspecification-type
ecltegsType :: Lens' EC2LaunchTemplateElasticGpuSpecification (Maybe (Val Text))
ecltegsType = lens _eC2LaunchTemplateElasticGpuSpecificationType (\s a -> s { _eC2LaunchTemplateElasticGpuSpecificationType = a })
