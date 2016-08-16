{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes the lifecycle configuration for objects in an AWS::S3::Bucket
-- resource.

module Stratosphere.ResourceProperties.S3LifecycleConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3LifecycleRule

-- | Full data type definition for S3LifecycleConfiguration. See
-- 's3LifecycleConfiguration' for a more convenient constructor.
data S3LifecycleConfiguration =
  S3LifecycleConfiguration
  { _s3LifecycleConfigurationRules :: [S3LifecycleRule]
  } deriving (Show, Generic)

instance ToJSON S3LifecycleConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON S3LifecycleConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'S3LifecycleConfiguration' containing required fields as
-- arguments.
s3LifecycleConfiguration
  :: [S3LifecycleRule] -- ^ 'slcRules'
  -> S3LifecycleConfiguration
s3LifecycleConfiguration rulesarg =
  S3LifecycleConfiguration
  { _s3LifecycleConfigurationRules = rulesarg
  }

-- | A lifecycle rule for individual objects in an S3 bucket.
slcRules :: Lens' S3LifecycleConfiguration [S3LifecycleRule]
slcRules = lens _s3LifecycleConfigurationRules (\s a -> s { _s3LifecycleConfigurationRules = a })