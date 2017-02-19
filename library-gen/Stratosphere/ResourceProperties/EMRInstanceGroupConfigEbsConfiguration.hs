{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigEbsBlockDeviceConfig

-- | Full data type definition for EMRInstanceGroupConfigEbsConfiguration. See
-- | 'emrInstanceGroupConfigEbsConfiguration' for a more convenient
-- | constructor.
data EMRInstanceGroupConfigEbsConfiguration =
  EMRInstanceGroupConfigEbsConfiguration
  { _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRInstanceGroupConfigEbsBlockDeviceConfig]
  , _eMRInstanceGroupConfigEbsConfigurationEbsOptimized :: Maybe (Val Bool')
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigEbsConfiguration where
  toJSON EMRInstanceGroupConfigEbsConfiguration{..} =
    object $
    catMaybes
    [ ("EbsBlockDeviceConfigs" .=) <$> _eMRInstanceGroupConfigEbsConfigurationEbsBlockDeviceConfigs
    , ("EbsOptimized" .=) <$> _eMRInstanceGroupConfigEbsConfigurationEbsOptimized
    ]

instance FromJSON EMRInstanceGroupConfigEbsConfiguration where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigEbsConfiguration <$>
      obj .:? "EbsBlockDeviceConfigs" <*>
      obj .:? "EbsOptimized"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigEbsConfiguration' containing
-- | required fields as arguments.
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
emrigcecEbsOptimized :: Lens' EMRInstanceGroupConfigEbsConfiguration (Maybe (Val Bool'))
emrigcecEbsOptimized = lens _eMRInstanceGroupConfigEbsConfigurationEbsOptimized (\s a -> s { _eMRInstanceGroupConfigEbsConfigurationEbsOptimized = a })
