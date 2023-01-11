
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRulePathPatternConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRulePathPatternConfig. See
-- 'elasticLoadBalancingV2ListenerRulePathPatternConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRulePathPatternConfig =
  ElasticLoadBalancingV2ListenerRulePathPatternConfig
  { _elasticLoadBalancingV2ListenerRulePathPatternConfigValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRulePathPatternConfig where
  toJSON ElasticLoadBalancingV2ListenerRulePathPatternConfig{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRulePathPatternConfigValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRulePathPatternConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRulePathPatternConfig
  :: ElasticLoadBalancingV2ListenerRulePathPatternConfig
elasticLoadBalancingV2ListenerRulePathPatternConfig  =
  ElasticLoadBalancingV2ListenerRulePathPatternConfig
  { _elasticLoadBalancingV2ListenerRulePathPatternConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-pathpatternconfig.html#cfn-elasticloadbalancingv2-listenerrule-pathpatternconfig-values
elbvlrppcValues :: Lens' ElasticLoadBalancingV2ListenerRulePathPatternConfig (Maybe (ValList Text))
elbvlrppcValues = lens _elasticLoadBalancingV2ListenerRulePathPatternConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRulePathPatternConfigValues = a })
