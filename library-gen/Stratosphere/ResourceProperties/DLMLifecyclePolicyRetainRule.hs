{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyRetainRule where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyRetainRule. See
-- 'dlmLifecyclePolicyRetainRule' for a more convenient constructor.
data DLMLifecyclePolicyRetainRule =
  DLMLifecyclePolicyRetainRule
  { _dLMLifecyclePolicyRetainRuleCount :: Val Integer
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyRetainRule where
  toJSON DLMLifecyclePolicyRetainRule{..} =
    object $
    catMaybes
    [ (Just . ("Count",) . toJSON . fmap Integer') _dLMLifecyclePolicyRetainRuleCount
    ]

-- | Constructor for 'DLMLifecyclePolicyRetainRule' containing required fields
-- as arguments.
dlmLifecyclePolicyRetainRule
  :: Val Integer -- ^ 'dlmlprrCount'
  -> DLMLifecyclePolicyRetainRule
dlmLifecyclePolicyRetainRule countarg =
  DLMLifecyclePolicyRetainRule
  { _dLMLifecyclePolicyRetainRuleCount = countarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-retainrule.html#cfn-dlm-lifecyclepolicy-retainrule-count
dlmlprrCount :: Lens' DLMLifecyclePolicyRetainRule (Val Integer)
dlmlprrCount = lens _dLMLifecyclePolicyRetainRuleCount (\s a -> s { _dLMLifecyclePolicyRetainRuleCount = a })
