{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-configuration.html

module Stratosphere.ResourceProperties.EMRInstanceFleetConfigConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EMRInstanceFleetConfigConfiguration. See
-- 'emrInstanceFleetConfigConfiguration' for a more convenient constructor.
data EMRInstanceFleetConfigConfiguration =
  EMRInstanceFleetConfigConfiguration
  { _eMRInstanceFleetConfigConfigurationClassification :: Maybe (Val Text)
  , _eMRInstanceFleetConfigConfigurationConfigurationProperties :: Maybe Object
  , _eMRInstanceFleetConfigConfigurationConfigurations :: Maybe [EMRInstanceFleetConfigConfiguration]
  } deriving (Show, Eq)

instance ToJSON EMRInstanceFleetConfigConfiguration where
  toJSON EMRInstanceFleetConfigConfiguration{..} =
    object $
    catMaybes
    [ fmap (("Classification",) . toJSON) _eMRInstanceFleetConfigConfigurationClassification
    , fmap (("ConfigurationProperties",) . toJSON) _eMRInstanceFleetConfigConfigurationConfigurationProperties
    , fmap (("Configurations",) . toJSON) _eMRInstanceFleetConfigConfigurationConfigurations
    ]

instance FromJSON EMRInstanceFleetConfigConfiguration where
  parseJSON (Object obj) =
    EMRInstanceFleetConfigConfiguration <$>
      (obj .:? "Classification") <*>
      (obj .:? "ConfigurationProperties") <*>
      (obj .:? "Configurations")
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceFleetConfigConfiguration' containing required
-- fields as arguments.
emrInstanceFleetConfigConfiguration
  :: EMRInstanceFleetConfigConfiguration
emrInstanceFleetConfigConfiguration  =
  EMRInstanceFleetConfigConfiguration
  { _eMRInstanceFleetConfigConfigurationClassification = Nothing
  , _eMRInstanceFleetConfigConfigurationConfigurationProperties = Nothing
  , _eMRInstanceFleetConfigConfigurationConfigurations = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-configuration.html#cfn-elasticmapreduce-instancefleetconfig-configuration-classification
emrifccClassification :: Lens' EMRInstanceFleetConfigConfiguration (Maybe (Val Text))
emrifccClassification = lens _eMRInstanceFleetConfigConfigurationClassification (\s a -> s { _eMRInstanceFleetConfigConfigurationClassification = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-configuration.html#cfn-elasticmapreduce-instancefleetconfig-configuration-configurationproperties
emrifccConfigurationProperties :: Lens' EMRInstanceFleetConfigConfiguration (Maybe Object)
emrifccConfigurationProperties = lens _eMRInstanceFleetConfigConfigurationConfigurationProperties (\s a -> s { _eMRInstanceFleetConfigConfigurationConfigurationProperties = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-configuration.html#cfn-elasticmapreduce-instancefleetconfig-configuration-configurations
emrifccConfigurations :: Lens' EMRInstanceFleetConfigConfiguration (Maybe [EMRInstanceFleetConfigConfiguration])
emrifccConfigurations = lens _eMRInstanceFleetConfigConfigurationConfigurations (\s a -> s { _eMRInstanceFleetConfigConfigurationConfigurations = a })
