
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-stoppingcondition.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleStoppingCondition where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerMonitoringScheduleStoppingCondition. See
-- 'sageMakerMonitoringScheduleStoppingCondition' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleStoppingCondition =
  SageMakerMonitoringScheduleStoppingCondition
  { _sageMakerMonitoringScheduleStoppingConditionMaxRuntimeInSeconds :: Val Integer
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleStoppingCondition where
  toJSON SageMakerMonitoringScheduleStoppingCondition{..} =
    object $
    catMaybes
    [ (Just . ("MaxRuntimeInSeconds",) . toJSON) _sageMakerMonitoringScheduleStoppingConditionMaxRuntimeInSeconds
    ]

-- | Constructor for 'SageMakerMonitoringScheduleStoppingCondition' containing
-- required fields as arguments.
sageMakerMonitoringScheduleStoppingCondition
  :: Val Integer -- ^ 'smmsscMaxRuntimeInSeconds'
  -> SageMakerMonitoringScheduleStoppingCondition
sageMakerMonitoringScheduleStoppingCondition maxRuntimeInSecondsarg =
  SageMakerMonitoringScheduleStoppingCondition
  { _sageMakerMonitoringScheduleStoppingConditionMaxRuntimeInSeconds = maxRuntimeInSecondsarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-stoppingcondition.html#cfn-sagemaker-monitoringschedule-stoppingcondition-maxruntimeinseconds
smmsscMaxRuntimeInSeconds :: Lens' SageMakerMonitoringScheduleStoppingCondition (Val Integer)
smmsscMaxRuntimeInSeconds = lens _sageMakerMonitoringScheduleStoppingConditionMaxRuntimeInSeconds (\s a -> s { _sageMakerMonitoringScheduleStoppingConditionMaxRuntimeInSeconds = a })
