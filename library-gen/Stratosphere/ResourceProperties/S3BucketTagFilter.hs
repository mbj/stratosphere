{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html

module Stratosphere.ResourceProperties.S3BucketTagFilter where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketTagFilter. See 's3BucketTagFilter'
-- for a more convenient constructor.
data S3BucketTagFilter =
  S3BucketTagFilter
  { _s3BucketTagFilterKey :: Val Text
  , _s3BucketTagFilterValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketTagFilter where
  toJSON S3BucketTagFilter{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _s3BucketTagFilterKey
    , (Just . ("Value",) . toJSON) _s3BucketTagFilterValue
    ]

-- | Constructor for 'S3BucketTagFilter' containing required fields as
-- arguments.
s3BucketTagFilter
  :: Val Text -- ^ 'sbtfKey'
  -> Val Text -- ^ 'sbtfValue'
  -> S3BucketTagFilter
s3BucketTagFilter keyarg valuearg =
  S3BucketTagFilter
  { _s3BucketTagFilterKey = keyarg
  , _s3BucketTagFilterValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-key
sbtfKey :: Lens' S3BucketTagFilter (Val Text)
sbtfKey = lens _s3BucketTagFilterKey (\s a -> s { _s3BucketTagFilterKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-tagfilter.html#cfn-s3-bucket-tagfilter-value
sbtfValue :: Lens' S3BucketTagFilter (Val Text)
sbtfValue = lens _s3BucketTagFilterValue (\s a -> s { _s3BucketTagFilterValue = a })
