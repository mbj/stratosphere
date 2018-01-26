{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html

module Stratosphere.ResourceProperties.S3BucketBucketEncryption where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketServerSideEncryptionRule

-- | Full data type definition for S3BucketBucketEncryption. See
-- 's3BucketBucketEncryption' for a more convenient constructor.
data S3BucketBucketEncryption =
  S3BucketBucketEncryption
  { _s3BucketBucketEncryptionServerSideEncryptionConfiguration :: [S3BucketServerSideEncryptionRule]
  } deriving (Show, Eq)

instance ToJSON S3BucketBucketEncryption where
  toJSON S3BucketBucketEncryption{..} =
    object $
    catMaybes
    [ (Just . ("ServerSideEncryptionConfiguration",) . toJSON) _s3BucketBucketEncryptionServerSideEncryptionConfiguration
    ]

instance FromJSON S3BucketBucketEncryption where
  parseJSON (Object obj) =
    S3BucketBucketEncryption <$>
      (obj .: "ServerSideEncryptionConfiguration")
  parseJSON _ = mempty

-- | Constructor for 'S3BucketBucketEncryption' containing required fields as
-- arguments.
s3BucketBucketEncryption
  :: [S3BucketServerSideEncryptionRule] -- ^ 'sbbeServerSideEncryptionConfiguration'
  -> S3BucketBucketEncryption
s3BucketBucketEncryption serverSideEncryptionConfigurationarg =
  S3BucketBucketEncryption
  { _s3BucketBucketEncryptionServerSideEncryptionConfiguration = serverSideEncryptionConfigurationarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-bucketencryption.html#cfn-s3-bucket-bucketencryption-serversideencryptionconfiguration
sbbeServerSideEncryptionConfiguration :: Lens' S3BucketBucketEncryption [S3BucketServerSideEncryptionRule]
sbbeServerSideEncryptionConfiguration = lens _s3BucketBucketEncryptionServerSideEncryptionConfiguration (\s a -> s { _s3BucketBucketEncryptionServerSideEncryptionConfiguration = a })
