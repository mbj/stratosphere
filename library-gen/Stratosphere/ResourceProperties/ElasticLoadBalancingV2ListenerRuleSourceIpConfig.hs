
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleSourceIpConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleSourceIpConfig. See
-- 'elasticLoadBalancingV2ListenerRuleSourceIpConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleSourceIpConfig =
  ElasticLoadBalancingV2ListenerRuleSourceIpConfig
  { _elasticLoadBalancingV2ListenerRuleSourceIpConfigValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleSourceIpConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleSourceIpConfig{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleSourceIpConfigValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleSourceIpConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleSourceIpConfig
  :: ElasticLoadBalancingV2ListenerRuleSourceIpConfig
elasticLoadBalancingV2ListenerRuleSourceIpConfig  =
  ElasticLoadBalancingV2ListenerRuleSourceIpConfig
  { _elasticLoadBalancingV2ListenerRuleSourceIpConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-sourceipconfig.html#cfn-elasticloadbalancingv2-listenerrule-sourceipconfig-values
elbvlrsicValues :: Lens' ElasticLoadBalancingV2ListenerRuleSourceIpConfig (Maybe (ValList Text))
elbvlrsicValues = lens _elasticLoadBalancingV2ListenerRuleSourceIpConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleSourceIpConfigValues = a })
