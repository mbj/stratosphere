
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleBaselineConfig where

import Prelude
import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleConstraintsResource
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleStatisticsResource

-- | Full data type definition for SageMakerMonitoringScheduleBaselineConfig.
-- See 'sageMakerMonitoringScheduleBaselineConfig' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleBaselineConfig =
  SageMakerMonitoringScheduleBaselineConfig
  { _sageMakerMonitoringScheduleBaselineConfigConstraintsResource :: Maybe SageMakerMonitoringScheduleConstraintsResource
  , _sageMakerMonitoringScheduleBaselineConfigStatisticsResource :: Maybe SageMakerMonitoringScheduleStatisticsResource
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleBaselineConfig where
  toJSON SageMakerMonitoringScheduleBaselineConfig{..} =
    object $
    catMaybes
    [ fmap (("ConstraintsResource",) . toJSON) _sageMakerMonitoringScheduleBaselineConfigConstraintsResource
    , fmap (("StatisticsResource",) . toJSON) _sageMakerMonitoringScheduleBaselineConfigStatisticsResource
    ]

-- | Constructor for 'SageMakerMonitoringScheduleBaselineConfig' containing
-- required fields as arguments.
sageMakerMonitoringScheduleBaselineConfig
  :: SageMakerMonitoringScheduleBaselineConfig
sageMakerMonitoringScheduleBaselineConfig  =
  SageMakerMonitoringScheduleBaselineConfig
  { _sageMakerMonitoringScheduleBaselineConfigConstraintsResource = Nothing
  , _sageMakerMonitoringScheduleBaselineConfigStatisticsResource = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html#cfn-sagemaker-monitoringschedule-baselineconfig-constraintsresource
smmsbcConstraintsResource :: Lens' SageMakerMonitoringScheduleBaselineConfig (Maybe SageMakerMonitoringScheduleConstraintsResource)
smmsbcConstraintsResource = lens _sageMakerMonitoringScheduleBaselineConfigConstraintsResource (\s a -> s { _sageMakerMonitoringScheduleBaselineConfigConstraintsResource = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-baselineconfig.html#cfn-sagemaker-monitoringschedule-baselineconfig-statisticsresource
smmsbcStatisticsResource :: Lens' SageMakerMonitoringScheduleBaselineConfig (Maybe SageMakerMonitoringScheduleStatisticsResource)
smmsbcStatisticsResource = lens _sageMakerMonitoringScheduleBaselineConfigStatisticsResource (\s a -> s { _sageMakerMonitoringScheduleBaselineConfigStatisticsResource = a })
