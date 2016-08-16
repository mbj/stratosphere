{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes where logs are stored and the prefix that Amazon S3 assigns to
-- all log object keys for an AWS::S3::Bucket resource. These logs track
-- requests to an Amazon S3 bucket. For more information, see PUT Bucket
-- logging in the Amazon Simple Storage Service API Reference.

module Stratosphere.ResourceProperties.S3LoggingConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3LoggingConfiguration. See
-- 's3LoggingConfiguration' for a more convenient constructor.
data S3LoggingConfiguration =
  S3LoggingConfiguration
  { _s3LoggingConfigurationDestinationBucketName :: Maybe (Val Text)
  , _s3LoggingConfigurationLogFilePrefix :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3LoggingConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON S3LoggingConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'S3LoggingConfiguration' containing required fields as
-- arguments.
s3LoggingConfiguration
  :: S3LoggingConfiguration
s3LoggingConfiguration  =
  S3LoggingConfiguration
  { _s3LoggingConfigurationDestinationBucketName = Nothing
  , _s3LoggingConfigurationLogFilePrefix = Nothing
  }

-- | The name of an Amazon S3 bucket where Amazon S3 store server access log
-- files. You can store log files in any bucket that you own. By default, logs
-- are stored in the bucket where the LoggingConfiguration property is
-- defined.
slcDestinationBucketName :: Lens' S3LoggingConfiguration (Maybe (Val Text))
slcDestinationBucketName = lens _s3LoggingConfigurationDestinationBucketName (\s a -> s { _s3LoggingConfigurationDestinationBucketName = a })

-- | A prefix for the all log object keys. If you store log files from
-- multiple Amazon S3 buckets in a single bucket, you can use a prefix to
-- distinguish which log files came from which bucket.
slcLogFilePrefix :: Lens' S3LoggingConfiguration (Maybe (Val Text))
slcLogFilePrefix = lens _s3LoggingConfigurationLogFilePrefix (\s a -> s { _s3LoggingConfigurationLogFilePrefix = a })