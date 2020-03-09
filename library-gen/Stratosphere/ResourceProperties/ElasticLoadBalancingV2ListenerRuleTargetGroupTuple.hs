{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleTargetGroupTuple where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleTargetGroupTuple. See
-- 'elasticLoadBalancingV2ListenerRuleTargetGroupTuple' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleTargetGroupTuple =
  ElasticLoadBalancingV2ListenerRuleTargetGroupTuple
  { _elasticLoadBalancingV2ListenerRuleTargetGroupTupleTargetGroupArn :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleTargetGroupTupleWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleTargetGroupTuple where
  toJSON ElasticLoadBalancingV2ListenerRuleTargetGroupTuple{..} =
    object $
    catMaybes
    [ fmap (("TargetGroupArn",) . toJSON) _elasticLoadBalancingV2ListenerRuleTargetGroupTupleTargetGroupArn
    , fmap (("Weight",) . toJSON) _elasticLoadBalancingV2ListenerRuleTargetGroupTupleWeight
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleTargetGroupTuple'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleTargetGroupTuple
  :: ElasticLoadBalancingV2ListenerRuleTargetGroupTuple
elasticLoadBalancingV2ListenerRuleTargetGroupTuple  =
  ElasticLoadBalancingV2ListenerRuleTargetGroupTuple
  { _elasticLoadBalancingV2ListenerRuleTargetGroupTupleTargetGroupArn = Nothing
  , _elasticLoadBalancingV2ListenerRuleTargetGroupTupleWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html#cfn-elasticloadbalancingv2-listenerrule-targetgrouptuple-targetgrouparn
elbvlrtgtTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerRuleTargetGroupTuple (Maybe (Val Text))
elbvlrtgtTargetGroupArn = lens _elasticLoadBalancingV2ListenerRuleTargetGroupTupleTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerRuleTargetGroupTupleTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgrouptuple.html#cfn-elasticloadbalancingv2-listenerrule-targetgrouptuple-weight
elbvlrtgtWeight :: Lens' ElasticLoadBalancingV2ListenerRuleTargetGroupTuple (Maybe (Val Integer))
elbvlrtgtWeight = lens _elasticLoadBalancingV2ListenerRuleTargetGroupTupleWeight (\s a -> s { _elasticLoadBalancingV2ListenerRuleTargetGroupTupleWeight = a })
