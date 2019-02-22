{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters'
-- for a more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters =
  KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter :: Val Text
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumnDelimiter",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter
    , (Just . ("RecordRowDelimiter",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters <$>
      (obj .: "RecordColumnDelimiter") <*>
      (obj .: "RecordRowDelimiter")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
  :: Val Text -- ^ 'kavardscsvmpRecordColumnDelimiter'
  -> Val Text -- ^ 'kavardscsvmpRecordRowDelimiter'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters recordColumnDelimiterarg recordRowDelimiterarg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter = recordColumnDelimiterarg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter = recordRowDelimiterarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordcolumndelimiter
kavardscsvmpRecordColumnDelimiter :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters (Val Text)
kavardscsvmpRecordColumnDelimiter = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordColumnDelimiter = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-csvmappingparameters-recordrowdelimiter
kavardscsvmpRecordRowDelimiter :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParameters (Val Text)
kavardscsvmpRecordRowDelimiter = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceCSVMappingParametersRecordRowDelimiter = a })
