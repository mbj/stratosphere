{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource

-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource. See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource' for
-- a more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource =
  KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceReferenceSchema :: KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource :: Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceTableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("ReferenceSchema",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceReferenceSchema
    , fmap (("S3ReferenceDataSource",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource
    , fmap (("TableName",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceTableName
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource <$>
      (obj .: "ReferenceSchema") <*>
      (obj .:? "S3ReferenceDataSource") <*>
      (obj .:? "TableName")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
  :: KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema -- ^ 'kavardsrdsReferenceSchema'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource referenceSchemaarg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceReferenceSchema = referenceSchemaarg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource = Nothing
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceTableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-referenceschema
kavardsrdsReferenceSchema :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceSchema
kavardsrdsReferenceSchema = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceReferenceSchema (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceReferenceSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-s3referencedatasource
kavardsrdsS3ReferenceDataSource :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource (Maybe KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource)
kavardsrdsS3ReferenceDataSource = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-referencedatasource-tablename
kavardsrdsTableName :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSource (Maybe (Val Text))
kavardsrdsTableName = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceTableName (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceReferenceDataSourceTableName = a })
