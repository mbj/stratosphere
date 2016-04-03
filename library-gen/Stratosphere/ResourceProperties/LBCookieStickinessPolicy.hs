{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The LBCookieStickinessPolicy type is an embedded property of the
-- AWS::ElasticLoadBalancing::LoadBalancer type.

module Stratosphere.ResourceProperties.LBCookieStickinessPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


data LBCookieStickinessPolicy =
  LBCookieStickinessPolicy
  { _lBCookieStickinessPolicyCookieExpirationPeriod :: Maybe (Val Text)
  , _lBCookieStickinessPolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON LBCookieStickinessPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON LBCookieStickinessPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

lbCookieStickinessPolicy
  :: LBCookieStickinessPolicy
lbCookieStickinessPolicy  =
  LBCookieStickinessPolicy
  { _lBCookieStickinessPolicyCookieExpirationPeriod = Nothing
  , _lBCookieStickinessPolicyPolicyName = Nothing
  }

-- | The time period, in seconds, after which the cookie should be considered
-- stale. If this parameter isn't specified, the sticky session will last for
-- the duration of the browser session.
lbcspCookieExpirationPeriod :: Lens' LBCookieStickinessPolicy (Maybe (Val Text))
lbcspCookieExpirationPeriod = lens _lBCookieStickinessPolicyCookieExpirationPeriod (\s a -> s { _lBCookieStickinessPolicyCookieExpirationPeriod = a })

-- | The name of the policy being created. The name must be unique within the
-- set of policies for this load balancer. Note To associate this policy with
-- a listener, include the policy name in the listener's PolicyNames property.
lbcspPolicyName :: Lens' LBCookieStickinessPolicy (Maybe (Val Text))
lbcspPolicyName = lens _lBCookieStickinessPolicyPolicyName (\s a -> s { _lBCookieStickinessPolicyPolicyName = a })