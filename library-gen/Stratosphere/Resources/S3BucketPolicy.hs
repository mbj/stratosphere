{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html

module Stratosphere.Resources.S3BucketPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketPolicy. See 's3BucketPolicy' for a
-- | more convenient constructor.
data S3BucketPolicy =
  S3BucketPolicy
  { _s3BucketPolicyBucket :: Val Text
  , _s3BucketPolicyPolicyDocument :: Object
  } deriving (Show, Generic)

instance ToJSON S3BucketPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

instance FromJSON S3BucketPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 15, omitNothingFields = True }

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

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#cfn-s3-bucketpolicy-bucket
sbpBucket :: Lens' S3BucketPolicy (Val Text)
sbpBucket = lens _s3BucketPolicyBucket (\s a -> s { _s3BucketPolicyBucket = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-policy.html#cfn-s3-bucketpolicy-policydocument
sbpPolicyDocument :: Lens' S3BucketPolicy Object
sbpPolicyDocument = lens _s3BucketPolicyPolicyDocument (\s a -> s { _s3BucketPolicyPolicyDocument = a })
