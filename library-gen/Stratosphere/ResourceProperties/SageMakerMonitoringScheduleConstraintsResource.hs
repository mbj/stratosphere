
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-constraintsresource.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleConstraintsResource where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerMonitoringScheduleConstraintsResource. See
-- 'sageMakerMonitoringScheduleConstraintsResource' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleConstraintsResource =
  SageMakerMonitoringScheduleConstraintsResource
  { _sageMakerMonitoringScheduleConstraintsResourceS3Uri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleConstraintsResource where
  toJSON SageMakerMonitoringScheduleConstraintsResource{..} =
    object $
    catMaybes
    [ fmap (("S3Uri",) . toJSON) _sageMakerMonitoringScheduleConstraintsResourceS3Uri
    ]

-- | Constructor for 'SageMakerMonitoringScheduleConstraintsResource'
-- containing required fields as arguments.
sageMakerMonitoringScheduleConstraintsResource
  :: SageMakerMonitoringScheduleConstraintsResource
sageMakerMonitoringScheduleConstraintsResource  =
  SageMakerMonitoringScheduleConstraintsResource
  { _sageMakerMonitoringScheduleConstraintsResourceS3Uri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-constraintsresource.html#cfn-sagemaker-monitoringschedule-constraintsresource-s3uri
smmscrS3Uri :: Lens' SageMakerMonitoringScheduleConstraintsResource (Maybe (Val Text))
smmscrS3Uri = lens _sageMakerMonitoringScheduleConstraintsResourceS3Uri (\s a -> s { _sageMakerMonitoringScheduleConstraintsResourceS3Uri = a })
