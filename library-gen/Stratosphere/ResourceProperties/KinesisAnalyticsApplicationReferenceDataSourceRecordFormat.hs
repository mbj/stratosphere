{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceRecordFormat where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceRecordFormat. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceRecordFormat' for a more
-- convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceRecordFormat =
  KinesisAnalyticsApplicationReferenceDataSourceRecordFormat
  { _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatMappingParameters :: Maybe KinesisAnalyticsApplicationReferenceDataSourceMappingParameters
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatRecordFormatType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceRecordFormat where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceRecordFormat{..} =
    object $
    catMaybes
    [ fmap (("MappingParameters",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatMappingParameters
    , (Just . ("RecordFormatType",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatRecordFormatType
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceRecordFormat' containing
-- required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceRecordFormat
  :: Val Text -- ^ 'kaardsrfRecordFormatType'
  -> KinesisAnalyticsApplicationReferenceDataSourceRecordFormat
kinesisAnalyticsApplicationReferenceDataSourceRecordFormat recordFormatTypearg =
  KinesisAnalyticsApplicationReferenceDataSourceRecordFormat
  { _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatMappingParameters = Nothing
  , _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatRecordFormatType = recordFormatTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-mappingparameters
kaardsrfMappingParameters :: Lens' KinesisAnalyticsApplicationReferenceDataSourceRecordFormat (Maybe KinesisAnalyticsApplicationReferenceDataSourceMappingParameters)
kaardsrfMappingParameters = lens _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatMappingParameters (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-recordformat.html#cfn-kinesisanalytics-applicationreferencedatasource-recordformat-recordformattype
kaardsrfRecordFormatType :: Lens' KinesisAnalyticsApplicationReferenceDataSourceRecordFormat (Val Text)
kaardsrfRecordFormatType = lens _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatRecordFormatType (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceRecordFormatRecordFormatType = a })
