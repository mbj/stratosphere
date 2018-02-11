{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html

module Stratosphere.ResourceProperties.S3BucketNotificationFilter where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.S3BucketS3KeyFilter

-- | Full data type definition for S3BucketNotificationFilter. See
-- 's3BucketNotificationFilter' for a more convenient constructor.
data S3BucketNotificationFilter =
  S3BucketNotificationFilter
  { _s3BucketNotificationFilterS3Key :: S3BucketS3KeyFilter
  } deriving (Show, Eq)

instance ToJSON S3BucketNotificationFilter where
  toJSON S3BucketNotificationFilter{..} =
    object $
    catMaybes
    [ (Just . ("S3Key",) . toJSON) _s3BucketNotificationFilterS3Key
    ]

instance FromJSON S3BucketNotificationFilter where
  parseJSON (Object obj) =
    S3BucketNotificationFilter <$>
      (obj .: "S3Key")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketNotificationFilter' containing required fields
-- as arguments.
s3BucketNotificationFilter
  :: S3BucketS3KeyFilter -- ^ 'sbnfS3Key'
  -> S3BucketNotificationFilter
s3BucketNotificationFilter s3Keyarg =
  S3BucketNotificationFilter
  { _s3BucketNotificationFilterS3Key = s3Keyarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key
sbnfS3Key :: Lens' S3BucketNotificationFilter S3BucketS3KeyFilter
sbnfS3Key = lens _s3BucketNotificationFilterS3Key (\s a -> s { _s3BucketNotificationFilterS3Key = a })
