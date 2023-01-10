
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig. See
-- 'elasticLoadBalancingV2ListenerTargetGroupStickinessConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig =
  ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig
  { _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigDurationSeconds :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig where
  toJSON ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig{..} =
    object $
    catMaybes
    [ fmap (("DurationSeconds",) . toJSON) _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigDurationSeconds
    , fmap (("Enabled",) . toJSON) _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigEnabled
    ]

-- | Constructor for
-- 'ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerTargetGroupStickinessConfig
  :: ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig
elasticLoadBalancingV2ListenerTargetGroupStickinessConfig  =
  ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig
  { _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigDurationSeconds = Nothing
  , _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listener-targetgroupstickinessconfig-durationseconds
elbvltgscDurationSeconds :: Lens' ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig (Maybe (Val Integer))
elbvltgscDurationSeconds = lens _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigDurationSeconds (\s a -> s { _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigDurationSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listener-targetgroupstickinessconfig-enabled
elbvltgscEnabled :: Lens' ElasticLoadBalancingV2ListenerTargetGroupStickinessConfig (Maybe (Val Bool))
elbvltgscEnabled = lens _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigEnabled (\s a -> s { _elasticLoadBalancingV2ListenerTargetGroupStickinessConfigEnabled = a })
