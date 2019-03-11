{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleFixedResponseConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- ElasticLoadBalancingV2ListenerRuleFixedResponseConfig. See
-- 'elasticLoadBalancingV2ListenerRuleFixedResponseConfig' for a more
-- convenient constructor.
data ElasticLoadBalancingV2ListenerRuleFixedResponseConfig =
  ElasticLoadBalancingV2ListenerRuleFixedResponseConfig
  { _elasticLoadBalancingV2ListenerRuleFixedResponseConfigContentType :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleFixedResponseConfigMessageBody :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleFixedResponseConfigStatusCode :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleFixedResponseConfig where
  toJSON ElasticLoadBalancingV2ListenerRuleFixedResponseConfig{..} =
    object $
    catMaybes
    [ fmap (("ContentType",) . toJSON) _elasticLoadBalancingV2ListenerRuleFixedResponseConfigContentType
    , fmap (("MessageBody",) . toJSON) _elasticLoadBalancingV2ListenerRuleFixedResponseConfigMessageBody
    , (Just . ("StatusCode",) . toJSON) _elasticLoadBalancingV2ListenerRuleFixedResponseConfigStatusCode
    ]

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleFixedResponseConfig'
-- containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleFixedResponseConfig
  :: Val Text -- ^ 'elbvlrfrcStatusCode'
  -> ElasticLoadBalancingV2ListenerRuleFixedResponseConfig
elasticLoadBalancingV2ListenerRuleFixedResponseConfig statusCodearg =
  ElasticLoadBalancingV2ListenerRuleFixedResponseConfig
  { _elasticLoadBalancingV2ListenerRuleFixedResponseConfigContentType = Nothing
  , _elasticLoadBalancingV2ListenerRuleFixedResponseConfigMessageBody = Nothing
  , _elasticLoadBalancingV2ListenerRuleFixedResponseConfigStatusCode = statusCodearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-contenttype
elbvlrfrcContentType :: Lens' ElasticLoadBalancingV2ListenerRuleFixedResponseConfig (Maybe (Val Text))
elbvlrfrcContentType = lens _elasticLoadBalancingV2ListenerRuleFixedResponseConfigContentType (\s a -> s { _elasticLoadBalancingV2ListenerRuleFixedResponseConfigContentType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-messagebody
elbvlrfrcMessageBody :: Lens' ElasticLoadBalancingV2ListenerRuleFixedResponseConfig (Maybe (Val Text))
elbvlrfrcMessageBody = lens _elasticLoadBalancingV2ListenerRuleFixedResponseConfigMessageBody (\s a -> s { _elasticLoadBalancingV2ListenerRuleFixedResponseConfigMessageBody = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-fixedresponseconfig.html#cfn-elasticloadbalancingv2-listenerrule-fixedresponseconfig-statuscode
elbvlrfrcStatusCode :: Lens' ElasticLoadBalancingV2ListenerRuleFixedResponseConfig (Val Text)
elbvlrfrcStatusCode = lens _elasticLoadBalancingV2ListenerRuleFixedResponseConfigStatusCode (\s a -> s { _elasticLoadBalancingV2ListenerRuleFixedResponseConfigStatusCode = a })
