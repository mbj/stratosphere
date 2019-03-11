{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRuleCondition where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleRuleCondition. See
-- 'elasticLoadBalancingV2ListenerRuleRuleCondition' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleRuleCondition =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  toJSON ElasticLoadBalancingV2ListenerRuleRuleCondition{..} =
    object $
    catMaybes
    [ fmap (("Field",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionField
    , fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleRuleConditionValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleRuleCondition'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleRuleCondition
  :: ElasticLoadBalancingV2ListenerRuleRuleCondition
elasticLoadBalancingV2ListenerRuleRuleCondition  =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
elbvlrrcField :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe (Val Text))
elbvlrrcField = lens _elasticLoadBalancingV2ListenerRuleRuleConditionField (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
elbvlrrcValues :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe (ValList Text))
elbvlrrcValues = lens _elasticLoadBalancingV2ListenerRuleRuleConditionValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionValues = a })
