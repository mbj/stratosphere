{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes the versioning state of an AWS::S3::Bucket resource. For more
-- information, see PUT Bucket versioning in the Amazon Simple Storage Service
-- API Reference.

module Stratosphere.ResourceProperties.S3VersioningConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3VersioningConfiguration. See
-- 's3VersioningConfiguration' for a more convenient constructor.
data S3VersioningConfiguration =
  S3VersioningConfiguration
  { _s3VersioningConfigurationStatus :: Val Text
  } deriving (Show, Generic)

instance ToJSON S3VersioningConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON S3VersioningConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

-- | Constructor for 'S3VersioningConfiguration' containing required fields as
-- arguments.
s3VersioningConfiguration
  :: Val Text -- ^ 'svcStatus'
  -> S3VersioningConfiguration
s3VersioningConfiguration statusarg =
  S3VersioningConfiguration
  { _s3VersioningConfigurationStatus = statusarg
  }

-- | The versioning state of an Amazon S3 bucket. If you enable versioning,
-- you must suspend versioning to disable it.
svcStatus :: Lens' S3VersioningConfiguration (Val Text)
svcStatus = lens _s3VersioningConfigurationStatus (\s a -> s { _s3VersioningConfigurationStatus = a })