{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The RedirectAllRequestsTo code is an embedded property of the Amazon S3
-- Website Configuration Property property that describes the redirect
-- behavior of all requests to a website endpoint of an Amazon S3 bucket.

module Stratosphere.ResourceProperties.S3WebsiteRedirectAllRequestsTo where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3WebsiteRedirectAllRequestsTo. See
-- 's3WebsiteRedirectAllRequestsTo' for a more convenient constructor.
data S3WebsiteRedirectAllRequestsTo =
  S3WebsiteRedirectAllRequestsTo
  { _s3WebsiteRedirectAllRequestsToHostName :: Val Text
  , _s3WebsiteRedirectAllRequestsToProtocol :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3WebsiteRedirectAllRequestsTo where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON S3WebsiteRedirectAllRequestsTo where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'S3WebsiteRedirectAllRequestsTo' containing required
-- fields as arguments.
s3WebsiteRedirectAllRequestsTo
  :: Val Text -- ^ 'swrartHostName'
  -> S3WebsiteRedirectAllRequestsTo
s3WebsiteRedirectAllRequestsTo hostNamearg =
  S3WebsiteRedirectAllRequestsTo
  { _s3WebsiteRedirectAllRequestsToHostName = hostNamearg
  , _s3WebsiteRedirectAllRequestsToProtocol = Nothing
  }

-- | Name of the host where requests are redirected.
swrartHostName :: Lens' S3WebsiteRedirectAllRequestsTo (Val Text)
swrartHostName = lens _s3WebsiteRedirectAllRequestsToHostName (\s a -> s { _s3WebsiteRedirectAllRequestsToHostName = a })

-- | Protocol to use (http or https) when redirecting requests. The default is
-- the protocol that is used in the original request.
swrartProtocol :: Lens' S3WebsiteRedirectAllRequestsTo (Maybe (Val Text))
swrartProtocol = lens _s3WebsiteRedirectAllRequestsToProtocol (\s a -> s { _s3WebsiteRedirectAllRequestsToProtocol = a })