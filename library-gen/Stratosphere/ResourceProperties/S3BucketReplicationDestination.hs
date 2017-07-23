{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html

module Stratosphere.ResourceProperties.S3BucketReplicationDestination where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketReplicationDestination. See
-- 's3BucketReplicationDestination' for a more convenient constructor.
data S3BucketReplicationDestination =
  S3BucketReplicationDestination
  { _s3BucketReplicationDestinationBucket :: Val Text
  , _s3BucketReplicationDestinationStorageClass :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationDestination where
  toJSON S3BucketReplicationDestination{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _s3BucketReplicationDestinationBucket
    , fmap (("StorageClass",) . toJSON) _s3BucketReplicationDestinationStorageClass
    ]

instance FromJSON S3BucketReplicationDestination where
  parseJSON (Object obj) =
    S3BucketReplicationDestination <$>
      (obj .: "Bucket") <*>
      (obj .:? "StorageClass")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketReplicationDestination' containing required
-- fields as arguments.
s3BucketReplicationDestination
  :: Val Text -- ^ 'sbrdBucket'
  -> S3BucketReplicationDestination
s3BucketReplicationDestination bucketarg =
  S3BucketReplicationDestination
  { _s3BucketReplicationDestinationBucket = bucketarg
  , _s3BucketReplicationDestinationStorageClass = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-bucket
sbrdBucket :: Lens' S3BucketReplicationDestination (Val Text)
sbrdBucket = lens _s3BucketReplicationDestinationBucket (\s a -> s { _s3BucketReplicationDestinationBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration-rules-destination.html#cfn-s3-bucket-replicationconfiguration-rules-destination-storageclass
sbrdStorageClass :: Lens' S3BucketReplicationDestination (Maybe (Val Text))
sbrdStorageClass = lens _s3BucketReplicationDestinationStorageClass (\s a -> s { _s3BucketReplicationDestinationStorageClass = a })
