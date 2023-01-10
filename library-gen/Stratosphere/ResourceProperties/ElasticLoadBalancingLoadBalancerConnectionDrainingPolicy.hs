
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy. See
-- 'elasticLoadBalancingLoadBalancerConnectionDrainingPolicy' for a more
-- convenient constructor.
data ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy =
  ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled :: Val Bool
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy where
  toJSON ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy{..} =
    object $
    catMaybes
    [ (Just . ("Enabled",) . toJSON) _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled
    , fmap (("Timeout",) . toJSON) _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout
    ]

-- | Constructor for
-- 'ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy' containing
-- required fields as arguments.
elasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  :: Val Bool -- ^ 'elblbcdpEnabled'
  -> ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
elasticLoadBalancingLoadBalancerConnectionDrainingPolicy enabledarg =
  ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy
  { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled = enabledarg
  , _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-enabled
elblbcdpEnabled :: Lens' ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy (Val Bool)
elblbcdpEnabled = lens _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyEnabled = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-elb-connectiondrainingpolicy.html#cfn-elb-connectiondrainingpolicy-timeout
elblbcdpTimeout :: Lens' ElasticLoadBalancingLoadBalancerConnectionDrainingPolicy (Maybe (Val Integer))
elblbcdpTimeout = lens _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout (\s a -> s { _elasticLoadBalancingLoadBalancerConnectionDrainingPolicyTimeout = a })
