{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgrouptuple.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerTargetGroupTuple where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerTargetGroupTuple. See
-- 'elasticLoadBalancingV2ListenerTargetGroupTuple' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerTargetGroupTuple =
  ElasticLoadBalancingV2ListenerTargetGroupTuple
  { _elasticLoadBalancingV2ListenerTargetGroupTupleTargetGroupArn :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerTargetGroupTupleWeight :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerTargetGroupTuple where
  toJSON ElasticLoadBalancingV2ListenerTargetGroupTuple{..} =
    object $
    catMaybes
    [ fmap (("TargetGroupArn",) . toJSON) _elasticLoadBalancingV2ListenerTargetGroupTupleTargetGroupArn
    , fmap (("Weight",) . toJSON) _elasticLoadBalancingV2ListenerTargetGroupTupleWeight
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerTargetGroupTuple'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerTargetGroupTuple
  :: ElasticLoadBalancingV2ListenerTargetGroupTuple
elasticLoadBalancingV2ListenerTargetGroupTuple  =
  ElasticLoadBalancingV2ListenerTargetGroupTuple
  { _elasticLoadBalancingV2ListenerTargetGroupTupleTargetGroupArn = Nothing
  , _elasticLoadBalancingV2ListenerTargetGroupTupleWeight = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgrouptuple.html#cfn-elasticloadbalancingv2-listener-targetgrouptuple-targetgrouparn
elbvltgtTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerTargetGroupTuple (Maybe (Val Text))
elbvltgtTargetGroupArn = lens _elasticLoadBalancingV2ListenerTargetGroupTupleTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerTargetGroupTupleTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgrouptuple.html#cfn-elasticloadbalancingv2-listener-targetgrouptuple-weight
elbvltgtWeight :: Lens' ElasticLoadBalancingV2ListenerTargetGroupTuple (Maybe (Val Integer))
elbvltgtWeight = lens _elasticLoadBalancingV2ListenerTargetGroupTupleWeight (\s a -> s { _elasticLoadBalancingV2ListenerTargetGroupTupleWeight = a })
