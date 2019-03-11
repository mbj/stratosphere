{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html

module Stratosphere.ResourceProperties.S3BucketAbortIncompleteMultipartUpload where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketAbortIncompleteMultipartUpload. See
-- 's3BucketAbortIncompleteMultipartUpload' for a more convenient
-- constructor.
data S3BucketAbortIncompleteMultipartUpload =
  S3BucketAbortIncompleteMultipartUpload
  { _s3BucketAbortIncompleteMultipartUploadDaysAfterInitiation :: Val Integer
  } deriving (Show, Eq)

instance ToJSON S3BucketAbortIncompleteMultipartUpload where
  toJSON S3BucketAbortIncompleteMultipartUpload{..} =
    object $
    catMaybes
    [ (Just . ("DaysAfterInitiation",) . toJSON . fmap Integer') _s3BucketAbortIncompleteMultipartUploadDaysAfterInitiation
    ]

-- | Constructor for 'S3BucketAbortIncompleteMultipartUpload' containing
-- required fields as arguments.
s3BucketAbortIncompleteMultipartUpload
  :: Val Integer -- ^ 'sbaimuDaysAfterInitiation'
  -> S3BucketAbortIncompleteMultipartUpload
s3BucketAbortIncompleteMultipartUpload daysAfterInitiationarg =
  S3BucketAbortIncompleteMultipartUpload
  { _s3BucketAbortIncompleteMultipartUploadDaysAfterInitiation = daysAfterInitiationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-abortincompletemultipartupload.html#cfn-s3-bucket-abortincompletemultipartupload-daysafterinitiation
sbaimuDaysAfterInitiation :: Lens' S3BucketAbortIncompleteMultipartUpload (Val Integer)
sbaimuDaysAfterInitiation = lens _s3BucketAbortIncompleteMultipartUploadDaysAfterInitiation (\s a -> s { _s3BucketAbortIncompleteMultipartUploadDaysAfterInitiation = a })
