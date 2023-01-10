
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue. See
-- 'elasticLoadBalancingV2ListenerRuleQueryStringKeyValue' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue =
  ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue
  { _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueKey :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueValue :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue where
  toJSON ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue{..} =
    object $
    catMaybes
    [ fmap (("Key",) . toJSON) _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueKey
    , fmap (("Value",) . toJSON) _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueValue
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleQueryStringKeyValue
  :: ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue
elasticLoadBalancingV2ListenerRuleQueryStringKeyValue  =
  ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue
  { _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueKey = Nothing
  , _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueValue = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-key
elbvlrqskvKey :: Lens' ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue (Maybe (Val Text))
elbvlrqskvKey = lens _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueKey (\s a -> s { _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-querystringkeyvalue.html#cfn-elasticloadbalancingv2-listenerrule-querystringkeyvalue-value
elbvlrqskvValue :: Lens' ElasticLoadBalancingV2ListenerRuleQueryStringKeyValue (Maybe (Val Text))
elbvlrqskvValue = lens _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueValue (\s a -> s { _elasticLoadBalancingV2ListenerRuleQueryStringKeyValueValue = a })
