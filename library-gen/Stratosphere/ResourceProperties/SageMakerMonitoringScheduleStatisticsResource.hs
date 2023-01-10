
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-statisticsresource.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleStatisticsResource where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerMonitoringScheduleStatisticsResource. See
-- 'sageMakerMonitoringScheduleStatisticsResource' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleStatisticsResource =
  SageMakerMonitoringScheduleStatisticsResource
  { _sageMakerMonitoringScheduleStatisticsResourceS3Uri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleStatisticsResource where
  toJSON SageMakerMonitoringScheduleStatisticsResource{..} =
    object $
    catMaybes
    [ fmap (("S3Uri",) . toJSON) _sageMakerMonitoringScheduleStatisticsResourceS3Uri
    ]

-- | Constructor for 'SageMakerMonitoringScheduleStatisticsResource'
-- containing required fields as arguments.
sageMakerMonitoringScheduleStatisticsResource
  :: SageMakerMonitoringScheduleStatisticsResource
sageMakerMonitoringScheduleStatisticsResource  =
  SageMakerMonitoringScheduleStatisticsResource
  { _sageMakerMonitoringScheduleStatisticsResourceS3Uri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-statisticsresource.html#cfn-sagemaker-monitoringschedule-statisticsresource-s3uri
smmssrS3Uri :: Lens' SageMakerMonitoringScheduleStatisticsResource (Maybe (Val Text))
smmssrS3Uri = lens _sageMakerMonitoringScheduleStatisticsResourceS3Uri (\s a -> s { _sageMakerMonitoringScheduleStatisticsResourceS3Uri = a })
