
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-cluster-scalingrule.html

module Stratosphere.ResourceProperties.EMRClusterScalingRule where

import Prelude
import Stratosphere.ResourceImports
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
    [ (Just . ("Action",) . toJSON) _eMRClusterScalingRuleAction
    , fmap (("Description",) . toJSON) _eMRClusterScalingRuleDescription
    , (Just . ("Name",) . toJSON) _eMRClusterScalingRuleName
    , (Just . ("Trigger",) . toJSON) _eMRClusterScalingRuleTrigger
    ]

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
