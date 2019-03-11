{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
import Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource

-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource' for a
-- more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource =
  KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceReferenceSchema :: KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource :: Maybe KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceTableName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("ReferenceSchema",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceReferenceSchema
    , fmap (("S3ReferenceDataSource",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource
    , fmap (("TableName",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceTableName
    ]

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
  :: KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema -- ^ 'kaardsrdsReferenceSchema'
  -> KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource referenceSchemaarg =
  KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceReferenceSchema = referenceSchemaarg
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource = Nothing
  , _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceTableName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-referenceschema
kaardsrdsReferenceSchema :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource KinesisAnalyticsApplicationReferenceDataSourceReferenceSchema
kaardsrdsReferenceSchema = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceReferenceSchema (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceReferenceSchema = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-s3referencedatasource
kaardsrdsS3ReferenceDataSource :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource (Maybe KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource)
kaardsrdsS3ReferenceDataSource = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceS3ReferenceDataSource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-referencedatasource-tablename
kaardsrdsTableName :: Lens' KinesisAnalyticsApplicationReferenceDataSourceReferenceDataSource (Maybe (Val Text))
kaardsrdsTableName = lens _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceTableName (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceReferenceDataSourceTableName = a })
