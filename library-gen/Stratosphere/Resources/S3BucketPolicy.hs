{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html

module Stratosphere.Resources.S3BucketPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for S3BucketPolicy. See 's3BucketPolicy' for a
-- more convenient constructor.
data S3BucketPolicy =
  S3BucketPolicy
  { _s3BucketPolicyBucket :: Val Text
  , _s3BucketPolicyPolicyDocument :: Object
  } deriving (Show, Eq)

instance ToJSON S3BucketPolicy where
  toJSON S3BucketPolicy{..} =
    object $
    catMaybes
    [ (Just . ("Bucket",) . toJSON) _s3BucketPolicyBucket
    , (Just . ("PolicyDocument",) . toJSON) _s3BucketPolicyPolicyDocument
    ]

instance FromJSON S3BucketPolicy where
  parseJSON (Object obj) =
    S3BucketPolicy <$>
      (obj .: "Bucket") <*>
      (obj .: "PolicyDocument")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketPolicy' containing required fields as arguments.
s3BucketPolicy
  :: Val Text -- ^ 'sbpBucket'
  -> Object -- ^ 'sbpPolicyDocument'
  -> S3BucketPolicy
s3BucketPolicy bucketarg policyDocumentarg =
  S3BucketPolicy
  { _s3BucketPolicyBucket = bucketarg
  , _s3BucketPolicyPolicyDocument = policyDocumentarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-bucket
sbpBucket :: Lens' S3BucketPolicy (Val Text)
sbpBucket = lens _s3BucketPolicyBucket (\s a -> s { _s3BucketPolicyBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#aws-properties-s3-policy-policydocument
sbpPolicyDocument :: Lens' S3BucketPolicy Object
sbpPolicyDocument = lens _s3BucketPolicyPolicyDocument (\s a -> s { _s3BucketPolicyPolicyDocument = a })
