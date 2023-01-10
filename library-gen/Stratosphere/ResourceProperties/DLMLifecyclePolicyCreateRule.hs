
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyCreateRule where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyCreateRule. See
-- 'dlmLifecyclePolicyCreateRule' for a more convenient constructor.
data DLMLifecyclePolicyCreateRule =
  DLMLifecyclePolicyCreateRule
  { _dLMLifecyclePolicyCreateRuleCronExpression :: Maybe (Val Text)
  , _dLMLifecyclePolicyCreateRuleInterval :: Maybe (Val Integer)
  , _dLMLifecyclePolicyCreateRuleIntervalUnit :: Maybe (Val Text)
  , _dLMLifecyclePolicyCreateRuleTimes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyCreateRule where
  toJSON DLMLifecyclePolicyCreateRule{..} =
    object $
    catMaybes
    [ fmap (("CronExpression",) . toJSON) _dLMLifecyclePolicyCreateRuleCronExpression
    , fmap (("Interval",) . toJSON) _dLMLifecyclePolicyCreateRuleInterval
    , fmap (("IntervalUnit",) . toJSON) _dLMLifecyclePolicyCreateRuleIntervalUnit
    , fmap (("Times",) . toJSON) _dLMLifecyclePolicyCreateRuleTimes
    ]

-- | Constructor for 'DLMLifecyclePolicyCreateRule' containing required fields
-- as arguments.
dlmLifecyclePolicyCreateRule
  :: DLMLifecyclePolicyCreateRule
dlmLifecyclePolicyCreateRule  =
  DLMLifecyclePolicyCreateRule
  { _dLMLifecyclePolicyCreateRuleCronExpression = Nothing
  , _dLMLifecyclePolicyCreateRuleInterval = Nothing
  , _dLMLifecyclePolicyCreateRuleIntervalUnit = Nothing
  , _dLMLifecyclePolicyCreateRuleTimes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-cronexpression
dlmlpcrCronExpression :: Lens' DLMLifecyclePolicyCreateRule (Maybe (Val Text))
dlmlpcrCronExpression = lens _dLMLifecyclePolicyCreateRuleCronExpression (\s a -> s { _dLMLifecyclePolicyCreateRuleCronExpression = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-interval
dlmlpcrInterval :: Lens' DLMLifecyclePolicyCreateRule (Maybe (Val Integer))
dlmlpcrInterval = lens _dLMLifecyclePolicyCreateRuleInterval (\s a -> s { _dLMLifecyclePolicyCreateRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-intervalunit
dlmlpcrIntervalUnit :: Lens' DLMLifecyclePolicyCreateRule (Maybe (Val Text))
dlmlpcrIntervalUnit = lens _dLMLifecyclePolicyCreateRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyCreateRuleIntervalUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-times
dlmlpcrTimes :: Lens' DLMLifecyclePolicyCreateRule (Maybe (ValList Text))
dlmlpcrTimes = lens _dLMLifecyclePolicyCreateRuleTimes (\s a -> s { _dLMLifecyclePolicyCreateRuleTimes = a })
