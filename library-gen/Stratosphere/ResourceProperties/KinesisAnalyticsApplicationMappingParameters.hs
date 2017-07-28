{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationMappingParameters where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationCSVMappingParameters
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationJSONMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsApplicationMappingParameters. See
-- 'kinesisAnalyticsApplicationMappingParameters' for a more convenient
-- constructor.
data KinesisAnalyticsApplicationMappingParameters =
  KinesisAnalyticsApplicationMappingParameters
  { _kinesisAnalyticsApplicationMappingParametersCSVMappingParameters :: Maybe KinesisAnalyticsApplicationCSVMappingParameters
  , _kinesisAnalyticsApplicationMappingParametersJSONMappingParameters :: Maybe KinesisAnalyticsApplicationJSONMappingParameters
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationMappingParameters where
  toJSON KinesisAnalyticsApplicationMappingParameters{..} =
    object $
    catMaybes
    [ fmap (("CSVMappingParameters",) . toJSON) _kinesisAnalyticsApplicationMappingParametersCSVMappingParameters
    , fmap (("JSONMappingParameters",) . toJSON) _kinesisAnalyticsApplicationMappingParametersJSONMappingParameters
    ]

instance FromJSON KinesisAnalyticsApplicationMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationMappingParameters <$>
      (obj .:? "CSVMappingParameters") <*>
      (obj .:? "JSONMappingParameters")
  parseJSON _ = mempty

-- | Constructor for 'KinesisAnalyticsApplicationMappingParameters' containing
-- required fields as arguments.
kinesisAnalyticsApplicationMappingParameters
  :: KinesisAnalyticsApplicationMappingParameters
kinesisAnalyticsApplicationMappingParameters  =
  KinesisAnalyticsApplicationMappingParameters
  { _kinesisAnalyticsApplicationMappingParametersCSVMappingParameters = Nothing
  , _kinesisAnalyticsApplicationMappingParametersJSONMappingParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-csvmappingparameters
kaampCSVMappingParameters :: Lens' KinesisAnalyticsApplicationMappingParameters (Maybe KinesisAnalyticsApplicationCSVMappingParameters)
kaampCSVMappingParameters = lens _kinesisAnalyticsApplicationMappingParametersCSVMappingParameters (\s a -> s { _kinesisAnalyticsApplicationMappingParametersCSVMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-application-mappingparameters.html#cfn-kinesisanalytics-application-mappingparameters-jsonmappingparameters
kaampJSONMappingParameters :: Lens' KinesisAnalyticsApplicationMappingParameters (Maybe KinesisAnalyticsApplicationJSONMappingParameters)
kaampJSONMappingParameters = lens _kinesisAnalyticsApplicationMappingParametersJSONMappingParameters (\s a -> s { _kinesisAnalyticsApplicationMappingParametersJSONMappingParameters = a })
