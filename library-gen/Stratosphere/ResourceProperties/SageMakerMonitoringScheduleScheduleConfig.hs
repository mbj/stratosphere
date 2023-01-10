
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleScheduleConfig where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerMonitoringScheduleScheduleConfig.
-- See 'sageMakerMonitoringScheduleScheduleConfig' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleScheduleConfig =
  SageMakerMonitoringScheduleScheduleConfig
  { _sageMakerMonitoringScheduleScheduleConfigScheduleExpression :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleScheduleConfig where
  toJSON SageMakerMonitoringScheduleScheduleConfig{..} =
    object $
    catMaybes
    [ (Just . ("ScheduleExpression",) . toJSON) _sageMakerMonitoringScheduleScheduleConfigScheduleExpression
    ]

-- | Constructor for 'SageMakerMonitoringScheduleScheduleConfig' containing
-- required fields as arguments.
sageMakerMonitoringScheduleScheduleConfig
  :: Val Text -- ^ 'smmsscScheduleExpression'
  -> SageMakerMonitoringScheduleScheduleConfig
sageMakerMonitoringScheduleScheduleConfig scheduleExpressionarg =
  SageMakerMonitoringScheduleScheduleConfig
  { _sageMakerMonitoringScheduleScheduleConfigScheduleExpression = scheduleExpressionarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html#cfn-sagemaker-monitoringschedule-scheduleconfig-scheduleexpression
smmsscScheduleExpression :: Lens' SageMakerMonitoringScheduleScheduleConfig (Val Text)
smmsscScheduleExpression = lens _sageMakerMonitoringScheduleScheduleConfigScheduleExpression (\s a -> s { _sageMakerMonitoringScheduleScheduleConfigScheduleExpression = a })
