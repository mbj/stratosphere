{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-lifecycleconfig.html

module Stratosphere.ResourceProperties.S3BucketLifecycleConfiguration where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketRule

-- | Full data type definition for S3BucketLifecycleConfiguration. See
-- | 's3BucketLifecycleConfiguration' for a more convenient constructor.
data S3BucketLifecycleConfiguration =
  S3BucketLifecycleConfiguration
  { _s3BucketLifecycleConfigurationRules :: [S3BucketRule]
  } deriving (Show, Eq)

instance ToJSON S3BucketLifecycleConfiguration where
  toJSON S3BucketLifecycleConfiguration{..} =
    object $
    catMaybes
    [ Just ("Rules" .= _s3BucketLifecycleConfigurationRules)
    ]

instance FromJSON S3BucketLifecycleConfiguration where
  parseJSON (Object obj) =
    S3BucketLifecycleConfiguration <$>
      obj .: "Rules"
  parseJSON _ = mempty

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
