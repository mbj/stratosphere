{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The RedirectRule property is an embedded property of the Amazon S3
-- Website Configuration Routing Rules Property that describes how requests
-- are redirected. In the event of an error, you can specify a different error
-- code to return.

module Stratosphere.ResourceProperties.S3WebsiteRedirectRule where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for S3WebsiteRedirectRule. See
-- 's3WebsiteRedirectRule' for a more convenient constructor.
data S3WebsiteRedirectRule =
  S3WebsiteRedirectRule
  { _s3WebsiteRedirectRuleHostName :: Maybe (Val Text)
  , _s3WebsiteRedirectRuleHttpRedirectCode :: Maybe (Val Text)
  , _s3WebsiteRedirectRuleProtocol :: Maybe (Val Text)
  , _s3WebsiteRedirectRuleReplaceKeyPrefixWith :: Maybe (Val Text)
  , _s3WebsiteRedirectRuleReplaceKeyWith :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON S3WebsiteRedirectRule where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

instance FromJSON S3WebsiteRedirectRule where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 22, omitNothingFields = True }

-- | Constructor for 'S3WebsiteRedirectRule' containing required fields as
-- arguments.
s3WebsiteRedirectRule
  :: S3WebsiteRedirectRule
s3WebsiteRedirectRule  =
  S3WebsiteRedirectRule
  { _s3WebsiteRedirectRuleHostName = Nothing
  , _s3WebsiteRedirectRuleHttpRedirectCode = Nothing
  , _s3WebsiteRedirectRuleProtocol = Nothing
  , _s3WebsiteRedirectRuleReplaceKeyPrefixWith = Nothing
  , _s3WebsiteRedirectRuleReplaceKeyWith = Nothing
  }

-- | Name of the host where requests are redirected.
swrrHostName :: Lens' S3WebsiteRedirectRule (Maybe (Val Text))
swrrHostName = lens _s3WebsiteRedirectRuleHostName (\s a -> s { _s3WebsiteRedirectRuleHostName = a })

-- | The HTTP redirect code to use on the response.
swrrHttpRedirectCode :: Lens' S3WebsiteRedirectRule (Maybe (Val Text))
swrrHttpRedirectCode = lens _s3WebsiteRedirectRuleHttpRedirectCode (\s a -> s { _s3WebsiteRedirectRuleHttpRedirectCode = a })

-- | The protocol to use in the redirect request.
swrrProtocol :: Lens' S3WebsiteRedirectRule (Maybe (Val Text))
swrrProtocol = lens _s3WebsiteRedirectRuleProtocol (\s a -> s { _s3WebsiteRedirectRuleProtocol = a })

-- | The object key prefix to use in the redirect request. For example, to
-- redirect requests for all pages with the prefix docs/ (objects in the docs/
-- folder) to the documents/ prefix, you can set the KeyPrefixEquals property
-- in routing condition property to docs/, and set the ReplaceKeyPrefixWith
-- property to documents/. Important If you specify this property, you cannot
-- specify the ReplaceKeyWith property.
swrrReplaceKeyPrefixWith :: Lens' S3WebsiteRedirectRule (Maybe (Val Text))
swrrReplaceKeyPrefixWith = lens _s3WebsiteRedirectRuleReplaceKeyPrefixWith (\s a -> s { _s3WebsiteRedirectRuleReplaceKeyPrefixWith = a })

-- | The specific object key to use in the redirect request. For example,
-- redirect request to error.html. Important If you specify this property, you
-- cannot specify the ReplaceKeyPrefixWith property.
swrrReplaceKeyWith :: Lens' S3WebsiteRedirectRule (Maybe (Val Text))
swrrReplaceKeyWith = lens _s3WebsiteRedirectRuleReplaceKeyWith (\s a -> s { _s3WebsiteRedirectRuleReplaceKeyWith = a })