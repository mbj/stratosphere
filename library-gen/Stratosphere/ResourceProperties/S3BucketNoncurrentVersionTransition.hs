{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html

module Stratosphere.ResourceProperties.S3BucketNoncurrentVersionTransition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketNoncurrentVersionTransition. See
-- 's3BucketNoncurrentVersionTransition' for a more convenient constructor.
data S3BucketNoncurrentVersionTransition =
  S3BucketNoncurrentVersionTransition
  { _s3BucketNoncurrentVersionTransitionStorageClass :: Val Text
  , _s3BucketNoncurrentVersionTransitionTransitionInDays :: Val Integer'
  } deriving (Show, Eq)

instance ToJSON S3BucketNoncurrentVersionTransition where
  toJSON S3BucketNoncurrentVersionTransition{..} =
    object $
    catMaybes
    [ Just ("StorageClass" .= _s3BucketNoncurrentVersionTransitionStorageClass)
    , Just ("TransitionInDays" .= _s3BucketNoncurrentVersionTransitionTransitionInDays)
    ]

instance FromJSON S3BucketNoncurrentVersionTransition where
  parseJSON (Object obj) =
    S3BucketNoncurrentVersionTransition <$>
      obj .: "StorageClass" <*>
      obj .: "TransitionInDays"
  parseJSON _ = mempty

-- | Constructor for 'S3BucketNoncurrentVersionTransition' containing required
-- fields as arguments.
s3BucketNoncurrentVersionTransition
  :: Val Text -- ^ 'sbnvtStorageClass'
  -> Val Integer' -- ^ 'sbnvtTransitionInDays'
  -> S3BucketNoncurrentVersionTransition
s3BucketNoncurrentVersionTransition storageClassarg transitionInDaysarg =
  S3BucketNoncurrentVersionTransition
  { _s3BucketNoncurrentVersionTransitionStorageClass = storageClassarg
  , _s3BucketNoncurrentVersionTransitionTransitionInDays = transitionInDaysarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-storageclass
sbnvtStorageClass :: Lens' S3BucketNoncurrentVersionTransition (Val Text)
sbnvtStorageClass = lens _s3BucketNoncurrentVersionTransitionStorageClass (\s a -> s { _s3BucketNoncurrentVersionTransitionStorageClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition.html#cfn-s3-bucket-lifecycleconfig-rule-noncurrentversiontransition-transitionindays
sbnvtTransitionInDays :: Lens' S3BucketNoncurrentVersionTransition (Val Integer')
sbnvtTransitionInDays = lens _s3BucketNoncurrentVersionTransitionTransitionInDays (\s a -> s { _s3BucketNoncurrentVersionTransitionTransitionInDays = a })
