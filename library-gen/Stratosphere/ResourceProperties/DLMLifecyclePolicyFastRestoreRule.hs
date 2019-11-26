{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyFastRestoreRule where

import Stratosphere.ResourceImports


-- | Full data type definition for DLMLifecyclePolicyFastRestoreRule. See
-- 'dlmLifecyclePolicyFastRestoreRule' for a more convenient constructor.
data DLMLifecyclePolicyFastRestoreRule =
  DLMLifecyclePolicyFastRestoreRule
  { _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones :: Maybe (ValList Text)
  , _dLMLifecyclePolicyFastRestoreRuleCount :: Maybe (Val Integer)
  , _dLMLifecyclePolicyFastRestoreRuleInterval :: Maybe (Val Integer)
  , _dLMLifecyclePolicyFastRestoreRuleIntervalUnit :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyFastRestoreRule where
  toJSON DLMLifecyclePolicyFastRestoreRule{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZones",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones
    , fmap (("Count",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleCount
    , fmap (("Interval",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleInterval
    , fmap (("IntervalUnit",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleIntervalUnit
    ]

-- | Constructor for 'DLMLifecyclePolicyFastRestoreRule' containing required
-- fields as arguments.
dlmLifecyclePolicyFastRestoreRule
  :: DLMLifecyclePolicyFastRestoreRule
dlmLifecyclePolicyFastRestoreRule  =
  DLMLifecyclePolicyFastRestoreRule
  { _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones = Nothing
  , _dLMLifecyclePolicyFastRestoreRuleCount = Nothing
  , _dLMLifecyclePolicyFastRestoreRuleInterval = Nothing
  , _dLMLifecyclePolicyFastRestoreRuleIntervalUnit = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-availabilityzones
dlmlpfrrAvailabilityZones :: Lens' DLMLifecyclePolicyFastRestoreRule (Maybe (ValList Text))
dlmlpfrrAvailabilityZones = lens _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-count
dlmlpfrrCount :: Lens' DLMLifecyclePolicyFastRestoreRule (Maybe (Val Integer))
dlmlpfrrCount = lens _dLMLifecyclePolicyFastRestoreRuleCount (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-interval
dlmlpfrrInterval :: Lens' DLMLifecyclePolicyFastRestoreRule (Maybe (Val Integer))
dlmlpfrrInterval = lens _dLMLifecyclePolicyFastRestoreRuleInterval (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleInterval = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-intervalunit
dlmlpfrrIntervalUnit :: Lens' DLMLifecyclePolicyFastRestoreRule (Maybe (Val Text))
dlmlpfrrIntervalUnit = lens _dLMLifecyclePolicyFastRestoreRuleIntervalUnit (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleIntervalUnit = a })
