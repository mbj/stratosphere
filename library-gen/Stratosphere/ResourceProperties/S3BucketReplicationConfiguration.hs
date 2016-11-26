{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html

module Stratosphere.ResourceProperties.S3BucketReplicationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3BucketReplicationRule

-- | Full data type definition for S3BucketReplicationConfiguration. See
-- | 's3BucketReplicationConfiguration' for a more convenient constructor.
data S3BucketReplicationConfiguration =
  S3BucketReplicationConfiguration
  { _s3BucketReplicationConfigurationRole :: Val Text
  , _s3BucketReplicationConfigurationRules :: [S3BucketReplicationRule]
  } deriving (Show, Generic)

instance ToJSON S3BucketReplicationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

instance FromJSON S3BucketReplicationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 33, omitNothingFields = True }

-- | Constructor for 'S3BucketReplicationConfiguration' containing required
-- | fields as arguments.
s3BucketReplicationConfiguration
  :: Val Text -- ^ 'sbrcRole'
  -> [S3BucketReplicationRule] -- ^ 'sbrcRules'
  -> S3BucketReplicationConfiguration
s3BucketReplicationConfiguration rolearg rulesarg =
  S3BucketReplicationConfiguration
  { _s3BucketReplicationConfigurationRole = rolearg
  , _s3BucketReplicationConfigurationRules = rulesarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-role
sbrcRole :: Lens' S3BucketReplicationConfiguration (Val Text)
sbrcRole = lens _s3BucketReplicationConfigurationRole (\s a -> s { _s3BucketReplicationConfigurationRole = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-replicationconfiguration.html#cfn-s3-bucket-replicationconfiguration-rules
sbrcRules :: Lens' S3BucketReplicationConfiguration [S3BucketReplicationRule]
sbrcRules = lens _s3BucketReplicationConfigurationRules (\s a -> s { _s3BucketReplicationConfigurationRules = a })
