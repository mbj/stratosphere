{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html

module Stratosphere.ResourceProperties.S3BucketAccelerateConfiguration where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketAccelerateConfiguration. See
-- 's3BucketAccelerateConfiguration' for a more convenient constructor.
data S3BucketAccelerateConfiguration =
  S3BucketAccelerateConfiguration
  { _s3BucketAccelerateConfigurationAccelerationStatus :: Val Text
  } deriving (Show, Eq)

instance ToJSON S3BucketAccelerateConfiguration where
  toJSON S3BucketAccelerateConfiguration{..} =
    object $
    catMaybes
    [ (Just . ("AccelerationStatus",) . toJSON) _s3BucketAccelerateConfigurationAccelerationStatus
    ]

-- | Constructor for 'S3BucketAccelerateConfiguration' containing required
-- fields as arguments.
s3BucketAccelerateConfiguration
  :: Val Text -- ^ 'sbacAccelerationStatus'
  -> S3BucketAccelerateConfiguration
s3BucketAccelerateConfiguration accelerationStatusarg =
  S3BucketAccelerateConfiguration
  { _s3BucketAccelerateConfigurationAccelerationStatus = accelerationStatusarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-accelerateconfiguration.html#cfn-s3-bucket-accelerateconfiguration-accelerationstatus
sbacAccelerationStatus :: Lens' S3BucketAccelerateConfiguration (Val Text)
sbacAccelerationStatus = lens _s3BucketAccelerateConfigurationAccelerationStatus (\s a -> s { _s3BucketAccelerateConfigurationAccelerationStatus = a })
