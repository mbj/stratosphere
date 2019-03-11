{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsBlockDeviceConfig

-- | Full data type definition for EMRInstanceGroupConfigEbsConfiguration. See
-- 'emrInstanceGroupConfigEbsConfiguration' for a more convenient
-- constructor.
data EMRInstanceGroupConfigEbsConfiguration =
  EMRInstanceGroupConfigEbsConfiguration
  { _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRInstanceGroupConfigEbsBlockDeviceConfig]
  , _eMRInstanceGroupConfigEbsConfigurationEbsOptimized :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigEbsConfiguration where
  toJSON EMRInstanceGroupConfigEbsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EbsBlockDeviceConfigs",) . toJSON) _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs
    , fmap (("EbsOptimized",) . toJSON . fmap Bool') _eMRInstanceGroupConfigEbsConfigurationEbsOptimized
    ]

-- | Constructor for 'EMRInstanceGroupConfigEbsConfiguration' containing
-- required fields as arguments.
emrInstanceGroupConfigEbsConfiguration
  :: EMRInstanceGroupConfigEbsConfiguration
emrInstanceGroupConfigEbsConfiguration  =
  EMRInstanceGroupConfigEbsConfiguration
  { _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs = Nothing
  , _eMRInstanceGroupConfigEbsConfigurationEbsOptimized = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfigs
emrigcecEbsBlockDeviceConfigs :: Lens' EMRInstanceGroupConfigEbsConfiguration (Maybe [EMRInstanceGroupConfigEbsBlockDeviceConfig])
emrigcecEbsBlockDeviceConfigs = lens _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs (\s a -> s { _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsoptimized
emrigcecEbsOptimized :: Lens' EMRInstanceGroupConfigEbsConfiguration (Maybe (Val Bool))
emrigcecEbsOptimized = lens _eMRInstanceGroupConfigEbsConfigurationEbsOptimized (\s a -> s { _eMRInstanceGroupConfigEbsConfigurationEbsOptimized = a })
