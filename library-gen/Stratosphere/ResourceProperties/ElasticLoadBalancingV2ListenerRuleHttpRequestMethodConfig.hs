{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig. See
-- 'elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig =
  ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
  { _elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfigValues :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig{..} =
    object $
    catMaybes
    [ fmap (("Values",) . toJSON) _elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfigValues
    ]

-- | Constructor for
-- 'ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
  :: ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig  =
  ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig
  { _elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfigValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-httprequestmethodconfig.html#cfn-elasticloadbalancingv2-listenerrule-httprequestmethodconfig-values
elbvlrhrmcValues :: Lens' ElasticLoadBalancingV2ListenerRuleHttpRequestMethodConfig (Maybe (ValList Text))
elbvlrhrmcValues = lens _elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfigValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleHttpRequestMethodConfigValues = a })
