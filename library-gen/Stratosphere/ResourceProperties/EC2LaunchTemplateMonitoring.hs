{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateMonitoring where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateMonitoring. See
-- 'ec2LaunchTemplateMonitoring' for a more convenient constructor.
data EC2LaunchTemplateMonitoring =
  EC2LaunchTemplateMonitoring
  { _eC2LaunchTemplateMonitoringEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateMonitoring where
  toJSON EC2LaunchTemplateMonitoring{..} =
    object $
    catMaybes
    [ fmap (("Enabled",) . toJSON . fmap Bool') _eC2LaunchTemplateMonitoringEnabled
    ]

instance FromJSON EC2LaunchTemplateMonitoring where
  parseJSON (Object obj) =
    EC2LaunchTemplateMonitoring <$>
      fmap (fmap (fmap unBool')) (obj .:? "Enabled")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateMonitoring' containing required fields
-- as arguments.
ec2LaunchTemplateMonitoring
  :: EC2LaunchTemplateMonitoring
ec2LaunchTemplateMonitoring  =
  EC2LaunchTemplateMonitoring
  { _eC2LaunchTemplateMonitoringEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-monitoring.html#cfn-ec2-launchtemplate-launchtemplatedata-monitoring-enabled
ecltmEnabled :: Lens' EC2LaunchTemplateMonitoring (Maybe (Val Bool))
ecltmEnabled = lens _eC2LaunchTemplateMonitoringEnabled (\s a -> s { _eC2LaunchTemplateMonitoringEnabled = a })
