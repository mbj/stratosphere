{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Describes cross-origin access rules for the Amazon S3 Cors Configuration
-- property.

module Stratosphere.ResourceProperties.S3CorsConfigurationRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3CorsConfigurationRule. See
-- 's3CorsConfigurationRule' for a more convenient constructor.
data S3CorsConfigurationRule =
  S3CorsConfigurationRule
  { _s3CorsConfigurationRuleAllowedHeaders :: Maybe [Val Text]
  , _s3CorsConfigurationRuleAllowedMethods :: [Val Text]
  , _s3CorsConfigurationRuleAllowedOrigins :: [Val Text]
  , _s3CorsConfigurationRuleExposedHeaders :: Maybe [Val Text]
  , _s3CorsConfigurationRuleId :: Maybe (Val Text)
  , _s3CorsConfigurationRuleMaxAge :: Maybe (Val Integer')
  } deriving (Show, Generic)

instance ToJSON S3CorsConfigurationRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON S3CorsConfigurationRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'S3CorsConfigurationRule' containing required fields as
-- arguments.
s3CorsConfigurationRule
  :: [Val Text] -- ^ 'sccrAllowedMethods'
  -> [Val Text] -- ^ 'sccrAllowedOrigins'
  -> S3CorsConfigurationRule
s3CorsConfigurationRule allowedMethodsarg allowedOriginsarg =
  S3CorsConfigurationRule
  { _s3CorsConfigurationRuleAllowedHeaders = Nothing
  , _s3CorsConfigurationRuleAllowedMethods = allowedMethodsarg
  , _s3CorsConfigurationRuleAllowedOrigins = allowedOriginsarg
  , _s3CorsConfigurationRuleExposedHeaders = Nothing
  , _s3CorsConfigurationRuleId = Nothing
  , _s3CorsConfigurationRuleMaxAge = Nothing
  }

-- | Headers that are specified in the Access-Control-Request-Headers header.
-- These headers are allowed in a preflight OPTIONS request. In response to
-- any preflight OPTIONS request, Amazon S3 returns any requested headers that
-- are allowed.
sccrAllowedHeaders :: Lens' S3CorsConfigurationRule (Maybe [Val Text])
sccrAllowedHeaders = lens _s3CorsConfigurationRuleAllowedHeaders (\s a -> s { _s3CorsConfigurationRuleAllowedHeaders = a })

-- | An HTTP method that you allow the origin to execute. The valid values are
-- GET, PUT, HEAD, POST, and DELETE.
sccrAllowedMethods :: Lens' S3CorsConfigurationRule [Val Text]
sccrAllowedMethods = lens _s3CorsConfigurationRuleAllowedMethods (\s a -> s { _s3CorsConfigurationRuleAllowedMethods = a })

-- | An origin that you allow to send cross-domain requests.
sccrAllowedOrigins :: Lens' S3CorsConfigurationRule [Val Text]
sccrAllowedOrigins = lens _s3CorsConfigurationRuleAllowedOrigins (\s a -> s { _s3CorsConfigurationRuleAllowedOrigins = a })

-- | One or more headers in the response that are accessible to client
-- applications (for example, from a JavaScript XMLHttpRequest object).
sccrExposedHeaders :: Lens' S3CorsConfigurationRule (Maybe [Val Text])
sccrExposedHeaders = lens _s3CorsConfigurationRuleExposedHeaders (\s a -> s { _s3CorsConfigurationRuleExposedHeaders = a })

-- | A unique identifier for this rule. The value cannot be more than 255
-- characters.
sccrId :: Lens' S3CorsConfigurationRule (Maybe (Val Text))
sccrId = lens _s3CorsConfigurationRuleId (\s a -> s { _s3CorsConfigurationRuleId = a })

-- | The time in seconds that your browser is to cache the preflight response
-- for the specified resource.
sccrMaxAge :: Lens' S3CorsConfigurationRule (Maybe (Val Integer'))
sccrMaxAge = lens _s3CorsConfigurationRuleMaxAge (\s a -> s { _s3CorsConfigurationRuleMaxAge = a })