{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingV2ListenerRuleAction.
-- | See 'elasticLoadBalancingV2ListenerRuleAction' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerRuleAction =
  ElasticLoadBalancingV2ListenerRuleAction
  { _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn :: Val Text
  , _elasticLoadBalancingV2ListenerRuleActionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleAction where
  toJSON ElasticLoadBalancingV2ListenerRuleAction{..} =
    object
    [ "TargetGroupArn" .= _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn
    , "Type" .= _elasticLoadBalancingV2ListenerRuleActionType
    ]

instance FromJSON ElasticLoadBalancingV2ListenerRuleAction where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerRuleAction <$>
      obj .: "TargetGroupArn" <*>
      obj .: "Type"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleAction' containing
-- | required fields as arguments.
elasticLoadBalancingV2ListenerRuleAction
  :: Val Text -- ^ 'elbvlraTargetGroupArn'
  -> Val Text -- ^ 'elbvlraType'
  -> ElasticLoadBalancingV2ListenerRuleAction
elasticLoadBalancingV2ListenerRuleAction targetGroupArnarg typearg =
  ElasticLoadBalancingV2ListenerRuleAction
  { _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn = targetGroupArnarg
  , _elasticLoadBalancingV2ListenerRuleActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-targetgrouparn
elbvlraTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Val Text)
elbvlraTargetGroupArn = lens _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html#cfn-elasticloadbalancingv2-listener-actions-type
elbvlraType :: Lens' ElasticLoadBalancingV2ListenerRuleAction (Val Text)
elbvlraType = lens _elasticLoadBalancingV2ListenerRuleActionType (\s a -> s { _elasticLoadBalancingV2ListenerRuleActionType = a })
