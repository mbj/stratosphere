{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticloadbalancingv2-listenerrule-conditions.html

module Stratosphere.ResourceProperties.ElasticLoadBalancingV2ListenerRuleRuleCondition where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | ElasticLoadBalancingV2ListenerRuleRuleCondition. See
-- | 'elasticLoadBalancingV2ListenerRuleRuleCondition' for a more convenient
-- | constructor.
data ElasticLoadBalancingV2ListenerRuleRuleCondition =
  ElasticLoadBalancingV2ListenerRuleRuleCondition
  { _elasticLoadBalancingV2ListenerRuleRuleConditionField :: Maybe (Val Text)
  , _elasticLoadBalancingV2ListenerRuleRuleConditionValues :: Maybe [Val Text]
  } deriving (Show, Eq, Generic)

instance ToJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 48, omitNothingFields = True }

instance FromJSON ElasticLoadBalancingV2ListenerRuleRuleCondition where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 48, omitNothingFields = True }

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
