{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html

module Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingRule where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingAction
import Stratosphere.ResourceProperties.EMRInstanceGroupConfigScalingTrigger

-- | Full data type definition for EMRInstanceGroupConfigScalingRule. See
-- 'emrInstanceGroupConfigScalingRule' for a more convenient constructor.
data EMRInstanceGroupConfigScalingRule =
  EMRInstanceGroupConfigScalingRule
  { _eMRInstanceGroupConfigScalingRuleAction :: EMRInstanceGroupConfigScalingAction
  , _eMRInstanceGroupConfigScalingRuleDescription :: Maybe (Val Text)
  , _eMRInstanceGroupConfigScalingRuleName :: Val Text
  , _eMRInstanceGroupConfigScalingRuleTrigger :: EMRInstanceGroupConfigScalingTrigger
  } deriving (Show, Eq)

instance ToJSON EMRInstanceGroupConfigScalingRule where
  toJSON EMRInstanceGroupConfigScalingRule{..} =
    object $
    catMaybes
    [ Just ("Action" .= _eMRInstanceGroupConfigScalingRuleAction)
    , ("Description" .=) <$> _eMRInstanceGroupConfigScalingRuleDescription
    , Just ("Name" .= _eMRInstanceGroupConfigScalingRuleName)
    , Just ("Trigger" .= _eMRInstanceGroupConfigScalingRuleTrigger)
    ]

instance FromJSON EMRInstanceGroupConfigScalingRule where
  parseJSON (Object obj) =
    EMRInstanceGroupConfigScalingRule <$>
      obj .: "Action" <*>
      obj .:? "Description" <*>
      obj .: "Name" <*>
      obj .: "Trigger"
  parseJSON _ = mempty

-- | Constructor for 'EMRInstanceGroupConfigScalingRule' containing required
-- fields as arguments.
emrInstanceGroupConfigScalingRule
  :: EMRInstanceGroupConfigScalingAction -- ^ 'emrigcsrAction'
  -> Val Text -- ^ 'emrigcsrName'
  -> EMRInstanceGroupConfigScalingTrigger -- ^ 'emrigcsrTrigger'
  -> EMRInstanceGroupConfigScalingRule
emrInstanceGroupConfigScalingRule actionarg namearg triggerarg =
  EMRInstanceGroupConfigScalingRule
  { _eMRInstanceGroupConfigScalingRuleAction = actionarg
  , _eMRInstanceGroupConfigScalingRuleDescription = Nothing
  , _eMRInstanceGroupConfigScalingRuleName = namearg
  , _eMRInstanceGroupConfigScalingRuleTrigger = triggerarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-action
emrigcsrAction :: Lens' EMRInstanceGroupConfigScalingRule EMRInstanceGroupConfigScalingAction
emrigcsrAction = lens _eMRInstanceGroupConfigScalingRuleAction (\s a -> s { _eMRInstanceGroupConfigScalingRuleAction = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-description
emrigcsrDescription :: Lens' EMRInstanceGroupConfigScalingRule (Maybe (Val Text))
emrigcsrDescription = lens _eMRInstanceGroupConfigScalingRuleDescription (\s a -> s { _eMRInstanceGroupConfigScalingRuleDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-name
emrigcsrName :: Lens' EMRInstanceGroupConfigScalingRule (Val Text)
emrigcsrName = lens _eMRInstanceGroupConfigScalingRuleName (\s a -> s { _eMRInstanceGroupConfigScalingRuleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancegroupconfig-scalingrule.html#cfn-elasticmapreduce-instancegroupconfig-scalingrule-trigger
emrigcsrTrigger :: Lens' EMRInstanceGroupConfigScalingRule EMRInstanceGroupConfigScalingTrigger
emrigcsrTrigger = lens _eMRInstanceGroupConfigScalingRuleTrigger (\s a -> s { _eMRInstanceGroupConfigScalingRuleTrigger = a })
