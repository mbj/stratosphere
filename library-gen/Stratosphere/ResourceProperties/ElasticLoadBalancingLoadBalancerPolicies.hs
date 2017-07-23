{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerPolicies where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingLoadBalancerPolicies.
-- See 'elasticLoadBalancingLoadBalancerPolicies' for a more convenient
-- constructor.
data ElasticLoadBalancingLoadBalancerPolicies =
  ElasticLoadBalancingLoadBalancerPolicies
  { _elasticLoadBalancingLoadBalancerPoliciesAttributes :: [Object]
  , _elasticLoadBalancingLoadBalancerPoliciesInstancePorts :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts :: Maybe (ValList Text)
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyName :: Val Text
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerPolicies where
  toJSON ElasticLoadBalancingLoadBalancerPolicies{..} =
    object $
    catMaybes
    [ (Just . ("Attributes",) . toJSON) _elasticLoadBalancingLoadBalancerPoliciesAttributes
    , fmap (("InstancePorts",) . toJSON) _elasticLoadBalancingLoadBalancerPoliciesInstancePorts
    , fmap (("LoadBalancerPorts",) . toJSON) _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts
    , (Just . ("PolicyName",) . toJSON) _elasticLoadBalancingLoadBalancerPoliciesPolicyName
    , (Just . ("PolicyType",) . toJSON) _elasticLoadBalancingLoadBalancerPoliciesPolicyType
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerPolicies where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerPolicies <$>
      (obj .: "Attributes") <*>
      (obj .:? "InstancePorts") <*>
      (obj .:? "LoadBalancerPorts") <*>
      (obj .: "PolicyName") <*>
      (obj .: "PolicyType")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingLoadBalancerPolicies' containing
-- required fields as arguments.
elasticLoadBalancingLoadBalancerPolicies
  :: [Object] -- ^ 'elblbpAttributes'
  -> Val Text -- ^ 'elblbpPolicyName'
  -> Val Text -- ^ 'elblbpPolicyType'
  -> ElasticLoadBalancingLoadBalancerPolicies
elasticLoadBalancingLoadBalancerPolicies attributesarg policyNamearg policyTypearg =
  ElasticLoadBalancingLoadBalancerPolicies
  { _elasticLoadBalancingLoadBalancerPoliciesAttributes = attributesarg
  , _elasticLoadBalancingLoadBalancerPoliciesInstancePorts = Nothing
  , _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts = Nothing
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyName = policyNamearg
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyType = policyTypearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-attributes
elblbpAttributes :: Lens' ElasticLoadBalancingLoadBalancerPolicies [Object]
elblbpAttributes = lens _elasticLoadBalancingLoadBalancerPoliciesAttributes (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesAttributes = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-instanceports
elblbpInstancePorts :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Maybe (ValList Text))
elblbpInstancePorts = lens _elasticLoadBalancingLoadBalancerPoliciesInstancePorts (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesInstancePorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-loadbalancerports
elblbpLoadBalancerPorts :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Maybe (ValList Text))
elblbpLoadBalancerPorts = lens _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policyname
elblbpPolicyName :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Val Text)
elblbpPolicyName = lens _elasticLoadBalancingLoadBalancerPoliciesPolicyName (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policytype
elblbpPolicyType :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Val Text)
elblbpPolicyType = lens _elasticLoadBalancingLoadBalancerPoliciesPolicyType (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesPolicyType = a })
