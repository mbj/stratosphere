
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringoutput.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringOutput where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleS3Output

-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringOutput. See
-- 'sageMakerMonitoringScheduleMonitoringOutput' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleMonitoringOutput =
  SageMakerMonitoringScheduleMonitoringOutput
  { _sageMakerMonitoringScheduleMonitoringOutputS3Output :: SageMakerMonitoringScheduleS3Output
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringOutput where
  toJSON SageMakerMonitoringScheduleMonitoringOutput{..} =
    object $
    catMaybes
    [ (Just . ("S3Output",) . toJSON) _sageMakerMonitoringScheduleMonitoringOutputS3Output
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringOutput' containing
-- required fields as arguments.
sageMakerMonitoringScheduleMonitoringOutput
  :: SageMakerMonitoringScheduleS3Output -- ^ 'smmsmoS3Output'
  -> SageMakerMonitoringScheduleMonitoringOutput
sageMakerMonitoringScheduleMonitoringOutput s3Outputarg =
  SageMakerMonitoringScheduleMonitoringOutput
  { _sageMakerMonitoringScheduleMonitoringOutputS3Output = s3Outputarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringoutput.html#cfn-sagemaker-monitoringschedule-monitoringoutput-s3output
smmsmoS3Output :: Lens' SageMakerMonitoringScheduleMonitoringOutput SageMakerMonitoringScheduleS3Output
smmsmoS3Output = lens _sageMakerMonitoringScheduleMonitoringOutputS3Output (\s a -> s { _sageMakerMonitoringScheduleMonitoringOutputS3Output = a })
