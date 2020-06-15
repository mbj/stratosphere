{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html

module Stratosphere.ResourceProperties.S3BucketReplicationTime where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketReplicationTimeValue

-- | Full data type definition for S3BucketReplicationTime. See
-- 's3BucketReplicationTime' for a more convenient constructor.
data S3BucketReplicationTime =
  S3BucketReplicationTime
  { _s3BucketReplicationTimeStatus :: Val Text
  , _s3BucketReplicationTimeTime :: S3BucketReplicationTimeValue
  } deriving (Show, Eq)

instance ToJSON S3BucketReplicationTime where
  toJSON S3BucketReplicationTime{..} =
    object $
    catMaybes
    [ (Just . ("Status",) . toJSON) _s3BucketReplicationTimeStatus
    , (Just . ("Time",) . toJSON) _s3BucketReplicationTimeTime
    ]

-- | Constructor for 'S3BucketReplicationTime' containing required fields as
-- arguments.
s3BucketReplicationTime
  :: Val Text -- ^ 'sbrtStatus'
  -> S3BucketReplicationTimeValue -- ^ 'sbrtTime'
  -> S3BucketReplicationTime
s3BucketReplicationTime statusarg timearg =
  S3BucketReplicationTime
  { _s3BucketReplicationTimeStatus = statusarg
  , _s3BucketReplicationTimeTime = timearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html#cfn-s3-bucket-replicationtime-status
sbrtStatus :: Lens' S3BucketReplicationTime (Val Text)
sbrtStatus = lens _s3BucketReplicationTimeStatus (\s a -> s { _s3BucketReplicationTimeStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationtime.html#cfn-s3-bucket-replicationtime-time
sbrtTime :: Lens' S3BucketReplicationTime S3BucketReplicationTimeValue
sbrtTime = lens _s3BucketReplicationTimeTime (\s a -> s { _s3BucketReplicationTimeTime = a })
