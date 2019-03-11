{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat' for a more
-- convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat =
  KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatMappingParameters :: Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatRecordFormatType :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat{..} =
    object $
    catMaybes
    [ fmap (("MappingParameters",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatMappingParameters
    , (Just . ("RecordFormatType",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatRecordFormatType
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat <$>
      (obj .:? "MappingParameters") <*>
      (obj .: "RecordFormatType")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat' containing
-- required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
  :: Val Text -- ^ 'kavardsrfRecordFormatType'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat recordFormatTypearg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatMappingParameters = Nothing
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatRecordFormatType = recordFormatTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-mappingparameters
kavardsrfMappingParameters :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat (Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceMappingParameters)
kavardsrfMappingParameters = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatMappingParameters (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatMappingParameters = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-recordformat.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-recordformat-recordformattype
kavardsrfRecordFormatType :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat (Val Text)
kavardsrfRecordFormatType = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatRecordFormatType (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormatRecordFormatType = a })
