{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html

module Stratosphere.Resources.EC2LaunchTemplate where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateLaunchTemplateData

-- | Full data type definition for EC2LaunchTemplate. See 'ec2LaunchTemplate'
-- for a more convenient constructor.
data EC2LaunchTemplate =
  EC2LaunchTemplate
  { _eC2LaunchTemplateLaunchTemplateData :: Maybe EC2LaunchTemplateLaunchTemplateData
  , _eC2LaunchTemplateLaunchTemplateName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToResourceProperties EC2LaunchTemplate where
  toResourceProperties EC2LaunchTemplate{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::LaunchTemplate"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("LaunchTemplateData",) . toJSON) _eC2LaunchTemplateLaunchTemplateData
        , fmap (("LaunchTemplateName",) . toJSON) _eC2LaunchTemplateLaunchTemplateName
        ]
    }

-- | Constructor for 'EC2LaunchTemplate' containing required fields as
-- arguments.
ec2LaunchTemplate
  :: EC2LaunchTemplate
ec2LaunchTemplate  =
  EC2LaunchTemplate
  { _eC2LaunchTemplateLaunchTemplateData = Nothing
  , _eC2LaunchTemplateLaunchTemplateName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#cfn-ec2-launchtemplate-launchtemplatedata
ecltLaunchTemplateData :: Lens' EC2LaunchTemplate (Maybe EC2LaunchTemplateLaunchTemplateData)
ecltLaunchTemplateData = lens _eC2LaunchTemplateLaunchTemplateData (\s a -> s { _eC2LaunchTemplateLaunchTemplateData = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-launchtemplate.html#cfn-ec2-launchtemplate-launchtemplatename
ecltLaunchTemplateName :: Lens' EC2LaunchTemplate (Maybe (Val Text))
ecltLaunchTemplateName = lens _eC2LaunchTemplateLaunchTemplateName (\s a -> s { _eC2LaunchTemplateLaunchTemplateName = a })
