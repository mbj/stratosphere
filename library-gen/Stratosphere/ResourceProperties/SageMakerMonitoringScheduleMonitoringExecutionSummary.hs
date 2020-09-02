{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html

module Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringExecutionSummary where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- SageMakerMonitoringScheduleMonitoringExecutionSummary. See
-- 'sageMakerMonitoringScheduleMonitoringExecutionSummary' for a more
-- convenient constructor.
data SageMakerMonitoringScheduleMonitoringExecutionSummary =
  SageMakerMonitoringScheduleMonitoringExecutionSummary
  { _sageMakerMonitoringScheduleMonitoringExecutionSummaryCreationTime :: Val Text
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryEndpointName :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryFailureReason :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryLastModifiedTime :: Val Text
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringExecutionStatus :: Val Text
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringScheduleName :: Val Text
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryProcessingJobArn :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryScheduledTime :: Val Text
  } deriving (Show, Eq)

instance ToJSON SageMakerMonitoringScheduleMonitoringExecutionSummary where
  toJSON SageMakerMonitoringScheduleMonitoringExecutionSummary{..} =
    object $
    catMaybes
    [ (Just . ("CreationTime",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryCreationTime
    , fmap (("EndpointName",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryEndpointName
    , fmap (("FailureReason",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryFailureReason
    , (Just . ("LastModifiedTime",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryLastModifiedTime
    , (Just . ("MonitoringExecutionStatus",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringExecutionStatus
    , (Just . ("MonitoringScheduleName",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringScheduleName
    , fmap (("ProcessingJobArn",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryProcessingJobArn
    , (Just . ("ScheduledTime",) . toJSON) _sageMakerMonitoringScheduleMonitoringExecutionSummaryScheduledTime
    ]

-- | Constructor for 'SageMakerMonitoringScheduleMonitoringExecutionSummary'
-- containing required fields as arguments.
sageMakerMonitoringScheduleMonitoringExecutionSummary
  :: Val Text -- ^ 'smmsmesCreationTime'
  -> Val Text -- ^ 'smmsmesLastModifiedTime'
  -> Val Text -- ^ 'smmsmesMonitoringExecutionStatus'
  -> Val Text -- ^ 'smmsmesMonitoringScheduleName'
  -> Val Text -- ^ 'smmsmesScheduledTime'
  -> SageMakerMonitoringScheduleMonitoringExecutionSummary
sageMakerMonitoringScheduleMonitoringExecutionSummary creationTimearg lastModifiedTimearg monitoringExecutionStatusarg monitoringScheduleNamearg scheduledTimearg =
  SageMakerMonitoringScheduleMonitoringExecutionSummary
  { _sageMakerMonitoringScheduleMonitoringExecutionSummaryCreationTime = creationTimearg
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryEndpointName = Nothing
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryFailureReason = Nothing
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryLastModifiedTime = lastModifiedTimearg
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringExecutionStatus = monitoringExecutionStatusarg
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringScheduleName = monitoringScheduleNamearg
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryProcessingJobArn = Nothing
  , _sageMakerMonitoringScheduleMonitoringExecutionSummaryScheduledTime = scheduledTimearg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-creationtime
smmsmesCreationTime :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Val Text)
smmsmesCreationTime = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryCreationTime (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryCreationTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-endpointname
smmsmesEndpointName :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Maybe (Val Text))
smmsmesEndpointName = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryEndpointName (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-failurereason
smmsmesFailureReason :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Maybe (Val Text))
smmsmesFailureReason = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryFailureReason (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryFailureReason = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-lastmodifiedtime
smmsmesLastModifiedTime :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Val Text)
smmsmesLastModifiedTime = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryLastModifiedTime (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryLastModifiedTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-monitoringexecutionstatus
smmsmesMonitoringExecutionStatus :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Val Text)
smmsmesMonitoringExecutionStatus = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringExecutionStatus (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringExecutionStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-monitoringschedulename
smmsmesMonitoringScheduleName :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Val Text)
smmsmesMonitoringScheduleName = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringScheduleName (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryMonitoringScheduleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-processingjobarn
smmsmesProcessingJobArn :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Maybe (Val Text))
smmsmesProcessingJobArn = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryProcessingJobArn (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryProcessingJobArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-scheduledtime
smmsmesScheduledTime :: Lens' SageMakerMonitoringScheduleMonitoringExecutionSummary (Val Text)
smmsmesScheduledTime = lens _sageMakerMonitoringScheduleMonitoringExecutionSummaryScheduledTime (\s a -> s { _sageMakerMonitoringScheduleMonitoringExecutionSummaryScheduledTime = a })
