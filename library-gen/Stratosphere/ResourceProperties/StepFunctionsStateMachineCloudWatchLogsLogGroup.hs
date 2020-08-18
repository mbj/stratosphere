{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-cloudwatchlogsloggroup.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineCloudWatchLogsLogGroup where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- StepFunctionsStateMachineCloudWatchLogsLogGroup. See
-- 'stepFunctionsStateMachineCloudWatchLogsLogGroup' for a more convenient
-- constructor.
data StepFunctionsStateMachineCloudWatchLogsLogGroup =
  StepFunctionsStateMachineCloudWatchLogsLogGroup
  { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineCloudWatchLogsLogGroup where
  toJSON StepFunctionsStateMachineCloudWatchLogsLogGroup{..} =
    object $
    catMaybes
    [ fmap (("LogGroupArn",) . toJSON) _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn
    ]

-- | Constructor for 'StepFunctionsStateMachineCloudWatchLogsLogGroup'
-- containing required fields as arguments.
stepFunctionsStateMachineCloudWatchLogsLogGroup
  :: StepFunctionsStateMachineCloudWatchLogsLogGroup
stepFunctionsStateMachineCloudWatchLogsLogGroup  =
  StepFunctionsStateMachineCloudWatchLogsLogGroup
  { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-cloudwatchlogsloggroup.html#cfn-stepfunctions-statemachine-cloudwatchlogsloggroup-loggrouparn
sfsmcwllgLogGroupArn :: Lens' StepFunctionsStateMachineCloudWatchLogsLogGroup (Maybe (Val Text))
sfsmcwllgLogGroupArn = lens _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn (\s a -> s { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn = a })
