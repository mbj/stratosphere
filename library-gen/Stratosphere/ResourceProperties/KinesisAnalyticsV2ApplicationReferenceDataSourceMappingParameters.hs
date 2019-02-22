{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters' for a
-- more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters =
  KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersCSVMappingParameters :: Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersJSONMappingParameters :: Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters{..} =
    object $
    catMaybes
    [ fmap (("CSVMappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersCSVMappingParameters
    , fmap (("JSONMappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersJSONMappingParameters
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters <$>
      (obj .:? "CSVMappingParameters") <*>
      (obj .:? "JSONMappingParameters")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters
  :: KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters
kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters  =
  KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersCSVMappingParameters = Nothing
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersJSONMappingParameters = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-csvmappingparameters
kavardsmpCSVMappingParameters :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters (Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters)
kavardsmpCSVMappingParameters = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersCSVMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersCSVMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-mappingparameters-jsonmappingparameters
kavardsmpJSONMappingParameters :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters (Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters)
kavardsmpJSONMappingParameters = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersJSONMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceMappingParametersJSONMappingParameters = a })
