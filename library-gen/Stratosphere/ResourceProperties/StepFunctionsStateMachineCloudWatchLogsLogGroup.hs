
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html

module Stratosphere.ResourceProperties.StepFunctionsStateMachineCloudWatchLogsLogGroup where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- StepFunctionsStateMachineCloudWatchLogsLogGroup. See
-- 'stepFunctionsStateMachineCloudWatchLogsLogGroup' for a more convenient
-- constructor.
data StepFunctionsStateMachineCloudWatchLogsLogGroup =
  StepFunctionsStateMachineCloudWatchLogsLogGroup
  { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn :: Val Text
  } deriving (Show, Eq)

instance ToJSON StepFunctionsStateMachineCloudWatchLogsLogGroup where
  toJSON StepFunctionsStateMachineCloudWatchLogsLogGroup{..} =
    object $
    catMaybes
    [ (Just . ("LogGroupArn",) . toJSON) _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn
    ]

-- | Constructor for 'StepFunctionsStateMachineCloudWatchLogsLogGroup'
-- containing required fields as arguments.
stepFunctionsStateMachineCloudWatchLogsLogGroup
  :: Val Text -- ^ 'sfsmcwllgLogGroupArn'
  -> StepFunctionsStateMachineCloudWatchLogsLogGroup
stepFunctionsStateMachineCloudWatchLogsLogGroup logGroupArnarg =
  StepFunctionsStateMachineCloudWatchLogsLogGroup
  { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn = logGroupArnarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup.html#cfn-stepfunctions-statemachine-logdestination-cloudwatchlogsloggroup-loggrouparn
sfsmcwllgLogGroupArn :: Lens' StepFunctionsStateMachineCloudWatchLogsLogGroup (Val Text)
sfsmcwllgLogGroupArn = lens _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn (\s a -> s { _stepFunctionsStateMachineCloudWatchLogsLogGroupLogGroupArn = a })
