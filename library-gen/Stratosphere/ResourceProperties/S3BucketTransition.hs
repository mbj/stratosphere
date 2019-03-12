{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html

module Stratosphere.ResourceProperties.S3BucketTransition where

import Stratosphere.ResourceImports


-- | Full data type definition for S3BucketTransition. See
-- 's3BucketTransition' for a more convenient constructor.
data S3BucketTransition =
  S3BucketTransition
  { _s3BucketTransitionStorageClass :: Val Text
  , _s3BucketTransitionTransitionDate :: Maybe (Val Text)
  , _s3BucketTransitionTransitionInDays :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON S3BucketTransition where
  toJSON S3BucketTransition{..} =
    object $
    catMaybes
    [ (Just . ("StorageClass",) . toJSON) _s3BucketTransitionStorageClass
    , fmap (("TransitionDate",) . toJSON) _s3BucketTransitionTransitionDate
    , fmap (("TransitionInDays",) . toJSON . fmap Integer') _s3BucketTransitionTransitionInDays
    ]

-- | Constructor for 'S3BucketTransition' containing required fields as
-- arguments.
s3BucketTransition
  :: Val Text -- ^ 'sbtStorageClass'
  -> S3BucketTransition
s3BucketTransition storageClassarg =
  S3BucketTransition
  { _s3BucketTransitionStorageClass = storageClassarg
  , _s3BucketTransitionTransitionDate = Nothing
  , _s3BucketTransitionTransitionInDays = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-storageclass
sbtStorageClass :: Lens' S3BucketTransition (Val Text)
sbtStorageClass = lens _s3BucketTransitionStorageClass (\s a -> s { _s3BucketTransitionStorageClass = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitiondate
sbtTransitionDate :: Lens' S3BucketTransition (Maybe (Val Text))
sbtTransitionDate = lens _s3BucketTransitionTransitionDate (\s a -> s { _s3BucketTransitionTransitionDate = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig-rule-transition.html#cfn-s3-bucket-lifecycleconfig-rule-transition-transitionindays
sbtTransitionInDays :: Lens' S3BucketTransition (Maybe (Val Integer))
sbtTransitionInDays = lens _s3BucketTransitionTransitionInDays (\s a -> s { _s3BucketTransitionTransitionInDays = a })
