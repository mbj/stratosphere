{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRClusterEbsConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig

-- | Full data type definition for EMRClusterEbsConfiguration. See
-- 'emrClusterEbsConfiguration' for a more convenient constructor.
data EMRClusterEbsConfiguration =
  EMRClusterEbsConfiguration
  { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRClusterEbsBlockDeviceConfig]
  , _eMRClusterEbsConfigurationEbsOptimized :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON EMRClusterEbsConfiguration where
  toJSON EMRClusterEbsConfiguration{..} =
    object $
    catMaybes
    [ ("EbsBlockDeviceConfigs" .=) <$> _eMRClusterEbsConfigurationEbsBlockDeviceConfigs
    , ("EbsOptimized" .=) <$> _eMRClusterEbsConfigurationEbsOptimized
    ]

instance FromJSON EMRClusterEbsConfiguration where
  parseJSON (Object obj) =
    EMRClusterEbsConfiguration <$>
      obj .:? "EbsBlockDeviceConfigs" <*>
      obj .:? "EbsOptimized"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterEbsConfiguration' containing required fields
-- as arguments.
emrClusterEbsConfiguration
  :: EMRClusterEbsConfiguration
emrClusterEbsConfiguration  =
  EMRClusterEbsConfiguration
  { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs = Nothing
  , _eMRClusterEbsConfigurationEbsOptimized = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsblockdeviceconfigs
emrcecEbsBlockDeviceConfigs :: Lens' EMRClusterEbsConfiguration (Maybe [EMRClusterEbsBlockDeviceConfig])
emrcecEbsBlockDeviceConfigs = lens _eMRClusterEbsConfigurationEbsBlockDeviceConfigs (\s a -> s { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html#cfn-emr-ebsconfiguration-ebsoptimized
emrcecEbsOptimized :: Lens' EMRClusterEbsConfiguration (Maybe (Val Bool'))
emrcecEbsOptimized = lens _eMRClusterEbsConfigurationEbsOptimized (\s a -> s { _eMRClusterEbsConfigurationEbsOptimized = a })
