{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHostHeaderConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleHostHeaderConfig. See
-- 'elasticLoadBalancingV2ListenerRuleHostHeaderConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleHostHeaderConfig =
  ElasticLoadBalancingV2ListenerRuleHostHeaderConfig
  { _elasticLoadBalancingV2ListenerRuleHostHeaderConfigValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleHostHeaderConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleHostHeaderConfig{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleHostHeaderConfigValues
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleHostHeaderConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleHostHeaderConfig
  :: ElasticLoadBalancingV2ListenerRuleHostHeaderConfig
elasticLoadBalancingV2ListenerRuleHostHeaderConfig  =
  ElasticLoadBalancingV2ListenerRuleHostHeaderConfig
  { _elasticLoadBalancingV2ListenerRuleHostHeaderConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-hostheaderconfig.html#cfn-elasticloadbalancingv2-listenerrule-hostheaderconfig-values
elbvlrhohcValues :: Lens' ElasticLoadBalancingV2ListenerRuleHostHeaderConfig (Maybe (ValList Text))
elbvlrhohcValues = lens _elasticLoadBalancingV2ListenerRuleHostHeaderConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleHostHeaderConfigValues = a })
