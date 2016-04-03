{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AppCookieStickinessPolicy type is an embedded property of the
-- AWS::ElasticLoadBalancing::LoadBalancer type.

module Stratosphere.ResourceProperties.AppCookieStickinessPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data AppCookieStickinessPolicy =
  AppCookieStickinessPolicy
  { _appCookieStickinessPolicyCookieName :: Val Text
  , _appCookieStickinessPolicyPolicyName :: Val Text
  } deriving (Show, Generic)

instance ToJSON AppCookieStickinessPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

instance FromJSON AppCookieStickinessPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 26, omitNothingFields = True }

appCookieStickinessPolicy
  :: Val Text -- ^ CookieName
  -> Val Text -- ^ PolicyName
  -> AppCookieStickinessPolicy
appCookieStickinessPolicy cookieNamearg policyNamearg =
  AppCookieStickinessPolicy
  { _appCookieStickinessPolicyCookieName = cookieNamearg
  , _appCookieStickinessPolicyPolicyName = policyNamearg
  }

-- | Name of the application cookie used for stickiness.
acspCookieName :: Lens' AppCookieStickinessPolicy (Val Text)
acspCookieName = lens _appCookieStickinessPolicyCookieName (\s a -> s { _appCookieStickinessPolicyCookieName = a })

-- | The name of the policy being created. The name must be unique within the
-- set of policies for this Load Balancer. Note To associate this policy with
-- a listener, include the policy name in the listener's PolicyNames property.
acspPolicyName :: Lens' AppCookieStickinessPolicy (Val Text)
acspPolicyName = lens _appCookieStickinessPolicyPolicyName (\s a -> s { _appCookieStickinessPolicyPolicyName = a })