
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringAppSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringAppSpecification. See
-- 'sageMakerMonitoringScheduleMonitoringAppSpecification' for a more
-- convenient constructor.
data SageMakerMonitoringScheduleMonitoringAppSpecification =
  SageMakerMonitoringScheduleMonitoringAppSpecification
  { _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerArguments :: Maybe (ValList Text)
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerEntrypoint :: Maybe (ValList Text)
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationImageUri :: Val Text
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationPostAnalyticsProcessorSourceUri :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationRecordPreprocessorSourceUri :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringAppSpecification where
  toJSON SageMakerMonitoringScheduleMonitoringAppSpecification{..} =
    object $
    catMaybes
    [ fmap (("ContainerArguments",) . toJSON) _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerArguments
    , fmap (("ContainerEntrypoint",) . toJSON) _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerEntrypoint
    , (Just . ("ImageUri",) . toJSON) _sageMakerMonitoringScheduleMonitoringAppSpecificationImageUri
    , fmap (("PostAnalyticsProcessorSourceUri",) . toJSON) _sageMakerMonitoringScheduleMonitoringAppSpecificationPostAnalyticsProcessorSourceUri
    , fmap (("RecordPreprocessorSourceUri",) . toJSON) _sageMakerMonitoringScheduleMonitoringAppSpecificationRecordPreprocessorSourceUri
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringAppSpecification'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringAppSpecification
  :: Val Text -- ^ 'smmsmasImageUri'
  -> SageMakerMonitoringScheduleMonitoringAppSpecification
sageMakerMonitoringScheduleMonitoringAppSpecification imageUriarg =
  SageMakerMonitoringScheduleMonitoringAppSpecification
  { _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerArguments = Nothing
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerEntrypoint = Nothing
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationImageUri = imageUriarg
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationPostAnalyticsProcessorSourceUri = Nothing
  , _sageMakerMonitoringScheduleMonitoringAppSpecificationRecordPreprocessorSourceUri = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html#cfn-sagemaker-monitoringschedule-monitoringappspecification-containerarguments
smmsmasContainerArguments :: Lens' SageMakerMonitoringScheduleMonitoringAppSpecification (Maybe (ValList Text))
smmsmasContainerArguments = lens _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerArguments (\s a -> s { _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerArguments = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html#cfn-sagemaker-monitoringschedule-monitoringappspecification-containerentrypoint
smmsmasContainerEntrypoint :: Lens' SageMakerMonitoringScheduleMonitoringAppSpecification (Maybe (ValList Text))
smmsmasContainerEntrypoint = lens _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerEntrypoint (\s a -> s { _sageMakerMonitoringScheduleMonitoringAppSpecificationContainerEntrypoint = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html#cfn-sagemaker-monitoringschedule-monitoringappspecification-imageuri
smmsmasImageUri :: Lens' SageMakerMonitoringScheduleMonitoringAppSpecification (Val Text)
smmsmasImageUri = lens _sageMakerMonitoringScheduleMonitoringAppSpecificationImageUri (\s a -> s { _sageMakerMonitoringScheduleMonitoringAppSpecificationImageUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html#cfn-sagemaker-monitoringschedule-monitoringappspecification-postanalyticsprocessorsourceuri
smmsmasPostAnalyticsProcessorSourceUri :: Lens' SageMakerMonitoringScheduleMonitoringAppSpecification (Maybe (Val Text))
smmsmasPostAnalyticsProcessorSourceUri = lens _sageMakerMonitoringScheduleMonitoringAppSpecificationPostAnalyticsProcessorSourceUri (\s a -> s { _sageMakerMonitoringScheduleMonitoringAppSpecificationPostAnalyticsProcessorSourceUri = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringappspecification.html#cfn-sagemaker-monitoringschedule-monitoringappspecification-recordpreprocessorsourceuri
smmsmasRecordPreprocessorSourceUri :: Lens' SageMakerMonitoringScheduleMonitoringAppSpecification (Maybe (Val Text))
smmsmasRecordPreprocessorSourceUri = lens _sageMakerMonitoringScheduleMonitoringAppSpecificationRecordPreprocessorSourceUri (\s a -> s { _sageMakerMonitoringScheduleMonitoringAppSpecificationRecordPreprocessorSourceUri = a })
