{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleForwardConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleTargetGroupTuple

-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleForwardConfig. See
-- 'elasticLoadBalancingV2ListenerRuleForwardConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerRuleForwardConfig =
  ElasticLoadBalancingV2ListenerRuleForwardConfig
  { _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroupStickinessConfig :: Maybe ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
  , _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroups :: Maybe [ElasticLoadBalancingV2ListenerRuleTargetGroupTuple]
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleForwardConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleForwardConfig{..} =
    object $
    catMaybes
    [ fmap (("TargetGroupStickinessConfig",) . toJSON) _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroupStickinessConfig
    , fmap (("TargetGroups",) . toJSON) _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroups
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleForwardConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleForwardConfig
  :: ElasticLoadBalancingV2ListenerRuleForwardConfig
elasticLoadBalancingV2ListenerRuleForwardConfig  =
  ElasticLoadBalancingV2ListenerRuleForwardConfig
  { _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroupStickinessConfig = Nothing
  , _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html#cfn-elasticloadbalancingv2-listenerrule-forwardconfig-targetgroupstickinessconfig
elbvlrfcTargetGroupStickinessConfig :: Lens' ElasticLoadBalancingV2ListenerRuleForwardConfig (Maybe ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig)
elbvlrfcTargetGroupStickinessConfig = lens _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroupStickinessConfig (\s a -> s { _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroupStickinessConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-forwardconfig.html#cfn-elasticloadbalancingv2-listenerrule-forwardconfig-targetgroups
elbvlrfcTargetGroups :: Lens' ElasticLoadBalancingV2ListenerRuleForwardConfig (Maybe [ElasticLoadBalancingV2ListenerRuleTargetGroupTuple])
elbvlrfcTargetGroups = lens _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroups (\s a -> s { _elasticLoadBalancingV2ListenerRuleForwardConfigTargetGroups = a })
