{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceRecordColumn
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceRecordFormat

-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceReferenceSchema' for a
-- more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema =
  KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
  { _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordColumns :: [KinesisAnalyticsApplicationReferenceDataSourceRecordColumn]
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordEncoding :: Maybe (Val Text)
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordFormat :: KinesisAnalyticsApplicationReferenceDataSourceRecordFormat
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema{..} =
    object $
    catMaybes
    [ (Just . ("RecordColumns",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordColumns
    , fmap (("RecordEncoding",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordEncoding
    , (Just . ("RecordFormat",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordFormat
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
  :: [KinesisAnalyticsApplicationReferenceDataSourceRecordColumn] -- ^ 'kaardsrsRecordColumns'
  -> KinesisAnalyticsApplicationReferenceDataSourceRecordFormat -- ^ 'kaardsrsRecordFormat'
  -> KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
kinesisAnalyticsApplicationReferenceDataSourceReferenceSchema recordColumnsarg recordFormatarg =
  KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
  { _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordColumns = recordColumnsarg
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordEncoding = Nothing
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordFormat = recordFormatarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordcolumns
kaardsrsRecordColumns :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema [KinesisAnalyticsApplicationReferenceDataSourceRecordColumn]
kaardsrsRecordColumns = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordColumns (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordColumns = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordencoding
kaardsrsRecordEncoding :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema (Maybe (Val Text))
kaardsrsRecordEncoding = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordEncoding (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordEncoding = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referenceschema.html#cfn-kinesisanalytics-applicationreferencedatasource-referenceschema-recordformat
kaardsrsRecordFormat :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema KinesisAnalyticsApplicationReferenceDataSourceRecordFormat
kaardsrsRecordFormat = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordFormat (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceSchemaRecordFormat = a })
