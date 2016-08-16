{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | ReplicationConfiguration is a property of the AWS::S3::Bucket resource
-- that specifies replication rules and the AWS Identity and Access Management
-- (IAM) role Amazon Simple Storage Service (Amazon S3) uses to replicate
-- objects.

module Stratosphere.ResourceProperties.S3ReplicationConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3ReplicationConfigurationRule

-- | Full data type definition for S3ReplicationConfiguration. See
-- 's3ReplicationConfiguration' for a more convenient constructor.
data S3ReplicationConfiguration =
  S3ReplicationConfiguration
  { _s3ReplicationConfigurationRole :: Val Text
  , _s3ReplicationConfigurationRules :: [S3ReplicationConfigurationRule]
  } deriving (Show, Generic)

instance ToJSON S3ReplicationConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

instance FromJSON S3ReplicationConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 27, omitNothingFields = True }

-- | Constructor for 'S3ReplicationConfiguration' containing required fields
-- as arguments.
s3ReplicationConfiguration
  :: Val Text -- ^ 'srcRole'
  -> [S3ReplicationConfigurationRule] -- ^ 'srcRules'
  -> S3ReplicationConfiguration
s3ReplicationConfiguration rolearg rulesarg =
  S3ReplicationConfiguration
  { _s3ReplicationConfigurationRole = rolearg
  , _s3ReplicationConfigurationRules = rulesarg
  }

-- | The Amazon Resource Name (ARN) of an AWS Identity and Access Management
-- (IAM) role that Amazon S3 assumes when replicating objects. For more
-- information, see How to Set Up Cross-Region Replication in the Amazon
-- Simple Storage Service Developer Guide.
srcRole :: Lens' S3ReplicationConfiguration (Val Text)
srcRole = lens _s3ReplicationConfigurationRole (\s a -> s { _s3ReplicationConfigurationRole = a })

-- | A replication rule that specifies which objects to replicate and where
-- they are stored.
srcRules :: Lens' S3ReplicationConfiguration [S3ReplicationConfigurationRule]
srcRules = lens _s3ReplicationConfigurationRules (\s a -> s { _s3ReplicationConfigurationRules = a })