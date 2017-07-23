{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerAction where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for ElasticLoadBalancingV2ListenerAction. See
-- 'elasticLoadBalancingV2ListenerAction' for a more convenient constructor.
data ElasticLoadBalancingV2ListenerAction =
  ElasticLoadBalancingV2ListenerAction
  { _elasticLoadBalancingV2ListenerActionTargetGroupArn :: Val Text
  , _elasticLoadBalancingV2ListenerActionType :: Val Text
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerAction where
  toJSON ElasticLoadBalancingV2ListenerAction{..} =
    object $
    catMaybes
    [ (Just . ("TargetGroupArn",) . toJSON) _elasticLoadBalancingV2ListenerActionTargetGroupArn
    , (Just . ("Type",) . toJSON) _elasticLoadBalancingV2ListenerActionType
    ]

instance FromJSON ElasticLoadBalancingV2ListenerAction where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerAction <$>
      (obj .: "TargetGroupArn") <*>
      (obj .: "Type")
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerAction' containing
-- required fields as arguments.
elasticLoadBalancingV2ListenerAction
  :: Val Text -- ^ 'elbvlaTargetGroupArn'
  -> Val Text -- ^ 'elbvlaType'
  -> ElasticLoadBalancingV2ListenerAction
elasticLoadBalancingV2ListenerAction targetGroupArnarg typearg =
  ElasticLoadBalancingV2ListenerAction
  { _elasticLoadBalancingV2ListenerActionTargetGroupArn = targetGroupArnarg
  , _elasticLoadBalancingV2ListenerActionType = typearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-targetgrouparn
elbvlaTargetGroupArn :: Lens' ElasticLoadBalancingV2ListenerAction (Val Text)
elbvlaTargetGroupArn = lens _elasticLoadBalancingV2ListenerActionTargetGroupArn (\s a -> s { _elasticLoadBalancingV2ListenerActionTargetGroupArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listener-defaultactions.html#cfn-elasticloadbalancingv2-listener-defaultactions-type
elbvlaType :: Lens' ElasticLoadBalancingV2ListenerAction (Val Text)
elbvlaType = lens _elasticLoadBalancingV2ListenerActionType (\s a -> s { _elasticLoadBalancingV2ListenerActionType = a })
