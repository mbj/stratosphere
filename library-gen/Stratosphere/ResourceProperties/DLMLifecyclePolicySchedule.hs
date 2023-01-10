
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html

module Stratosphere.ResourceProperties.DLMLifecyclePolicySchedule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.DLMLifecyclePolicyCreateRule
import Stratosphere.ResourceProperties.DLMLifecyclePolicyCrossRegionCopyRule
import Stratosphere.ResourceProperties.DLMLifecyclePolicyFastRestoreRule
import Stratosphere.ResourceProperties.DLMLifecyclePolicyRetainRule
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for DLMLifecyclePolicySchedule. See
-- 'dlmLifecyclePolicySchedule' for a more convenient constructor.
data DLMLifecyclePolicySchedule =
  DLMLifecyclePolicySchedule
  { _dLMLifecyclePolicyScheduleCopyTags :: Maybe (Val Bool)
  , _dLMLifecyclePolicyScheduleCreateRule :: Maybe DLMLifecyclePolicyCreateRule
  , _dLMLifecyclePolicyScheduleCrossRegionCopyRules :: Maybe [DLMLifecyclePolicyCrossRegionCopyRule]
  , _dLMLifecyclePolicyScheduleFastRestoreRule :: Maybe DLMLifecyclePolicyFastRestoreRule
  , _dLMLifecyclePolicyScheduleName :: Maybe (Val Text)
  , _dLMLifecyclePolicyScheduleRetainRule :: Maybe DLMLifecyclePolicyRetainRule
  , _dLMLifecyclePolicyScheduleTagsToAdd :: Maybe [Tag]
  , _dLMLifecyclePolicyScheduleVariableTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON DLMLifecyclePolicySchedule where
  toJSON DLMLifecyclePolicySchedule{..} =
    object $
    catMaybes
    [ fmap (("CopyTags",) . toJSON) _dLMLifecyclePolicyScheduleCopyTags
    , fmap (("CreateRule",) . toJSON) _dLMLifecyclePolicyScheduleCreateRule
    , fmap (("CrossRegionCopyRules",) . toJSON) _dLMLifecyclePolicyScheduleCrossRegionCopyRules
    , fmap (("FastRestoreRule",) . toJSON) _dLMLifecyclePolicyScheduleFastRestoreRule
    , fmap (("Name",) . toJSON) _dLMLifecyclePolicyScheduleName
    , fmap (("RetainRule",) . toJSON) _dLMLifecyclePolicyScheduleRetainRule
    , fmap (("TagsToAdd",) . toJSON) _dLMLifecyclePolicyScheduleTagsToAdd
    , fmap (("VariableTags",) . toJSON) _dLMLifecyclePolicyScheduleVariableTags
    ]

-- | Constructor for 'DLMLifecyclePolicySchedule' containing required fields
-- as arguments.
dlmLifecyclePolicySchedule
  :: DLMLifecyclePolicySchedule
dlmLifecyclePolicySchedule  =
  DLMLifecyclePolicySchedule
  { _dLMLifecyclePolicyScheduleCopyTags = Nothing
  , _dLMLifecyclePolicyScheduleCreateRule = Nothing
  , _dLMLifecyclePolicyScheduleCrossRegionCopyRules = Nothing
  , _dLMLifecyclePolicyScheduleFastRestoreRule = Nothing
  , _dLMLifecyclePolicyScheduleName = Nothing
  , _dLMLifecyclePolicyScheduleRetainRule = Nothing
  , _dLMLifecyclePolicyScheduleTagsToAdd = Nothing
  , _dLMLifecyclePolicyScheduleVariableTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-copytags
dlmlpsCopyTags :: Lens' DLMLifecyclePolicySchedule (Maybe (Val Bool))
dlmlpsCopyTags = lens _dLMLifecyclePolicyScheduleCopyTags (\s a -> s { _dLMLifecyclePolicyScheduleCopyTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-createrule
dlmlpsCreateRule :: Lens' DLMLifecyclePolicySchedule (Maybe DLMLifecyclePolicyCreateRule)
dlmlpsCreateRule = lens _dLMLifecyclePolicyScheduleCreateRule (\s a -> s { _dLMLifecyclePolicyScheduleCreateRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-crossregioncopyrules
dlmlpsCrossRegionCopyRules :: Lens' DLMLifecyclePolicySchedule (Maybe [DLMLifecyclePolicyCrossRegionCopyRule])
dlmlpsCrossRegionCopyRules = lens _dLMLifecyclePolicyScheduleCrossRegionCopyRules (\s a -> s { _dLMLifecyclePolicyScheduleCrossRegionCopyRules = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-fastrestorerule
dlmlpsFastRestoreRule :: Lens' DLMLifecyclePolicySchedule (Maybe DLMLifecyclePolicyFastRestoreRule)
dlmlpsFastRestoreRule = lens _dLMLifecyclePolicyScheduleFastRestoreRule (\s a -> s { _dLMLifecyclePolicyScheduleFastRestoreRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-name
dlmlpsName :: Lens' DLMLifecyclePolicySchedule (Maybe (Val Text))
dlmlpsName = lens _dLMLifecyclePolicyScheduleName (\s a -> s { _dLMLifecyclePolicyScheduleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-retainrule
dlmlpsRetainRule :: Lens' DLMLifecyclePolicySchedule (Maybe DLMLifecyclePolicyRetainRule)
dlmlpsRetainRule = lens _dLMLifecyclePolicyScheduleRetainRule (\s a -> s { _dLMLifecyclePolicyScheduleRetainRule = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-tagstoadd
dlmlpsTagsToAdd :: Lens' DLMLifecyclePolicySchedule (Maybe [Tag])
dlmlpsTagsToAdd = lens _dLMLifecyclePolicyScheduleTagsToAdd (\s a -> s { _dLMLifecyclePolicyScheduleTagsToAdd = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dlm-lifecyclepolicy-schedule.html#cfn-dlm-lifecyclepolicy-schedule-variabletags
dlmlpsVariableTags :: Lens' DLMLifecyclePolicySchedule (Maybe [Tag])
dlmlpsVariableTags = lens _dLMLifecyclePolicyScheduleVariableTags (\s a -> s { _dLMLifecyclePolicyScheduleVariableTags = a })
