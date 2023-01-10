
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyRetainRule where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyRetainRule. See
-- 'dlmLifecyclePolicyRetainRule' for a more convenient constructor.
data DLMLifecyclePolicyRetainRule =
  DLMLifecyclePolicyRetainRule
  { _dLMLifecyclePolicyRetainRuleCount :: Maybe (Val Integer)
  , _dLMLifecyclePolicyRetainRuleInterval :: Maybe (Val Integer)
  , _dLMLifecyclePolicyRetainRuleIntervalUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyRetainRule where
  toJSON DLMLifecyclePolicyRetainRule{..} =
    object $
    catMaybes
    [ fmap (("Count",) . toJSON) _dLMLifecyclePolicyRetainRuleCount
    , fmap (("Interval",) . toJSON) _dLMLifecyclePolicyRetainRuleInterval
    , fmap (("IntervalUnit",) . toJSON) _dLMLifecyclePolicyRetainRuleIntervalUnit
    ]

-- | Constructor for 'DLMLifecyclePolicyRetainRule' containing required fields
-- as arguments.
dlmLifecyclePolicyRetainRule
  :: DLMLifecyclePolicyRetainRule
dlmLifecyclePolicyRetainRule  =
  DLMLifecyclePolicyRetainRule
  { _dLMLifecyclePolicyRetainRuleCount = Nothing
  , _dLMLifecyclePolicyRetainRuleInterval = Nothing
  , _dLMLifecyclePolicyRetainRuleIntervalUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-count
dlmlprrCount :: Lens' DLMLifecyclePolicyRetainRule (Maybe (Val Integer))
dlmlprrCount = lens _dLMLifecyclePolicyRetainRuleCount (\s a -> s { _dLMLifecyclePolicyRetainRuleCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-interval
dlmlprrInterval :: Lens' DLMLifecyclePolicyRetainRule (Maybe (Val Integer))
dlmlprrInterval = lens _dLMLifecyclePolicyRetainRuleInterval (\s a -> s { _dLMLifecyclePolicyRetainRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-intervalunit
dlmlprrIntervalUnit :: Lens' DLMLifecyclePolicyRetainRule (Maybe (Val Text))
dlmlprrIntervalUnit = lens _dLMLifecyclePolicyRetainRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyRetainRuleIntervalUnit = a })
