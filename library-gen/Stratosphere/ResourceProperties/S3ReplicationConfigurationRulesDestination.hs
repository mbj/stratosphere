{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Destination is a property of the Amazon S3 ReplicationConfiguration Rules
-- property that specifies which Amazon Simple Storage Service (Amazon S3)
-- bucket to store replicated objects and their storage class.

module Stratosphere.ResourceProperties.S3ReplicationConfigurationRulesDestination where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3ReplicationConfigurationRulesDestination.
-- See 's3ReplicationConfigurationRulesDestination' for a more convenient
-- constructor.
data S3ReplicationConfigurationRulesDestination =
  S3ReplicationConfigurationRulesDestination
  { _s3ReplicationConfigurationRulesDestinationBucket :: Val Text
  , _s3ReplicationConfigurationRulesDestinationStorageClass :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3ReplicationConfigurationRulesDestination where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

instance FromJSON S3ReplicationConfigurationRulesDestination where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 43, omitNothingFields = True }

-- | Constructor for 'S3ReplicationConfigurationRulesDestination' containing
-- required fields as arguments.
s3ReplicationConfigurationRulesDestination
  :: Val Text -- ^ 'srcrdBucket'
  -> S3ReplicationConfigurationRulesDestination
s3ReplicationConfigurationRulesDestination bucketarg =
  S3ReplicationConfigurationRulesDestination
  { _s3ReplicationConfigurationRulesDestinationBucket = bucketarg
  , _s3ReplicationConfigurationRulesDestinationStorageClass = Nothing
  }

-- | The Amazon resource name (ARN) of an S3 bucket where Amazon S3 stores
-- replicated objects. This destination bucket must be in a different region
-- than your source bucket. If you have multiple rules in your replication
-- configuration, specify the same destination bucket for all of the rules.
srcrdBucket :: Lens' S3ReplicationConfigurationRulesDestination (Val Text)
srcrdBucket = lens _s3ReplicationConfigurationRulesDestinationBucket (\s a -> s { _s3ReplicationConfigurationRulesDestinationBucket = a })

-- | The storage class to use when replicating objects, such as standard or
-- reduced redundancy. By default, Amazon S3 uses the storage class of the
-- source object to create object replica. For valid values, see the
-- StorageClass element of the PUT Bucket replication action in the Amazon
-- Simple Storage Service API Reference.
srcrdStorageClass :: Lens' S3ReplicationConfigurationRulesDestination (Maybe (Val Text))
srcrdStorageClass = lens _s3ReplicationConfigurationRulesDestinationStorageClass (\s a -> s { _s3ReplicationConfigurationRulesDestinationStorageClass = a })