{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html

module Stratosphere.ResourceProperties.EMRClusterConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EMRClusterConfiguration. See
-- | 'emrClusterConfiguration' for a more convenient constructor.
data EMRClusterConfiguration =
  EMRClusterConfiguration
  { _eMRClusterConfigurationClassification :: Maybe (Val Text)
  , _eMRClusterConfigurationConfigurationProperties :: Maybe Object
  , _eMRClusterConfigurationConfigurations :: Maybe [EMRClusterConfiguration]
  } deriving (Show, Eq, Generic)

instance ToJSON EMRClusterConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON EMRClusterConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'EMRClusterConfiguration' containing required fields as
-- | arguments.
emrClusterConfiguration
  :: EMRClusterConfiguration
emrClusterConfiguration  =
  EMRClusterConfiguration
  { _eMRClusterConfigurationClassification = Nothing
  , _eMRClusterConfigurationConfigurationProperties = Nothing
  , _eMRClusterConfigurationConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-classification
emrccClassification :: Lens' EMRClusterConfiguration (Maybe (Val Text))
emrccClassification = lens _eMRClusterConfigurationClassification (\s a -> s { _eMRClusterConfigurationClassification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-configurationproperties
emrccConfigurationProperties :: Lens' EMRClusterConfiguration (Maybe Object)
emrccConfigurationProperties = lens _eMRClusterConfigurationConfigurationProperties (\s a -> s { _eMRClusterConfigurationConfigurationProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html#cfn-emr-cluster-configuration-configurations
emrccConfigurations :: Lens' EMRClusterConfiguration (Maybe [EMRClusterConfiguration])
emrccConfigurations = lens _eMRClusterConfigurationConfigurations (\s a -> s { _eMRClusterConfigurationConfigurations = a })
