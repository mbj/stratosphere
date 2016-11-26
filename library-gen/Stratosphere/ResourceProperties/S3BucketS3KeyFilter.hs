{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html

module Stratosphere.ResourceProperties.S3BucketS3KeyFilter where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketFilterRule

-- | Full data type definition for S3BucketS3KeyFilter. See
-- | 's3BucketS3KeyFilter' for a more convenient constructor.
data S3BucketS3KeyFilter =
  S3BucketS3KeyFilter
  { _s3BucketS3KeyFilterRules :: [S3BucketFilterRule]
  } deriving (Show, Generic)

instance ToJSON S3BucketS3KeyFilter where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON S3BucketS3KeyFilter where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'S3BucketS3KeyFilter' containing required fields as
-- | arguments.
s3BucketS3KeyFilter
  :: [S3BucketFilterRule] -- ^ 'sbskfRules'
  -> S3BucketS3KeyFilter
s3BucketS3KeyFilter rulesarg =
  S3BucketS3KeyFilter
  { _s3BucketS3KeyFilterRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules
sbskfRules :: Lens' S3BucketS3KeyFilter [S3BucketFilterRule]
sbskfRules = lens _s3BucketS3KeyFilterRules (\s a -> s { _s3BucketS3KeyFilterRules = a })
