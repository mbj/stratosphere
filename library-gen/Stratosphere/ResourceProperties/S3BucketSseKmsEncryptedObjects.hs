{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html

module Stratosphere.ResourceProperties.S3BucketSseKmsEncryptedObjects where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketSseKmsEncryptedObjects. See
-- 's3BucketSseKmsEncryptedObjects' for a more convenient constructor.
data S3BucketSseKmsEncryptedObjects =
  S3BucketSseKmsEncryptedObjects
  { _s3BucketSseKmsEncryptedObjectsStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketSseKmsEncryptedObjects where
  toJSON S3BucketSseKmsEncryptedObjects{..} =
    object $
    catMaybes
    [ (Just . ("Status",) . toJSON) _s3BucketSseKmsEncryptedObjectsStatus
    ]

-- | Constructor for 'S3BucketSseKmsEncryptedObjects' containing required
-- fields as arguments.
s3BucketSseKmsEncryptedObjects
  :: Val Text -- ^ 'sbskeoStatus'
  -> S3BucketSseKmsEncryptedObjects
s3BucketSseKmsEncryptedObjects statusarg =
  S3BucketSseKmsEncryptedObjects
  { _s3BucketSseKmsEncryptedObjectsStatus = statusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-ssekmsencryptedobjects.html#cfn-s3-bucket-ssekmsencryptedobjects-status
sbskeoStatus :: Lens' S3BucketSseKmsEncryptedObjects (Val Text)
sbskeoStatus = lens _s3BucketSseKmsEncryptedObjectsStatus (\s a -> s { _s3BucketSseKmsEncryptedObjectsStatus = a })
