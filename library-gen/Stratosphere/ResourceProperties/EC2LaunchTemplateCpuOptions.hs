{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateCpuOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2LaunchTemplateCpuOptions. See
-- 'ec2LaunchTemplateCpuOptions' for a more convenient constructor.
data EC2LaunchTemplateCpuOptions =
  EC2LaunchTemplateCpuOptions
  { _eC2LaunchTemplateCpuOptionsCoreCount :: Maybe (Val Integer)
  , _eC2LaunchTemplateCpuOptionsThreadsPerCore :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateCpuOptions where
  toJSON EC2LaunchTemplateCpuOptions{..} =
    object $
    catMaybes
    [ fmap (("CoreCount",) . toJSON . fmap Integer') _eC2LaunchTemplateCpuOptionsCoreCount
    , fmap (("ThreadsPerCore",) . toJSON . fmap Integer') _eC2LaunchTemplateCpuOptionsThreadsPerCore
    ]

instance FromJSON EC2LaunchTemplateCpuOptions where
  parseJSON (Object obj) =
    EC2LaunchTemplateCpuOptions <$>
      fmap (fmap (fmap unInteger')) (obj .:? "CoreCount") <*>
      fmap (fmap (fmap unInteger')) (obj .:? "ThreadsPerCore")
  parseJSON _ = mempty

-- | Constructor for 'EC2LaunchTemplateCpuOptions' containing required fields
-- as arguments.
ec2LaunchTemplateCpuOptions
  :: EC2LaunchTemplateCpuOptions
ec2LaunchTemplateCpuOptions  =
  EC2LaunchTemplateCpuOptions
  { _eC2LaunchTemplateCpuOptionsCoreCount = Nothing
  , _eC2LaunchTemplateCpuOptionsThreadsPerCore = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-corecount
ecltcoCoreCount :: Lens' EC2LaunchTemplateCpuOptions (Maybe (Val Integer))
ecltcoCoreCount = lens _eC2LaunchTemplateCpuOptionsCoreCount (\s a -> s { _eC2LaunchTemplateCpuOptionsCoreCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-launchtemplatedata-cpuoptions.html#cfn-ec2-launchtemplate-launchtemplatedata-cpuoptions-threadspercore
ecltcoThreadsPerCore :: Lens' EC2LaunchTemplateCpuOptions (Maybe (Val Integer))
ecltcoThreadsPerCore = lens _eC2LaunchTemplateCpuOptionsThreadsPerCore (\s a -> s { _eC2LaunchTemplateCpuOptionsThreadsPerCore = a })
