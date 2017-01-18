{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html

module Stratosphere.ResourceProperties.S3BucketLifecycleConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketRule

-- | Full data type definition for S3BucketLifecycleConfiguration. See
-- | 's3BucketLifecycleConfiguration' for a more convenient constructor.
data S3BucketLifecycleConfiguration =
  S3BucketLifecycleConfiguration
  { _s3BucketLifecycleConfigurationRules :: [S3BucketRule]
  } deriving (Show, Eq, Generic)

instance ToJSON S3BucketLifecycleConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON S3BucketLifecycleConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'S3BucketLifecycleConfiguration' containing required
-- | fields as arguments.
s3BucketLifecycleConfiguration
  :: [S3BucketRule] -- ^ 'sblcRules'
  -> S3BucketLifecycleConfiguration
s3BucketLifecycleConfiguration rulesarg =
  S3BucketLifecycleConfiguration
  { _s3BucketLifecycleConfigurationRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html#cfn-s3-bucket-lifecycleconfig-rules
sblcRules :: Lens' S3BucketLifecycleConfiguration [S3BucketRule]
sblcRules = lens _s3BucketLifecycleConfigurationRules (\s a -> s { _s3BucketLifecycleConfigurationRules = a })
