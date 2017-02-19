{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRuleCondition where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingV2ListenerRuleRuleCondition. See
-- | 'elasticLoadBalancingV2ListenerRuleRuleCondition' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerRuleRuleCondition =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues :: Maybe [Val Text]
  } deriving (Show, Eq)

instance ToJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  toJSON ElasticLoadBalancingV2ListenerRuleRuleCondition{..} =
    object $
    catMaybes
    [ ("Field" .=) <$> _elasticLoadBalancingV2ListenerRuleRuleConditionField
    , ("Values" .=) <$> _elasticLoadBalancingV2ListenerRuleRuleConditionValues
    ]

instance FromJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  parseJSON (Object obj) =
    ElasticLoadBalancingV2ListenerRuleRuleCondition <$>
      obj .:? "Field" <*>
      obj .:? "Values"
  parseJSON _ = mempty

-- | Constructor for 'ElasticLoadBalancingV2ListenerRuleRuleCondition'
-- | containing required fields as arguments.
elasticLoadBalancingV2ListenerRuleRuleCondition
  :: ElasticLoadBalancingV2ListenerRuleRuleCondition
elasticLoadBalancingV2ListenerRuleRuleCondition  =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField = Nothing
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-field
elbvlrrcField :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe (Val Text))
elbvlrrcField = lens _elasticLoadBalancingV2ListenerRuleRuleConditionField (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionField = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html#cfn-elasticloadbalancingv2-listenerrule-conditions-values
elbvlrrcValues :: Lens' ElasticLoadBalancingV2ListenerRuleRuleCondition (Maybe [Val Text])
elbvlrrcValues = lens _elasticLoadBalancingV2ListenerRuleRuleConditionValues (\s a -> s { _elasticLoadBalancingV2ListenerRuleRuleConditionValues = a })
