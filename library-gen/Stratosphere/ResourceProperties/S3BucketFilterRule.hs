{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html

module Stratosphere.ResourceProperties.S3BucketFilterRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3BucketFilterRule. See
-- | 's3BucketFilterRule' for a more convenient constructor.
data S3BucketFilterRule =
  S3BucketFilterRule
  { _s3BucketFilterRuleName :: Val Text
  , _s3BucketFilterRuleValue :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3BucketFilterRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

instance FromJSON S3BucketFilterRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 19, omitNothingFields = True }

-- | Constructor for 'S3BucketFilterRule' containing required fields as
-- | arguments.
s3BucketFilterRule
  :: Val Text -- ^ 'sbfrName'
  -> Val Text -- ^ 'sbfrValue'
  -> S3BucketFilterRule
s3BucketFilterRule namearg valuearg =
  S3BucketFilterRule
  { _s3BucketFilterRuleName = namearg
  , _s3BucketFilterRuleValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules-name
sbfrName :: Lens' S3BucketFilterRule (Val Text)
sbfrName = lens _s3BucketFilterRuleName (\s a -> s { _s3BucketFilterRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-notificationconfiguration-config-filter-s3key-rules.html#cfn-s3-bucket-notificationconfiguraiton-config-filter-s3key-rules-value
sbfrValue :: Lens' S3BucketFilterRule (Val Text)
sbfrValue = lens _s3BucketFilterRuleValue (\s a -> s { _s3BucketFilterRuleValue = a })
