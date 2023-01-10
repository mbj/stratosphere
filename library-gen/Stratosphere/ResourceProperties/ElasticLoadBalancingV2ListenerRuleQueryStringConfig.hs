
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleQueryStringConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue

-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleQueryStringConfig. See
-- 'elasticLoadBalancingV2ListenerRuleQueryStringConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleQueryStringConfig =
  ElasticLoadBalancingV2ListenerRuleQueryStringConfig
  { _elasticLoadBalancingV2ListenerRuleQueryStringConfigValues :: Maybe [ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue]
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleQueryStringConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleQueryStringConfig{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleQueryStringConfigValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleQueryStringConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleQueryStringConfig
  :: ElasticLoadBalancingV2ListenerRuleQueryStringConfig
elasticLoadBalancingV2ListenerRuleQueryStringConfig  =
  ElasticLoadBalancingV2ListenerRuleQueryStringConfig
  { _elasticLoadBalancingV2ListenerRuleQueryStringConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringconfig.html#cfn-elasticloadbalancingv2-listenerrule-querystringconfig-values
elbvlrqscValues :: Lens' ElasticLoadBalancingV2ListenerRuleQueryStringConfig (Maybe [ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue])
elbvlrqscValues = lens _elasticLoadBalancingV2ListenerRuleQueryStringConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleQueryStringConfigValues = a })
