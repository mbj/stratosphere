{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyCrossRegionCopyRetainRule where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- DLMLifecyclePolicyCrossRegionCopyRetainRule. See
-- 'dlmLifecyclePolicyCrossRegionCopyRetainRule' for a more convenient
-- constructor.
data DLMLifecyclePolicyCrossRegionCopyRetainRule =
  DLMLifecyclePolicyCrossRegionCopyRetainRule
  { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval :: Maybe (Val Integer)
  , _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyCrossRegionCopyRetainRule where
  toJSON DLMLifecyclePolicyCrossRegionCopyRetainRule{..} =
    object $
    catMaybes
    [ fmap (("Interval",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval
    , fmap (("IntervalUnit",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit
    ]

-- | Constructor for 'DLMLifecyclePolicyCrossRegionCopyRetainRule' containing
-- required fields as arguments.
dlmLifecyclePolicyCrossRegionCopyRetainRule
  :: DLMLifecyclePolicyCrossRegionCopyRetainRule
dlmLifecyclePolicyCrossRegionCopyRetainRule  =
  DLMLifecyclePolicyCrossRegionCopyRetainRule
  { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval = Nothing
  , _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-interval
dlmlpcrcrrInterval :: Lens' DLMLifecyclePolicyCrossRegionCopyRetainRule (Maybe (Val Integer))
dlmlpcrcrrInterval = lens _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRetainRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyretainrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyretainrule-intervalunit
dlmlpcrcrrIntervalUnit :: Lens' DLMLifecyclePolicyCrossRegionCopyRetainRule (Maybe (Val Text))
dlmlpcrcrrIntervalUnit = lens _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRetainRuleIntervalUnit = a })
