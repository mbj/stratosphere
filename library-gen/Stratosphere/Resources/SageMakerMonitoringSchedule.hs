{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html

module Stratosphere.Resources.SageMakerMonitoringSchedule where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringExecutionSummary
import Stratosphere.ResourceProperties.SageMakerMonitoringScheduleMonitoringScheduleConfig
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for SageMakerMonitoringSchedule. See
-- 'sageMakerMonitoringSchedule' for a more convenient constructor.
data SageMakerMonitoringSchedule =
  SageMakerMonitoringSchedule
  { _sageMakerMonitoringScheduleCreationTime :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleEndpointName :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleFailureReason :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleLastModifiedTime :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleLastMonitoringExecutionSummary :: Maybe SageMakerMonitoringScheduleMonitoringExecutionSummary
  , _sageMakerMonitoringScheduleMonitoringScheduleArn :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleMonitoringScheduleConfig :: SageMakerMonitoringScheduleMonitoringScheduleConfig
  , _sageMakerMonitoringScheduleMonitoringScheduleName :: Val Text
  , _sageMakerMonitoringScheduleMonitoringScheduleStatus :: Maybe (Val Text)
  , _sageMakerMonitoringScheduleTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties SageMakerMonitoringSchedule where
  toResourceProperties SageMakerMonitoringSchedule{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::SageMaker::MonitoringSchedule"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("CreationTime",) . toJSON) _sageMakerMonitoringScheduleCreationTime
        , fmap (("EndpointName",) . toJSON) _sageMakerMonitoringScheduleEndpointName
        , fmap (("FailureReason",) . toJSON) _sageMakerMonitoringScheduleFailureReason
        , fmap (("LastModifiedTime",) . toJSON) _sageMakerMonitoringScheduleLastModifiedTime
        , fmap (("LastMonitoringExecutionSummary",) . toJSON) _sageMakerMonitoringScheduleLastMonitoringExecutionSummary
        , fmap (("MonitoringScheduleArn",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleArn
        , (Just . ("MonitoringScheduleConfig",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleConfig
        , (Just . ("MonitoringScheduleName",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleName
        , fmap (("MonitoringScheduleStatus",) . toJSON) _sageMakerMonitoringScheduleMonitoringScheduleStatus
        , fmap (("Tags",) . toJSON) _sageMakerMonitoringScheduleTags
        ]
    }

-- | Constructor for 'SageMakerMonitoringSchedule' containing required fields
-- as arguments.
sageMakerMonitoringSchedule
  :: SageMakerMonitoringScheduleMonitoringScheduleConfig -- ^ 'smmsMonitoringScheduleConfig'
  -> Val Text -- ^ 'smmsMonitoringScheduleName'
  -> SageMakerMonitoringSchedule
sageMakerMonitoringSchedule monitoringScheduleConfigarg monitoringScheduleNamearg =
  SageMakerMonitoringSchedule
  { _sageMakerMonitoringScheduleCreationTime = Nothing
  , _sageMakerMonitoringScheduleEndpointName = Nothing
  , _sageMakerMonitoringScheduleFailureReason = Nothing
  , _sageMakerMonitoringScheduleLastModifiedTime = Nothing
  , _sageMakerMonitoringScheduleLastMonitoringExecutionSummary = Nothing
  , _sageMakerMonitoringScheduleMonitoringScheduleArn = Nothing
  , _sageMakerMonitoringScheduleMonitoringScheduleConfig = monitoringScheduleConfigarg
  , _sageMakerMonitoringScheduleMonitoringScheduleName = monitoringScheduleNamearg
  , _sageMakerMonitoringScheduleMonitoringScheduleStatus = Nothing
  , _sageMakerMonitoringScheduleTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-creationtime
smmsCreationTime :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsCreationTime = lens _sageMakerMonitoringScheduleCreationTime (\s a -> s { _sageMakerMonitoringScheduleCreationTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-endpointname
smmsEndpointName :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsEndpointName = lens _sageMakerMonitoringScheduleEndpointName (\s a -> s { _sageMakerMonitoringScheduleEndpointName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-failurereason
smmsFailureReason :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsFailureReason = lens _sageMakerMonitoringScheduleFailureReason (\s a -> s { _sageMakerMonitoringScheduleFailureReason = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-lastmodifiedtime
smmsLastModifiedTime :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsLastModifiedTime = lens _sageMakerMonitoringScheduleLastModifiedTime (\s a -> s { _sageMakerMonitoringScheduleLastModifiedTime = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-lastmonitoringexecutionsummary
smmsLastMonitoringExecutionSummary :: Lens' SageMakerMonitoringSchedule (Maybe SageMakerMonitoringScheduleMonitoringExecutionSummary)
smmsLastMonitoringExecutionSummary = lens _sageMakerMonitoringScheduleLastMonitoringExecutionSummary (\s a -> s { _sageMakerMonitoringScheduleLastMonitoringExecutionSummary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringschedulearn
smmsMonitoringScheduleArn :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsMonitoringScheduleArn = lens _sageMakerMonitoringScheduleMonitoringScheduleArn (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig
smmsMonitoringScheduleConfig :: Lens' SageMakerMonitoringSchedule SageMakerMonitoringScheduleMonitoringScheduleConfig
smmsMonitoringScheduleConfig = lens _sageMakerMonitoringScheduleMonitoringScheduleConfig (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleConfig = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringschedulename
smmsMonitoringScheduleName :: Lens' SageMakerMonitoringSchedule (Val Text)
smmsMonitoringScheduleName = lens _sageMakerMonitoringScheduleMonitoringScheduleName (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleName = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringschedulestatus
smmsMonitoringScheduleStatus :: Lens' SageMakerMonitoringSchedule (Maybe (Val Text))
smmsMonitoringScheduleStatus = lens _sageMakerMonitoringScheduleMonitoringScheduleStatus (\s a -> s { _sageMakerMonitoringScheduleMonitoringScheduleStatus = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-tags
smmsTags :: Lens' SageMakerMonitoringSchedule (Maybe [Tag])
smmsTags = lens _sageMakerMonitoringScheduleTags (\s a -> s { _sageMakerMonitoringScheduleTags = a })
