
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig. See
-- 'elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig' for a
-- more convenient constructor.
data ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig =
  ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
  { _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigDurationSeconds :: Maybe (Val Integer)
  , _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigEnabled :: Maybe (Val Bool)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig{..} =
    object $
    catMaybes
    [ fmap (("DurationSeconds",) . toJSON) _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigDurationSeconds
    , fmap (("Enabled",) . toJSON) _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigEnabled
    ]

-- | Constructor for
-- 'ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
  :: ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig  =
  ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig
  { _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigDurationSeconds = Nothing
  , _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigEnabled = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig-durationseconds
elbvlrtgscDurationSeconds :: Lens' ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig (Maybe (Val Integer))
elbvlrtgscDurationSeconds = lens _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigDurationSeconds (\s a -> s { _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigDurationSeconds = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig.html#cfn-elasticloadbalancingv2-listenerrule-targetgroupstickinessconfig-enabled
elbvlrtgscEnabled :: Lens' ElasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfig (Maybe (Val Bool))
elbvlrtgscEnabled = lens _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigEnabled (\s a -> s { _elasticLoadBalancingV2ListenerRuleTargetGroupStickinessConfigEnabled = a })
