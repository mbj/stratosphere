
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringScheduleConfig where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringJobDefinition
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleScheduleConfig

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringScheduleConfig. See
-- 'sageMakerMonitoringScheduleMonitoringScheduleConfig' for a more
-- convenient constructor.
data SageMakerMonitoringScheduleMonitoringScheduleConfig =
  SageMakerMonitoringScheduleMonitoringScheduleConfig
  { _sageMakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition :: SageMakerMonitoringScheduleMonitoringJobDefinition
  , _sageMakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig :: Maybe SageMakerMonitoringScheduleScheduleConfig
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringScheduleConfig where
  toJSON SageMakerMonitoringScheduleMonitoringScheduleConfig{..} =
    object $
    catMaybes
    [ (Just . ("MonitoringJobDefinition",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition
    , fmap (("ScheduleConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringScheduleConfig'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringScheduleConfig
  :: SageMakerMonitoringScheduleMonitoringJobDefinition -- ^ 'smmsmscMonitoringJobDefinition'
  -> SageMakerMonitoringScheduleMonitoringScheduleConfig
sageMakerMonitoringScheduleMonitoringScheduleConfig monitoringJobDefinitionarg =
  SageMakerMonitoringScheduleMonitoringScheduleConfig
  { _sageMakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition = monitoringJobDefinitionarg
  , _sageMakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-monitoringjobdefinition
smmsmscMonitoringJobDefinition :: Lens' SageMakerMonitoringScheduleMonitoringScheduleConfig SageMakerMonitoringScheduleMonitoringJobDefinition
smmsmscMonitoringJobDefinition = lens _sageMakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleConfigMonitoringJobDefinition = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringscheduleconfig.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig-scheduleconfig
smmsmscScheduleConfig :: Lens' SageMakerMonitoringScheduleMonitoringScheduleConfig (Maybe SageMakerMonitoringScheduleScheduleConfig)
smmsmscScheduleConfig = lens _sageMakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleConfigScheduleConfig = a })
