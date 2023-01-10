
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig. See
-- 'elasticLoadBalancingV2ListenerRuleHttpHeaderConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig =
  ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig
  { _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigHttpHeaderName :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig{..} =
    object $
    catMaybes
    [ fmap (("HttpHeaderName",) . toJSON) _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigHttpHeaderName
    , fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleHttpHeaderConfig
  :: ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig
elasticLoadBalancingV2ListenerRuleHttpHeaderConfig  =
  ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig
  { _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigHttpHeaderName = Nothing
  , _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-httpheadername
elbvlrhthcHttpHeaderName :: Lens' ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig (Maybe (Val Text))
elbvlrhthcHttpHeaderName = lens _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigHttpHeaderName (\s a -> s { _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigHttpHeaderName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httpheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-httpheaderconfig-values
elbvlrhthcValues :: Lens' ElasticLoadBalancingV2ListenerRuleHttpHeaderConfig (Maybe (ValList Text))
elbvlrhthcValues = lens _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleHttpHeaderConfigValues = a })
