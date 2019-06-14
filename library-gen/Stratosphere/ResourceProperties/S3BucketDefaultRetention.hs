{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html

module Stratosphere.ResourceProperties.S3BucketDefaultRetention where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketDefaultRetention. See
-- 's3BucketDefaultRetention' for a more convenient constructor.
data S3BucketDefaultRetention =
  S3BucketDefaultRetention
  { _s3BucketDefaultRetentionDays :: Maybe (Val Integer)
  , _s3BucketDefaultRetentionMode :: Maybe (Val Text)
  , _s3BucketDefaultRetentionYears :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON S3BucketDefaultRetention where
  toJSON S3BucketDefaultRetention{..} =
    object $
    catMaybes
    [ fmap (("Days",) . toJSON) _s3BucketDefaultRetentionDays
    , fmap (("Mode",) . toJSON) _s3BucketDefaultRetentionMode
    , fmap (("Years",) . toJSON) _s3BucketDefaultRetentionYears
    ]

-- | Constructor for 'S3BucketDefaultRetention' containing required fields as
-- arguments.
s3BucketDefaultRetention
  :: S3BucketDefaultRetention
s3BucketDefaultRetention  =
  S3BucketDefaultRetention
  { _s3BucketDefaultRetentionDays = Nothing
  , _s3BucketDefaultRetentionMode = Nothing
  , _s3BucketDefaultRetentionYears = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-days
sbdrDays :: Lens' S3BucketDefaultRetention (Maybe (Val Integer))
sbdrDays = lens _s3BucketDefaultRetentionDays (\s a -> s { _s3BucketDefaultRetentionDays = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-mode
sbdrMode :: Lens' S3BucketDefaultRetention (Maybe (Val Text))
sbdrMode = lens _s3BucketDefaultRetentionMode (\s a -> s { _s3BucketDefaultRetentionMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-defaultretention.html#cfn-s3-bucket-defaultretention-years
sbdrYears :: Lens' S3BucketDefaultRetention (Maybe (Val Integer))
sbdrYears = lens _s3BucketDefaultRetentionYears (\s a -> s { _s3BucketDefaultRetentionYears = a })
