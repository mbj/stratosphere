{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicyCrossRegionCopyRule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DLMLifecyclePolicyCrossRegionCopyRetainRule

-- | Full data type definition for DLMLifecyclePolicyCrossRegionCopyRule. See
-- 'dlmLifecyclePolicyCrossRegionCopyRule' for a more convenient
-- constructor.
data DLMLifecyclePolicyCrossRegionCopyRule =
  DLMLifecyclePolicyCrossRegionCopyRule
  { _dLMLifecyclePolicyCrossRegionCopyRuleCmkArn :: Maybe (Val Text)
  , _dLMLifecyclePolicyCrossRegionCopyRuleCopyTags :: Maybe (Val Bool)
  , _dLMLifecyclePolicyCrossRegionCopyRuleEncrypted :: Val Bool
  , _dLMLifecyclePolicyCrossRegionCopyRuleRetainRule :: Maybe DLMLifecyclePolicyCrossRegionCopyRetainRule
  , _dLMLifecyclePolicyCrossRegionCopyRuleTargetRegion :: Val Text
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicyCrossRegionCopyRule where
  toJSON DLMLifecyclePolicyCrossRegionCopyRule{..} =
    object $
    catMaybes
    [ fmap (("CmkArn",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRuleCmkArn
    , fmap (("CopyTags",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRuleCopyTags
    , (Just . ("Encrypted",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRuleEncrypted
    , fmap (("RetainRule",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRuleRetainRule
    , (Just . ("TargetRegion",) . toJSON) _dLMLifecyclePolicyCrossRegionCopyRuleTargetRegion
    ]

-- | Constructor for 'DLMLifecyclePolicyCrossRegionCopyRule' containing
-- required fields as arguments.
dlmLifecyclePolicyCrossRegionCopyRule
  :: Val Bool -- ^ 'dlmlpcrcrEncrypted'
  -> Val Text -- ^ 'dlmlpcrcrTargetRegion'
  -> DLMLifecyclePolicyCrossRegionCopyRule
dlmLifecyclePolicyCrossRegionCopyRule encryptedarg targetRegionarg =
  DLMLifecyclePolicyCrossRegionCopyRule
  { _dLMLifecyclePolicyCrossRegionCopyRuleCmkArn = Nothing
  , _dLMLifecyclePolicyCrossRegionCopyRuleCopyTags = Nothing
  , _dLMLifecyclePolicyCrossRegionCopyRuleEncrypted = encryptedarg
  , _dLMLifecyclePolicyCrossRegionCopyRuleRetainRule = Nothing
  , _dLMLifecyclePolicyCrossRegionCopyRuleTargetRegion = targetRegionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyrule-cmkarn
dlmlpcrcrCmkArn :: Lens' DLMLifecyclePolicyCrossRegionCopyRule (Maybe (Val Text))
dlmlpcrcrCmkArn = lens _dLMLifecyclePolicyCrossRegionCopyRuleCmkArn (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRuleCmkArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyrule-copytags
dlmlpcrcrCopyTags :: Lens' DLMLifecyclePolicyCrossRegionCopyRule (Maybe (Val Bool))
dlmlpcrcrCopyTags = lens _dLMLifecyclePolicyCrossRegionCopyRuleCopyTags (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRuleCopyTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyrule-encrypted
dlmlpcrcrEncrypted :: Lens' DLMLifecyclePolicyCrossRegionCopyRule (Val Bool)
dlmlpcrcrEncrypted = lens _dLMLifecyclePolicyCrossRegionCopyRuleEncrypted (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRuleEncrypted = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyrule-retainrule
dlmlpcrcrRetainRule :: Lens' DLMLifecyclePolicyCrossRegionCopyRule (Maybe DLMLifecyclePolicyCrossRegionCopyRetainRule)
dlmlpcrcrRetainRule = lens _dLMLifecyclePolicyCrossRegionCopyRuleRetainRule (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRuleRetainRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-crossregioncopyrule.html#cfn-dlm-lifecyclepolicy-crossregioncopyrule-targetregion
dlmlpcrcrTargetRegion :: Lens' DLMLifecyclePolicyCrossRegionCopyRule (Val Text)
dlmlpcrcrTargetRegion = lens _dLMLifecyclePolicyCrossRegionCopyRuleTargetRegion (\s a -> s { _dLMLifecyclePolicyCrossRegionCopyRuleTargetRegion = a })
