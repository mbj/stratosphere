{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema' for a
-- more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema =
  KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordColumns :: [KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn]
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordEncoding :: Maybe (Val Text)
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordFormat :: KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumns",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordColumns
    , fmap (("RecordEncoding",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordEncoding
    , (Just . ("RecordFormat",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordFormat
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema <$>
      (obj .: "RecordColumns") <*>
      (obj .:? "RecordEncoding") <*>
      (obj .: "RecordFormat")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
  :: [KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn] -- ^ 'kavardsrsRecordColumns'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat -- ^ 'kavardsrsRecordFormat'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema recordColumnsarg recordFormatarg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordColumns = recordColumnsarg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordEncoding = Nothing
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordFormat = recordFormatarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordcolumns
kavardsrsRecordColumns :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema [KinesisAnalyticsV2ApplicationReferenceDataSourceRecordColumn]
kavardsrsRecordColumns = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordColumns (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordencoding
kavardsrsRecordEncoding :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema (Maybe (Val Text))
kavardsrsRecordEncoding = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordEncoding (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referenceschema-recordformat
kavardsrsRecordFormat :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema KinesisAnalyticsV2ApplicationReferenceDataSourceRecordFormat
kavardsrsRecordFormat = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordFormat (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchemaRecordFormat = a })
