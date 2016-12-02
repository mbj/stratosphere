{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy. See
-- | 'elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy =
  ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName :: Val Text
  , _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName :: Val Text
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 58, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 58, omitNothingFields = True }

-- | Constructor for
-- | 'ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy' containing
-- | required fields as arguments.
elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
  :: Val Text -- ^ 'elblbacspCookieName'
  -> Val Text -- ^ 'elblbacspPolicyName'
  -> ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy cookieNamearg policyNamearg =
  ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName = cookieNamearg
  , _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName = policyNamearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-cookiename
elblbacspCookieName :: Lens' ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy (Val Text)
elblbacspCookieName = lens _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName (\s a -> s { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html#cfn-elb-appcookiestickinesspolicy-policyname
elblbacspPolicyName :: Lens' ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy (Val Text)
elblbacspPolicyName = lens _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName (\s a -> s { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName = a })
