
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleEndpointInput where

import Stratosphere.ResourceImports


-- | Full data type definition for SageMakerMonitoringScheduleEndpointInput.
-- See 'sageMakerMonitoringScheduleEndpointInput' for a more convenient
-- constructor.
data SageMakerMonitoringScheduleEndpointInput =
  SageMakerMonitoringScheduleEndpointInput
  { _sageMakerMonitoringScheduleEndpointInputEndpointName :: Val Text
  , _sageMakerMonitoringScheduleEndpointInputLocalPath :: Val Text
  , _sageMakerMonitoringScheduleEndpointInputS3DataDistributionType :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleEndpointInputS3InputMode :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleEndpointInput where
  toJSON SageMakerMonitoringScheduleEndpointInput{..} =
    object $
    catMaybes
    [ (Just . ("EndpointName",) . toJSON) _sageMakerMonitoringScheduleEndpointInputEndpointName
    , (Just . ("LocalPath",) . toJSON) _sageMakerMonitoringScheduleEndpointInputLocalPath
    , fmap (("S3DataDistributionType",) . toJSON) _sageMakerMonitoringScheduleEndpointInputS3DataDistributionType
    , fmap (("S3InputMode",) . toJSON) _sageMakerMonitoringScheduleEndpointInputS3InputMode
    ]

-- | Constructor for 'SageMakerMonitoringScheduleEndpointInput' containing
-- required fields as arguments.
sageMakerMonitoringScheduleEndpointInput
  :: Val Text -- ^ 'smmseiEndpointName'
  -> Val Text -- ^ 'smmseiLocalPath'
  -> SageMakerMonitoringScheduleEndpointInput
sageMakerMonitoringScheduleEndpointInput endpointNamearg localPatharg =
  SageMakerMonitoringScheduleEndpointInput
  { _sageMakerMonitoringScheduleEndpointInputEndpointName = endpointNamearg
  , _sageMakerMonitoringScheduleEndpointInputLocalPath = localPatharg
  , _sageMakerMonitoringScheduleEndpointInputS3DataDistributionType = Nothing
  , _sageMakerMonitoringScheduleEndpointInputS3InputMode = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-endpointname
smmseiEndpointName :: Lens' SageMakerMonitoringScheduleEndpointInput (Val Text)
smmseiEndpointName = lens _sageMakerMonitoringScheduleEndpointInputEndpointName (\s a -> s { _sageMakerMonitoringScheduleEndpointInputEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-localpath
smmseiLocalPath :: Lens' SageMakerMonitoringScheduleEndpointInput (Val Text)
smmseiLocalPath = lens _sageMakerMonitoringScheduleEndpointInputLocalPath (\s a -> s { _sageMakerMonitoringScheduleEndpointInputLocalPath = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-s3datadistributiontype
smmseiS3DataDistributionType :: Lens' SageMakerMonitoringScheduleEndpointInput (Maybe (Val Text))
smmseiS3DataDistributionType = lens _sageMakerMonitoringScheduleEndpointInputS3DataDistributionType (\s a -> s { _sageMakerMonitoringScheduleEndpointInputS3DataDistributionType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-endpointinput.html#cfn-sagemaker-monitoringschedule-endpointinput-s3inputmode
smmseiS3InputMode :: Lens' SageMakerMonitoringScheduleEndpointInput (Maybe (Val Text))
smmseiS3InputMode = lens _sageMakerMonitoringScheduleEndpointInputS3InputMode (\s a -> s { _sageMakerMonitoringScheduleEndpointInputS3InputMode = a })
