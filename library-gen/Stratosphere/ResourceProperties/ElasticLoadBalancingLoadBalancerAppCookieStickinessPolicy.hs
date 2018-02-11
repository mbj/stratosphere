{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-AppCookieStickinessPolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy. See
-- 'elasticLoadBalancingLoadBalancerAppCookieStickinessPolicy' for a more
-- convenient constructor.
data ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy =
  ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy
  { _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName :: Val Text
  , _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where
  toJSON ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy{..} =
    object $
    catMaybes
    [ (Just . ("CookieName",) . toJSON) _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyCookieName
    , (Just . ("PolicyName",) . toJSON) _elasticLoadBalancingLoadBalancerAppCookieStickinessPolicyPolicyName
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy <$>
      (obj .: "CookieName") <*>
      (obj .: "PolicyName")
  parseJSON _ = mempty

-- | Constructor for
-- 'ElasticLoadBalancingLoadBalancerAppCookieStickinessPolicy' containing
-- required fields as arguments.
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
