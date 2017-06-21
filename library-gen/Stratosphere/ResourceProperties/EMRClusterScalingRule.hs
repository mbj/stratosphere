{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html

module Stratosphere.ResourceProperties.EMRClusterScalingRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRClusterScalingAction
import Stratosphere.ResourceProperties.EMRClusterScalingTrigger

-- | Full data type definition for EMRClusterScalingRule. See
-- 'emrClusterScalingRule' for a more convenient constructor.
data EMRClusterScalingRule =
  EMRClusterScalingRule
  { _eMRClusterScalingRuleAction :: EMRClusterScalingAction
  , _eMRClusterScalingRuleDescription :: Maybe (Val Text)
  , _eMRClusterScalingRuleName :: Val Text
  , _eMRClusterScalingRuleTrigger :: EMRClusterScalingTrigger
  } deriving (Show, Eq)

instance ToJSON EMRClusterScalingRule where
  toJSON EMRClusterScalingRule{..} =
    object $
    catMaybes
    [ Just ("Action" .= _eMRClusterScalingRuleAction)
    , ("Description" .=) <$> _eMRClusterScalingRuleDescription
    , Just ("Name" .= _eMRClusterScalingRuleName)
    , Just ("Trigger" .= _eMRClusterScalingRuleTrigger)
    ]

instance FromJSON EMRClusterScalingRule where
  parseJSON (Object obj) =
    EMRClusterScalingRule <$>
      obj .: "Action" <*>
      obj .:? "Description" <*>
      obj .: "Name" <*>
      obj .: "Trigger"
  parseJSON _ = mempty

-- | Constructor for 'EMRClusterScalingRule' containing required fields as
-- arguments.
emrClusterScalingRule
  :: EMRClusterScalingAction -- ^ 'emrcsrAction'
  -> Val Text -- ^ 'emrcsrName'
  -> EMRClusterScalingTrigger -- ^ 'emrcsrTrigger'
  -> EMRClusterScalingRule
emrClusterScalingRule actionarg namearg triggerarg =
  EMRClusterScalingRule
  { _eMRClusterScalingRuleAction = actionarg
  , _eMRClusterScalingRuleDescription = Nothing
  , _eMRClusterScalingRuleName = namearg
  , _eMRClusterScalingRuleTrigger = triggerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-action
emrcsrAction :: Lens' EMRClusterScalingRule EMRClusterScalingAction
emrcsrAction = lens _eMRClusterScalingRuleAction (\s a -> s { _eMRClusterScalingRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-description
emrcsrDescription :: Lens' EMRClusterScalingRule (Maybe (Val Text))
emrcsrDescription = lens _eMRClusterScalingRuleDescription (\s a -> s { _eMRClusterScalingRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-name
emrcsrName :: Lens' EMRClusterScalingRule (Val Text)
emrcsrName = lens _eMRClusterScalingRuleName (\s a -> s { _eMRClusterScalingRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html#cfn-elasticmapreduce-cluster-scalingrule-trigger
emrcsrTrigger :: Lens' EMRClusterScalingRule EMRClusterScalingTrigger
emrcsrTrigger = lens _eMRClusterScalingRuleTrigger (\s a -> s { _eMRClusterScalingRuleTrigger = a })
