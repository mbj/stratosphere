
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html

module Stratosphere.ResourceProperties.StepFunctionsActivityTagsEntry where

import Stratosphere.ResourceImports


-- | Full data type definition for StepFunctionsActivityTagsEntry. See
-- 'stepFunctionsActivityTagsEntry' for a more convenient constructor.
data StepFunctionsActivityTagsEntry =
  StepFunctionsActivityTagsEntry
  { _stepFunctionsActivityTagsEntryKey :: Val Text
  , _stepFunctionsActivityTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON StepFunctionsActivityTagsEntry where
  toJSON StepFunctionsActivityTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _stepFunctionsActivityTagsEntryKey
    , (Just . ("Value",) . toJSON) _stepFunctionsActivityTagsEntryValue
    ]

-- | Constructor for 'StepFunctionsActivityTagsEntry' containing required
-- fields as arguments.
stepFunctionsActivityTagsEntry
  :: Val Text -- ^ 'sfateKey'
  -> Val Text -- ^ 'sfateValue'
  -> StepFunctionsActivityTagsEntry
stepFunctionsActivityTagsEntry keyarg valuearg =
  StepFunctionsActivityTagsEntry
  { _stepFunctionsActivityTagsEntryKey = keyarg
  , _stepFunctionsActivityTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html#cfn-stepfunctions-activity-tagsentry-key
sfateKey :: Lens' StepFunctionsActivityTagsEntry (Val Text)
sfateKey = lens _stepFunctionsActivityTagsEntryKey (\s a -> s { _stepFunctionsActivityTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-activity-tagsentry.html#cfn-stepfunctions-activity-tagsentry-value
sfateValue :: Lens' StepFunctionsActivityTagsEntry (Val Text)
sfateValue = lens _stepFunctionsActivityTagsEntryValue (\s a -> s { _stepFunctionsActivityTagsEntryValue = a })
