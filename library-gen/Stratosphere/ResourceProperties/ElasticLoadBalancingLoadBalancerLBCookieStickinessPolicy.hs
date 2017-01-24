{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-LBCookieStickinessPolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy. See
-- | 'elasticLoadBalancingLoadBalancerLBCookieStickinessPolicy' for a more
-- | convenient constructor.
data ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy =
  ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod :: Maybe (Val Text)
  , _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where
  toJSON ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy{..} =
    object
    [ "CookieExpirationPeriod" .= _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyCookieExpirationPeriod
    , "PolicyName" .= _elasticLoadBalancingLoadBalancerLBCookieStickinessPolicyPolicyName
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerLBCookieStickinessPolicy <$>
      obj .: "CookieExpirationPeriod" <*>
      obj .: "PolicyName"
  parseJSON _ = mempty

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
