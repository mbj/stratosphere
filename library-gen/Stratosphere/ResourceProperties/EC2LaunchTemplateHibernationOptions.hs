{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateHibernationOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateHibernationOptions. See
-- 'ec2LaunchTemplateHibernationOptions' for a more convenient constructor.
data EC2LaunchTemplateHibernationOptions =
  EC2LaunchTemplateHibernationOptions
  { _eC2LaunchTemplateHibernationOptionsConfigured :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateHibernationOptions where
  toJSON EC2LaunchTemplateHibernationOptions{..} =
    object $
    catMaybes
    [ fmap (("Configured",) . toJSON . fmap Bool') _eC2LaunchTemplateHibernationOptionsConfigured
    ]

instance FromJSON EC2LaunchTemplateHibernationOptions where
  parseJSON (Object obj) =
    EC2LaunchTemplateHibernationOptions <$>
      fmap (fmap (fmap unBool')) (obj .:? "Configured")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateHibernationOptions' containing required
-- fields as arguments.
ec2LaunchTemplateHibernationOptions
  :: EC2LaunchTemplateHibernationOptions
ec2LaunchTemplateHibernationOptions  =
  EC2LaunchTemplateHibernationOptions
  { _eC2LaunchTemplateHibernationOptionsConfigured = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-hibernationoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-hibernationoptions-configured
eclthoConfigured :: Lens' EC2LaunchTemplateHibernationOptions (Maybe (Val Bool))
eclthoConfigured = lens _eC2LaunchTemplateHibernationOptionsConfigured (\s a -> s { _eC2LaunchTemplateHibernationOptionsConfigured = a })
