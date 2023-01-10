
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-s3output.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleS3Output where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerMonitoringScheduleS3Output. See
-- 'sageMakerMonitoringScheduleS3Output' for a more convenient constructor.
data SageMakerMonitoringScheduleS3Output =
  SageMakerMonitoringScheduleS3Output
  { _sageMakerMonitoringScheduleS3OutputLocalPath :: Val Text
  , _sageMakerMonitoringScheduleS3OutputS3UploadMode :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleS3OutputS3Uri :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleS3Output where
  toJSON SageMakerMonitoringScheduleS3Output{..} =
    object $
    catMaybes
    [ (Just . ("LocalPath",) . toJSON) _sageMakerMonitoringScheduleS3OutputLocalPath
    , fmap (("S3UploadMode",) . toJSON) _sageMakerMonitoringScheduleS3OutputS3UploadMode
    , (Just . ("S3Uri",) . toJSON) _sageMakerMonitoringScheduleS3OutputS3Uri
    ]

-- | Constructor for 'SageMakerMonitoringScheduleS3Output' containing required
-- fields as arguments.
sageMakerMonitoringScheduleS3Output
  :: Val Text -- ^ 'smmssoLocalPath'
  -> Val Text -- ^ 'smmssoS3Uri'
  -> SageMakerMonitoringScheduleS3Output
sageMakerMonitoringScheduleS3Output localPatharg s3Uriarg =
  SageMakerMonitoringScheduleS3Output
  { _sageMakerMonitoringScheduleS3OutputLocalPath = localPatharg
  , _sageMakerMonitoringScheduleS3OutputS3UploadMode = Nothing
  , _sageMakerMonitoringScheduleS3OutputS3Uri = s3Uriarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-s3output.html#cfn-sagemaker-monitoringschedule-s3output-localpath
smmssoLocalPath :: Lens' SageMakerMonitoringScheduleS3Output (Val Text)
smmssoLocalPath = lens _sageMakerMonitoringScheduleS3OutputLocalPath (\s a -> s { _sageMakerMonitoringScheduleS3OutputLocalPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-s3output.html#cfn-sagemaker-monitoringschedule-s3output-s3uploadmode
smmssoS3UploadMode :: Lens' SageMakerMonitoringScheduleS3Output (Maybe (Val Text))
smmssoS3UploadMode = lens _sageMakerMonitoringScheduleS3OutputS3UploadMode (\s a -> s { _sageMakerMonitoringScheduleS3OutputS3UploadMode = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-s3output.html#cfn-sagemaker-monitoringschedule-s3output-s3uri
smmssoS3Uri :: Lens' SageMakerMonitoringScheduleS3Output (Val Text)
smmssoS3Uri = lens _sageMakerMonitoringScheduleS3OutputS3Uri (\s a -> s { _sageMakerMonitoringScheduleS3OutputS3Uri = a })
