{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html

module Stratosphere.ResourceProperties.EC2InstanceCpuOptions where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2InstanceCpuOptions. See
-- 'ec2InstanceCpuOptions' for a more convenient constructor.
data EC2InstanceCpuOptions =
  EC2InstanceCpuOptions
  { _eC2InstanceCpuOptionsCoreCount :: Maybe (Val Integer)
  , _eC2InstanceCpuOptionsThreadsPerCore :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON EC2InstanceCpuOptions where
  toJSON EC2InstanceCpuOptions{..} =
    object $
    catMaybes
    [ fmap (("CoreCount",) . toJSON) _eC2InstanceCpuOptionsCoreCount
    , fmap (("ThreadsPerCore",) . toJSON) _eC2InstanceCpuOptionsThreadsPerCore
    ]

-- | Constructor for 'EC2InstanceCpuOptions' containing required fields as
-- arguments.
ec2InstanceCpuOptions
  :: EC2InstanceCpuOptions
ec2InstanceCpuOptions  =
  EC2InstanceCpuOptions
  { _eC2InstanceCpuOptionsCoreCount = Nothing
  , _eC2InstanceCpuOptionsThreadsPerCore = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-corecount
ecicoCoreCount :: Lens' EC2InstanceCpuOptions (Maybe (Val Integer))
ecicoCoreCount = lens _eC2InstanceCpuOptionsCoreCount (\s a -> s { _eC2InstanceCpuOptionsCoreCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-cpuoptions.html#cfn-ec2-instance-cpuoptions-threadspercore
ecicoThreadsPerCore :: Lens' EC2InstanceCpuOptions (Maybe (Val Integer))
ecicoThreadsPerCore = lens _eC2InstanceCpuOptionsThreadsPerCore (\s a -> s { _eC2InstanceCpuOptionsThreadsPerCore = a })
