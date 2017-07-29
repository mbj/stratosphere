{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html

module Stratosphere.ResourceProperties.KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource. See
-- 'kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource' for
-- a more convenient constructor.
data KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource =
  KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN :: Val Text
  , _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceFileKey :: Val Text
  , _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceReferenceRoleARN :: Val Text
  } deriving (Show, Eq)

instance ToJSON KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource where
  toJSON KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource{..} =
    object $
    catMaybes
    [ (Just . ("BucketARN",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN
    , (Just . ("FileKey",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceFileKey
    , (Just . ("ReferenceRoleARN",) . toJSON) _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceReferenceRoleARN
    ]

instance FromJSON KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource where
  parseJSON (Object obj) =
    KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource <$>
      (obj .: "BucketARN") <*>
      (obj .: "FileKey") <*>
      (obj .: "ReferenceRoleARN")
  parseJSON _ = mempty

-- | Constructor for
-- 'KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource'
-- containing required fields as arguments.
kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource
  :: Val Text -- ^ 'kaardssrdsBucketARN'
  -> Val Text -- ^ 'kaardssrdsFileKey'
  -> Val Text -- ^ 'kaardssrdsReferenceRoleARN'
  -> KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource
kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource bucketARNarg fileKeyarg referenceRoleARNarg =
  KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource
  { _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN = bucketARNarg
  , _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceFileKey = fileKeyarg
  , _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceReferenceRoleARN = referenceRoleARNarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-bucketarn
kaardssrdsBucketARN :: Lens' KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource (Val Text)
kaardssrdsBucketARN = lens _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceBucketARN = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-filekey
kaardssrdsFileKey :: Lens' KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource (Val Text)
kaardssrdsFileKey = lens _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceFileKey (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceFileKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisanalytics-applicationreferencedatasource-s3referencedatasource.html#cfn-kinesisanalytics-applicationreferencedatasource-s3referencedatasource-referencerolearn
kaardssrdsReferenceRoleARN :: Lens' KinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSource (Val Text)
kaardssrdsReferenceRoleARN = lens _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceReferenceRoleARN (\s a -> s { _kinesisAnalyticsApplicationReferenceDataSourceS3ReferenceDataSourceReferenceRoleARN = a })
