{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-ebsconfiguration.html

module Stratosphere.ResourceProperties.EMRClusterEbsConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterEbsBlockDeviceConfig

-- | Full data type definition for EMRClusterEbsConfiguration. See
-- | 'emrClusterEbsConfiguration' for a more convenient constructor.
data EMRClusterEbsConfiguration =
  EMRClusterEbsConfiguration
  { _eMRClusterEbsConfigurationEbsBlockDeviceConfigs :: Maybe [EMRClusterEbsBlockDeviceConfig]
  , _eMRClusterEbsConfigurationEbsOptimized :: Maybe (Val Bool')
  } deriving (Show, Generic)

instance ToJSON EMRClusterEbsConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON EMRClusterEbsConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'EMRClusterEbsConfiguration' containing required fields
-- | as arguments.
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
