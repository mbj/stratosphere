{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html

module Stratosphere.ResourceProperties.KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource.
-- See
-- 'kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource'
-- for a more convenient constructor.
data KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource =
  KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN :: Val Text
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceFileKey :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource where
  toJSON KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("BucketARN",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN
    , (Just . ("FileKey",) . toJSON) _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceFileKey
    ]

instance FromJSON KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource where
  parseJSON (Object obj) =
    KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource <$>
      (obj .: "BucketARN") <*>
      (obj .: "FileKey")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource
  :: Val Text -- ^ 'kavardssrdsBucketARN'
  -> Val Text -- ^ 'kavardssrdsFileKey'
  -> KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource
kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource bucketARNarg fileKeyarg =
  KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource
  { _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN = bucketARNarg
  , _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceFileKey = fileKeyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-bucketarn
kavardssrdsBucketARN :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource (Val Text)
kavardssrdsBucketARN = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalyticsv2-applicationreferencedatasource-s3referencedatasource-filekey
kavardssrdsFileKey :: Lens' KinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSource (Val Text)
kavardssrdsFileKey = lens _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceFileKey (\s a -> s { _kinesisAnalyticsV2ApplicationReferenceDataSourceS3ReferenceDataSourceFileKey = a })
