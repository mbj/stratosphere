{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::S3::BucketPolicy type applies an Amazon S3 bucket policy to an
-- Amazon S3 bucket. AWS::S3::BucketPolicy Snippet: Declaring an Amazon S3
-- Bucket Policy

module Stratosphere.Resources.S3BucketPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketPolicy. See 's3BucketPolicy' for a
-- more convenient constructor.
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

-- | The Amazon S3 bucket that the policy applies to.
sbpBucket :: Lens' S3BucketPolicy (Val Text)
sbpBucket = lens _s3BucketPolicyBucket (\s a -> s { _s3BucketPolicyBucket = a })

-- | A policy document containing permissions to add to the specified bucket.
-- For more information, see Access Policy Language Overview in the Amazon
-- Simple Storage Service Developer Guide.
sbpPolicyDocument :: Lens' S3BucketPolicy Object
sbpPolicyDocument = lens _s3BucketPolicyPolicyDocument (\s a -> s { _s3BucketPolicyPolicyDocument = a })