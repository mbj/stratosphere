{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerForwardConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig
import Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerTargetGroupTuple

-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerForwardConfig. See
-- 'elasticLoadBalancingV2ListenerForwardConfig' for a more convenient
-- constructor.
data ElasticLoadBalancingV2ListenerForwardConfig =
  ElasticLoadBalancingV2ListenerForwardConfig
  { _elasticLoadBalancingV2ListenerForwardConfigTargetGroupStickinessConfig :: Maybe ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig
  , _elasticLoadBalancingV2ListenerForwardConfigTargetGroups :: Maybe [ElasticLoadBalancingV2ListenerTargetGroupTuple]
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerForwardConfig where
  toJSON ElasticLoadBalancingV2ListenerForwardConfig{..} =
    object $
    catMaybes
    [ fmap (("TargetGroupStickinessConfig",) . toJSON) _elasticLoadBalancingV2ListenerForwardConfigTargetGroupStickinessConfig
    , fmap (("TargetGroups",) . toJSON) _elasticLoadBalancingV2ListenerForwardConfigTargetGroups
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerForwardConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerForwardConfig
  :: ElasticLoadBalancingV2ListenerForwardConfig
elasticLoadBalancingV2ListenerForwardConfig  =
  ElasticLoadBalancingV2ListenerForwardConfig
  { _elasticLoadBalancingV2ListenerForwardConfigTargetGroupStickinessConfig = Nothing
  , _elasticLoadBalancingV2ListenerForwardConfigTargetGroups = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroupstickinessconfig
elbvlfcTargetGroupStickinessConfig :: Lens' ElasticLoadBalancingV2ListenerForwardConfig (Maybe ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig)
elbvlfcTargetGroupStickinessConfig = lens _elasticLoadBalancingV2ListenerForwardConfigTargetGroupStickinessConfig (\s a -> s { _elasticLoadBalancingV2ListenerForwardConfigTargetGroupStickinessConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-forwardconfig.html#cfn-elasticloadbalancingv2-listener-forwardconfig-targetgroups
elbvlfcTargetGroups :: Lens' ElasticLoadBalancingV2ListenerForwardConfig (Maybe [ElasticLoadBalancingV2ListenerTargetGroupTuple])
elbvlfcTargetGroups = lens _elasticLoadBalancingV2ListenerForwardConfigTargetGroups (\s a -> s { _elasticLoadBalancingV2ListenerForwardConfigTargetGroups = a })
