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
  , _dLMLifecyclePolicyFastRestoreRuleCount :: Val Integer
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyFastRestoreRule where
  toJSON DLMLifecyclePolicyFastRestoreRule{..} =
    object $
    catMaybes
    [ fmap (("AvailabilityZones",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones
    , (Just . ("Count",) . toJSON) _dLMLifecyclePolicyFastRestoreRuleCount
    ]

-- | Constructor for 'DLMLifecyclePolicyFastRestoreRule' containing required
-- fields as arguments.
dlmLifecyclePolicyFastRestoreRule
  :: Val Integer -- ^ 'dlmlpfrrCount'
  -> DLMLifecyclePolicyFastRestoreRule
dlmLifecyclePolicyFastRestoreRule countarg =
  DLMLifecyclePolicyFastRestoreRule
  { _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones = Nothing
  , _dLMLifecyclePolicyFastRestoreRuleCount = countarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-availabilityzones
dlmlpfrrAvailabilityZones :: Lens' DLMLifecyclePolicyFastRestoreRule (Maybe (ValList Text))
dlmlpfrrAvailabilityZones = lens _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleAvailabilityZones = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-fastrestorerule.html#cfn-dlm-lifecyclepolicy-fastrestorerule-count
dlmlpfrrCount :: Lens' DLMLifecyclePolicyFastRestoreRule (Val Integer)
dlmlpfrrCount = lens _dLMLifecyclePolicyFastRestoreRuleCount (\s a -> s { _dLMLifecyclePolicyFastRestoreRuleCount = a })
