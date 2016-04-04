{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AccessLoggingPolicy property describes where and how access logs are
-- stored for the AWS::ElasticLoadBalancing::LoadBalancer resource.

module Stratosphere.ResourceProperties.AccessLoggingPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data AccessLoggingPolicy =
  AccessLoggingPolicy
  { _accessLoggingPolicyEmitInterval :: Maybe (Val Integer')
  , _accessLoggingPolicyEnabled :: Val Bool'
  , _accessLoggingPolicyS3BucketName :: Val Text
  , _accessLoggingPolicyS3BucketPrefix :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON AccessLoggingPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON AccessLoggingPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

accessLoggingPolicy
  :: Val Bool' -- ^ Enabled
  -> Val Text -- ^ S3BucketName
  -> AccessLoggingPolicy
accessLoggingPolicy enabledarg s3BucketNamearg =
  AccessLoggingPolicy
  { _accessLoggingPolicyEmitInterval = Nothing
  , _accessLoggingPolicyEnabled = enabledarg
  , _accessLoggingPolicyS3BucketName = s3BucketNamearg
  , _accessLoggingPolicyS3BucketPrefix = Nothing
  }

-- | The interval for publishing access logs in minutes. You can specify an
-- interval of either 5 minutes or 60 minutes.
alpEmitInterval :: Lens' AccessLoggingPolicy (Maybe (Val Integer'))
alpEmitInterval = lens _accessLoggingPolicyEmitInterval (\s a -> s { _accessLoggingPolicyEmitInterval = a })

-- | Whether logging is enabled for the load balancer.
alpEnabled :: Lens' AccessLoggingPolicy (Val Bool')
alpEnabled = lens _accessLoggingPolicyEnabled (\s a -> s { _accessLoggingPolicyEnabled = a })

-- | The name of an Amazon S3 bucket where access log files are stored.
alpS3BucketName :: Lens' AccessLoggingPolicy (Val Text)
alpS3BucketName = lens _accessLoggingPolicyS3BucketName (\s a -> s { _accessLoggingPolicyS3BucketName = a })

-- | A prefix for the all log object keys, such as my-load-balancer-logs/prod.
-- If you store log files from multiple sources in a single bucket, you can
-- use a prefix to distinguish each log file and its source.
alpS3BucketPrefix :: Lens' AccessLoggingPolicy (Maybe (Val Text))
alpS3BucketPrefix = lens _accessLoggingPolicyS3BucketPrefix (\s a -> s { _accessLoggingPolicyS3BucketPrefix = a })