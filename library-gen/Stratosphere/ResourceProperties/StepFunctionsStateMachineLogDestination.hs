{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineLogDestination where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.StepFunctionsStateMachineCloudWatchLogsLogGroup

-- | Full data type definition for StepFunctionsStateMachineLogDestination.
-- See 'stepFunctionsStateMachineLogDestination' for a more convenient
-- constructor.
data StepFunctionsStateMachineLogDestination =
  StepFunctionsStateMachineLogDestination
  { _stepFunctionsStateMachineLogDestinationCloudWatchLogsLogGroup :: Maybe StepFunctionsStateMachineCloudWatchLogsLogGroup
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineLogDestination where
  toJSON StepFunctionsStateMachineLogDestination{..} =
    object $
    catMaybes
    [ fmap (("CloudWatchLogsLogGroup",) . toJSON) _stepFunctionsStateMachineLogDestinationCloudWatchLogsLogGroup
    ]

-- | Constructor for 'StepFunctionsStateMachineLogDestination' containing
-- required fields as arguments.
stepFunctionsStateMachineLogDestination
  :: StepFunctionsStateMachineLogDestination
stepFunctionsStateMachineLogDestination  =
  StepFunctionsStateMachineLogDestination
  { _stepFunctionsStateMachineLogDestinationCloudWatchLogsLogGroup = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup
sfsmldCloudWatchLogsLogGroup :: Lens' StepFunctionsStateMachineLogDestination (Maybe StepFunctionsStateMachineCloudWatchLogsLogGroup)
sfsmldCloudWatchLogsLogGroup = lens _stepFunctionsStateMachineLogDestinationCloudWatchLogsLogGroup (\s a -> s { _stepFunctionsStateMachineLogDestinationCloudWatchLogsLogGroup = a })
