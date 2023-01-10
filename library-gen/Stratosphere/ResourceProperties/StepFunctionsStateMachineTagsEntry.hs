
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineTagsEntry where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for StepFunctionsStateMachineTagsEntry. See
-- 'stepFunctionsStateMachineTagsEntry' for a more convenient constructor.
data StepFunctionsStateMachineTagsEntry =
  StepFunctionsStateMachineTagsEntry
  { _stepFunctionsStateMachineTagsEntryKey :: Val Text
  , _stepFunctionsStateMachineTagsEntryValue :: Val Text
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineTagsEntry where
  toJSON StepFunctionsStateMachineTagsEntry{..} =
    object $
    catMaybes
    [ (Just . ("Key",) . toJSON) _stepFunctionsStateMachineTagsEntryKey
    , (Just . ("Value",) . toJSON) _stepFunctionsStateMachineTagsEntryValue
    ]

-- | Constructor for 'StepFunctionsStateMachineTagsEntry' containing required
-- fields as arguments.
stepFunctionsStateMachineTagsEntry
  :: Val Text -- ^ 'sfsmteKey'
  -> Val Text -- ^ 'sfsmteValue'
  -> StepFunctionsStateMachineTagsEntry
stepFunctionsStateMachineTagsEntry keyarg valuearg =
  StepFunctionsStateMachineTagsEntry
  { _stepFunctionsStateMachineTagsEntryKey = keyarg
  , _stepFunctionsStateMachineTagsEntryValue = valuearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html#cfn-stepfunctions-statemachine-tagsentry-key
sfsmteKey :: Lens' StepFunctionsStateMachineTagsEntry (Val Text)
sfsmteKey = lens _stepFunctionsStateMachineTagsEntryKey (\s a -> s { _stepFunctionsStateMachineTagsEntryKey = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-tagsentry.html#cfn-stepfunctions-statemachine-tagsentry-value
sfsmteValue :: Lens' StepFunctionsStateMachineTagsEntry (Val Text)
sfsmteValue = lens _stepFunctionsStateMachineTagsEntryValue (\s a -> s { _stepFunctionsStateMachineTagsEntryValue = a })
