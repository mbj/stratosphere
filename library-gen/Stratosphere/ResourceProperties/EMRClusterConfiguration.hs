{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-emr-cluster-configuration.html

module Stratosphere.ResourceProperties.EMRClusterConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRClusterConfiguration. See
-- 'emrClusterConfiguration' for a more convenient constructor.
data EMRClusterConfiguration =
  EMRClusterConfiguration
  { _eMRClusterConfigurationClassification :: Maybe (Val Text)
  , _eMRClusterConfigurationConfigurationProperties :: Maybe Object
  , _eMRClusterConfigurationConfigurations :: Maybe [EMRClusterConfiguration]
  } deriving (Show, Eq)

instance ToJSON EMRClusterConfiguration where
  toJSON EMRClusterConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Classification",) . toJSON) _eMRClusterConfigurationClassification
    , fmap (("ConfigurationProperties",) . toJSON) _eMRClusterConfigurationConfigurationProperties
    , fmap (("Configurations",) . toJSON) _eMRClusterConfigurationConfigurations
    ]

instance FromJSON EMRClusterConfiguration where
  parseJSON (Object obj) =
    EMRClusterConfiguration <$>
      (obj .:? "Classification") <*>
      (obj .:? "ConfigurationProperties") <*>
      (obj .:? "Configurations")
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterConfiguration' containing required fields as
-- arguments.
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
