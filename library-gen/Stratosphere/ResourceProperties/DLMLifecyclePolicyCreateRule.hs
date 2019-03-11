{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyCreateRule where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyCreateRule. See
-- 'dlmLifecyclePolicyCreateRule' for a more convenient constructor.
data DLMLifecyclePolicyCreateRule =
  DLMLifecyclePolicyCreateRule
  { _dLMLifecyclePolicyCreateRuleInterval :: Val Integer
  , _dLMLifecyclePolicyCreateRuleIntervalUnit :: Val Text
  , _dLMLifecyclePolicyCreateRuleTimes :: Maybe (ValList Text)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyCreateRule where
  toJSON DLMLifecyclePolicyCreateRule{..} =
    object $
    catMaybes
    [ (Just . ("Interval",) . toJSON . fmap Integer') _dLMLifecyclePolicyCreateRuleInterval
    , (Just . ("IntervalUnit",) . toJSON) _dLMLifecyclePolicyCreateRuleIntervalUnit
    , fmap (("Times",) . toJSON) _dLMLifecyclePolicyCreateRuleTimes
    ]

-- | Constructor for 'DLMLifecyclePolicyCreateRule' containing required fields
-- as arguments.
dlmLifecyclePolicyCreateRule
  :: Val Integer -- ^ 'dlmlpcrInterval'
  -> Val Text -- ^ 'dlmlpcrIntervalUnit'
  -> DLMLifecyclePolicyCreateRule
dlmLifecyclePolicyCreateRule intervalarg intervalUnitarg =
  DLMLifecyclePolicyCreateRule
  { _dLMLifecyclePolicyCreateRuleInterval = intervalarg
  , _dLMLifecyclePolicyCreateRuleIntervalUnit = intervalUnitarg
  , _dLMLifecyclePolicyCreateRuleTimes = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-interval
dlmlpcrInterval :: Lens' DLMLifecyclePolicyCreateRule (Val Integer)
dlmlpcrInterval = lens _dLMLifecyclePolicyCreateRuleInterval (\s a -> s { _dLMLifecyclePolicyCreateRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-intervalunit
dlmlpcrIntervalUnit :: Lens' DLMLifecyclePolicyCreateRule (Val Text)
dlmlpcrIntervalUnit = lens _dLMLifecyclePolicyCreateRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyCreateRuleIntervalUnit = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-createrule.html#cfn-dlm-lifecyclepolicy-createrule-times
dlmlpcrTimes :: Lens' DLMLifecyclePolicyCreateRule (Maybe (ValList Text))
dlmlpcrTimes = lens _dLMLifecyclePolicyCreateRuleTimes (\s a -> s { _dLMLifecyclePolicyCreateRuleTimes = a })
