{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy. See
-- | 'elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy =
  ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 57, omitNothingFields = True }

-- | Constructor for
-- | 'ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy' containing
-- | required fields as arguments.
elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
  :: ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy  =
  ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod = Nothing
  , _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-cookieexpirationperiod
elblblbcspCookieExpirationPeriod :: Lens' ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy (Maybe (Val Text))
elblblbcspCookieExpirationPeriod = lens _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod (\s a -> s { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html#cfn-elb-lbcookiestickinesspolicy-policyname
elblblbcspPolicyName :: Lens' ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy (Maybe (Val Text))
elblblbcspPolicyName = lens _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName (\s a -> s { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName = a })
