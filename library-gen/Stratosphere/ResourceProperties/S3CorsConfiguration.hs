{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes the cross-origin access configuration for objects in an
-- AWS::S3::Bucket resource.

module Stratosphere.ResourceProperties.S3CorsConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3CorsConfigurationRule

-- | Full data type definition for S3CorsConfiguration. See
-- 's3CorsConfiguration' for a more convenient constructor.
data S3CorsConfiguration =
  S3CorsConfiguration
  { _s3CorsConfigurationCorsRules :: [S3CorsConfigurationRule]
  } deriving (Show, Generic)

instance ToJSON S3CorsConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

instance FromJSON S3CorsConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 20, omitNothingFields = True }

-- | Constructor for 'S3CorsConfiguration' containing required fields as
-- arguments.
s3CorsConfiguration
  :: [S3CorsConfigurationRule] -- ^ 'sccCorsRules'
  -> S3CorsConfiguration
s3CorsConfiguration corsRulesarg =
  S3CorsConfiguration
  { _s3CorsConfigurationCorsRules = corsRulesarg
  }

-- | A set of origins and methods that you allow.
sccCorsRules :: Lens' S3CorsConfiguration [S3CorsConfigurationRule]
sccCorsRules = lens _s3CorsConfigurationCorsRules (\s a -> s { _s3CorsConfigurationCorsRules = a })