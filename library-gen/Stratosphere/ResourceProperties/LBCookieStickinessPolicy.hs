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


-- | Full data type definition for LBCookieStickinessPolicy. See
-- 'lbCookieStickinessPolicy' for a more convenient constructor.
data LBCookieStickinessPolicy =
  LBCookieStickinessPolicy
  { _lBCookieStickinessPolicyCookieExpirationPeriod :: Maybe (Val Text)
  , _lBCookieStickinessPolicyPolicyName :: Val Text
  } deriving (Show, Generic)

instance ToJSON LBCookieStickinessPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

instance FromJSON LBCookieStickinessPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 25, omitNothingFields = True }

-- | Constructor for 'LBCookieStickinessPolicy' containing required fields as
-- arguments.
lbCookieStickinessPolicy
  :: Val Text -- ^ PolicyName
  -> LBCookieStickinessPolicy
lbCookieStickinessPolicy policyNamearg =
  LBCookieStickinessPolicy
  { _lBCookieStickinessPolicyCookieExpirationPeriod = Nothing
  , _lBCookieStickinessPolicyPolicyName = policyNamearg
  }

-- | The time period, in seconds, after which the cookie should be considered
-- stale. If this parameter isn't specified, the sticky session will last for
-- the duration of the browser session.
lbcspCookieExpirationPeriod :: Lens' LBCookieStickinessPolicy (Maybe (Val Text))
lbcspCookieExpirationPeriod = lens _lBCookieStickinessPolicyCookieExpirationPeriod (\s a -> s { _lBCookieStickinessPolicyCookieExpirationPeriod = a })

-- | The name of the policy being created. The name must be unique within the
-- set of policies for this load balancer. Note To associate this policy with
-- a listener, include the policy name in the listener's PolicyNames property.
lbcspPolicyName :: Lens' LBCookieStickinessPolicy (Val Text)
lbcspPolicyName = lens _lBCookieStickinessPolicyPolicyName (\s a -> s { _lBCookieStickinessPolicyPolicyName = a })