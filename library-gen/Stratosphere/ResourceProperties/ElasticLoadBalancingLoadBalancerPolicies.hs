{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerPolicies where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingLoadBalancerPolicies.
-- | See 'elasticLoadBalancingLoadBalancerPolicies' for a more convenient
-- | constructor.
data ElasticLoadBalancingLoadBalancerPolicies =
  ElasticLoadBalancingLoadBalancerPolicies
  { _elasticLoadBalancingLoadBalancerPoliciesAttributes :: [Object]
  , _elasticLoadBalancingLoadBalancerPoliciesInstancePorts :: Maybe [Val Text]
  , _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts :: Maybe [Val Text]
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyName :: Val Text
  , _elasticLoadBalancingLoadBalancerPoliciesPolicyType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerPolicies where
  toJSON ElasticLoadBalancingLoadBalancerPolicies{..} =
    object
    [ "Attributes" .= _elasticLoadBalancingLoadBalancerPoliciesAttributes
    , "InstancePorts" .= _elasticLoadBalancingLoadBalancerPoliciesInstancePorts
    , "LoadBalancerPorts" .= _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts
    , "PolicyName" .= _elasticLoadBalancingLoadBalancerPoliciesPolicyName
    , "PolicyType" .= _elasticLoadBalancingLoadBalancerPoliciesPolicyType
    ]

instance FromJSON ElasticLoadBalancingLoadBalancerPolicies where
  parseJSON (Object obj) =
    ElasticLoadBalancingLoadBalancerPolicies <$>
      obj .: "Attributes" <*>
      obj .: "InstancePorts" <*>
      obj .: "LoadBalancerPorts" <*>
      obj .: "PolicyName" <*>
      obj .: "PolicyType"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingLoadBalancerPolicies' containing
-- | required fields as arguments.
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
elblbpInstancePorts :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Maybe [Val Text])
elblbpInstancePorts = lens _elasticLoadBalancingLoadBalancerPoliciesInstancePorts (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesInstancePorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-loadbalancerports
elblbpLoadBalancerPorts :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Maybe [Val Text])
elblbpLoadBalancerPorts = lens _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesLoadBalancerPorts = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policyname
elblbpPolicyName :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Val Text)
elblbpPolicyName = lens _elasticLoadBalancingLoadBalancerPoliciesPolicyName (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesPolicyName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-policy.html#cfn-ec2-elb-policy-policytype
elblbpPolicyType :: Lens' ElasticLoadBalancingLoadBalancerPolicies (Val Text)
elblbpPolicyType = lens _elasticLoadBalancingLoadBalancerPoliciesPolicyType (\s a -> s { _elasticLoadBalancingLoadBalancerPoliciesPolicyType = a })
