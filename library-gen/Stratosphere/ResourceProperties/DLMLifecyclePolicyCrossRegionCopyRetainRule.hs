
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyCrossRegionCopyRetainRule where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- DLMLifecyclePolicyCrossRegionCopyRetainRule. See
-- 'dlmLifecyclePolicyCrossRegionCopyRetainRule' for a more convenient
-- constructor.
data DLMLifecyclePolicyCrossRegionCopyRetainRule =
  DLMLifecyclePolicyCrossRegionCopyRetainRule
  { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval :: Val Integer
  , _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit :: Val Text
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyCrossRegionCopyRetainRule where
  toJSON DLMLifecyclePolicyCrossRegionCopyRetainRule{..} =
    object $
    catMaybes
    [ (Just . ("Interval",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval
    , (Just . ("IntervalUnit",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit
    ]

-- | Constructor for 'DLMLifecyclePolicyCrossRegionCopyRetainRule' containing
-- required fields as arguments.
dlmLifecyclePolicyCrossRegionCopyRetainRule
  :: Val Integer -- ^ 'dlmlpcrcrrInterval'
  -> Val Text -- ^ 'dlmlpcrcrrIntervalUnit'
  -> DLMLifecyclePolicyCrossRegionCopyRetainRule
dlmLifecyclePolicyCrossRegionCopyRetainRule intervalarg intervalUnitarg =
  DLMLifecyclePolicyCrossRegionCopyRetainRule
  { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval = intervalarg
  , _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit = intervalUnitarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-interval
dlmlpcrcrrInterval :: Lens' DLMLifecyclePolicyCrossRegionCopyRetainRule (Val Integer)
dlmlpcrcrrInterval = lens _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-intervalunit
dlmlpcrcrrIntervalUnit :: Lens' DLMLifecyclePolicyCrossRegionCopyRetainRule (Val Text)
dlmlpcrcrrIntervalUnit = lens _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit = a })
