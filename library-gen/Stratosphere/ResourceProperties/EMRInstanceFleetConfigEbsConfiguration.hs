{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigEbsConfiguration where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EMRInstanceFleetConfigEbsBlockDeviceConfig

-- | Full data type definition for EMRInstanceFleetConfigEbsConfiguration. See
-- 'emrInstanceFleetConfigEbsConfiguration' for a more convenient
-- constructor.
data EMRInstanceFleetConfigEbsConfiguration =
  EMRInstanceFleetConfigEbsConfiguration
  { _eMRInstanceFleetConfigEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRInstanceFleetConfigEbsBlockDeviceConfig]
  , _eMRInstanceFleetConfigEbsConfigurationEbsOptimized :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigEbsConfiguration where
  toJSON EMRInstanceFleetConfigEbsConfiguration{..} =
    object $
    catMaybes
    [ fmap (("EbsBlockDeviceConfigs",) . toJSON) _eMRInstanceFleetConfigEbsConfigurationEbsBlockDeviceConfigs
    , fmap (("EbsOptimized",) . toJSON . fmap Bool') _eMRInstanceFleetConfigEbsConfigurationEbsOptimized
    ]

instance FromJSON EMRInstanceFleetConfigEbsConfiguration where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigEbsConfiguration <$>
      (obj .:? "EbsBlockDeviceConfigs") <*>
      fmap (fmap (fmap unBool')) (obj .:? "EbsOptimized")
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceFleetConfigEbsConfiguration' containing
-- required fields as arguments.
emrInstanceFleetConfigEbsConfiguration
  :: EMRInstanceFleetConfigEbsConfiguration
emrInstanceFleetConfigEbsConfiguration  =
  EMRInstanceFleetConfigEbsConfiguration
  { _eMRInstanceFleetConfigEbsConfigurationEbsBlockDeviceConfigs = Nothing
  , _eMRInstanceFleetConfigEbsConfigurationEbsOptimized = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsconfiguration.html#cfn-elasticmapreduce-instancefleetconfig-ebsconfiguration-ebsblockdeviceconfigs
emrifcecEbsBlockDeviceConfigs :: Lens' EMRInstanceFleetConfigEbsConfiguration (Maybe [EMRInstanceFleetConfigEbsBlockDeviceConfig])
emrifcecEbsBlockDeviceConfigs = lens _eMRInstanceFleetConfigEbsConfigurationEbsBlockDeviceConfigs (\s a -> s { _eMRInstanceFleetConfigEbsConfigurationEbsBlockDeviceConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ebsconfiguration.html#cfn-elasticmapreduce-instancefleetconfig-ebsconfiguration-ebsoptimized
emrifcecEbsOptimized :: Lens' EMRInstanceFleetConfigEbsConfiguration (Maybe (Val Bool))
emrifcecEbsOptimized = lens _eMRInstanceFleetConfigEbsConfigurationEbsOptimized (\s a -> s { _eMRInstanceFleetConfigEbsConfigurationEbsOptimized = a })
