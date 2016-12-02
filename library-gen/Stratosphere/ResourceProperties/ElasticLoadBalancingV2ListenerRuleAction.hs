{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-actions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleAction where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingV2ListenerRuleAction.
-- | See 'elasticLoadBalancingV2ListenerRuleAction' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerRuleAction =
  ElasticLoadBalancingV2ListenerRuleAction
  { _elasticLoadBalancingV2ListenerRuleActionTargetGroupArn :: Val Text
  , _elasticLoadBalancingV2ListenerRuleActionType :: Val Text
  } deriving (Show, Generic)

instance ToJSON ElasticLoadBalancingV2ListenerRuleAction where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingV2ListenerRuleAction where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 41, omitNothingFields = True }

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
