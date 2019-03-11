{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceMappingParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceMappingParameters. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceMappingParameters' for a
-- more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceMappingParameters =
  KinesisAnalyticsApplicationReferenceDataSourceMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersCSVMappingParameters :: Maybe KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters
  , _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersJSONMappingParameters :: Maybe KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceMappingParameters where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceMappingParameters{..} =
    object $
    catMaybes
    [ fmap (("CSVMappingParameters",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersCSVMappingParameters
    , fmap (("JSONMappingParameters",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersJSONMappingParameters
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceMappingParameters
  :: KinesisAnalyticsApplicationReferenceDataSourceMappingParameters
kinesisAnalyticsApplicationReferenceDataSourceMappingParameters  =
  KinesisAnalyticsApplicationReferenceDataSourceMappingParameters
  { _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersCSVMappingParameters = Nothing
  , _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersJSONMappingParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-mappingparameters-csvmappingparameters
kaardsmpCSVMappingParameters :: Lens' KinesisAnalyticsApplicationReferenceDataSourceMappingParameters (Maybe KinesisAnalyticsApplicationReferenceDataSourceCSVMappingParameters)
kaardsmpCSVMappingParameters = lens _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersCSVMappingParameters (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersCSVMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalytics-applicationreferencedatasource-mappingparameters-jsonmappingparameters
kaardsmpJSONMappingParameters :: Lens' KinesisAnalyticsApplicationReferenceDataSourceMappingParameters (Maybe KinesisAnalyticsApplicationReferenceDataSourceJSONMappingParameters)
kaardsmpJSONMappingParameters = lens _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersJSONMappingParameters (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceMappingParametersJSONMappingParameters = a })
