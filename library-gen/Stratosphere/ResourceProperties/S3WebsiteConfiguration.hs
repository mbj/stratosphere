{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | WebsiteConfiguration is an embedded property of the AWS::S3::Bucket
-- resource.

module Stratosphere.ResourceProperties.S3WebsiteConfiguration where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.S3WebsiteRedirectAllRequestsTo
import Stratosphere.ResourceProperties.S3WebsiteRoutingRules

-- | Full data type definition for S3WebsiteConfiguration. See
-- 's3WebsiteConfiguration' for a more convenient constructor.
data S3WebsiteConfiguration =
  S3WebsiteConfiguration
  { _s3WebsiteConfigurationErrorDocument :: Maybe (Val Text)
  , _s3WebsiteConfigurationIndexDocument :: Val Text
  , _s3WebsiteConfigurationRedirectAllRequestsTo :: Maybe S3WebsiteRedirectAllRequestsTo
  , _s3WebsiteConfigurationRoutingRules :: Maybe S3WebsiteRoutingRules
  } deriving (Show, Generic)

instance ToJSON S3WebsiteConfiguration where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

instance FromJSON S3WebsiteConfiguration where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 23, omitNothingFields = True }

-- | Constructor for 'S3WebsiteConfiguration' containing required fields as
-- arguments.
s3WebsiteConfiguration
  :: Val Text -- ^ 'swcIndexDocument'
  -> S3WebsiteConfiguration
s3WebsiteConfiguration indexDocumentarg =
  S3WebsiteConfiguration
  { _s3WebsiteConfigurationErrorDocument = Nothing
  , _s3WebsiteConfigurationIndexDocument = indexDocumentarg
  , _s3WebsiteConfigurationRedirectAllRequestsTo = Nothing
  , _s3WebsiteConfigurationRoutingRules = Nothing
  }

-- | The name of the error document for the website.
swcErrorDocument :: Lens' S3WebsiteConfiguration (Maybe (Val Text))
swcErrorDocument = lens _s3WebsiteConfigurationErrorDocument (\s a -> s { _s3WebsiteConfigurationErrorDocument = a })

-- | The name of the index document for the website.
swcIndexDocument :: Lens' S3WebsiteConfiguration (Val Text)
swcIndexDocument = lens _s3WebsiteConfigurationIndexDocument (\s a -> s { _s3WebsiteConfigurationIndexDocument = a })

-- | The redirect behavior for every request to this bucket's website
-- endpoint. Important If you specify this property, you cannot specify any
-- other property.
swcRedirectAllRequestsTo :: Lens' S3WebsiteConfiguration (Maybe S3WebsiteRedirectAllRequestsTo)
swcRedirectAllRequestsTo = lens _s3WebsiteConfigurationRedirectAllRequestsTo (\s a -> s { _s3WebsiteConfigurationRedirectAllRequestsTo = a })

-- | Rules that define when a redirect is applied and the redirect behavior.
swcRoutingRules :: Lens' S3WebsiteConfiguration (Maybe S3WebsiteRoutingRules)
swcRoutingRules = lens _s3WebsiteConfigurationRoutingRules (\s a -> s { _s3WebsiteConfigurationRoutingRules = a })