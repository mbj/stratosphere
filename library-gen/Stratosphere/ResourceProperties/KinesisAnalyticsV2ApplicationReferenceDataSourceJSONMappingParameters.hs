{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters.
-- See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters'
-- for a more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters =
  KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParametersRecordRowPath :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordRowPath",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParametersRecordRowPath
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters <$>
      (obj .: "RecordRowPath")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters
  :: Val Text -- ^ 'kavardsjsonmpRecordRowPath'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters
kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters recordRowPatharg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParametersRecordRowPath = recordRowPatharg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-jsonmappingparameters-recordrowpath
kavardsjsonmpRecordRowPath :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParameters (Val Text)
kavardsjsonmpRecordRowPath = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParametersRecordRowPath (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceJSONMappingParametersRecordRowPath = a })
