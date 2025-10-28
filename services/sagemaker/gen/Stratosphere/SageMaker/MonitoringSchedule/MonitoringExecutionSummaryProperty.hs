module Stratosphere.SageMaker.MonitoringSchedule.MonitoringExecutionSummaryProperty (
        MonitoringExecutionSummaryProperty(..),
        mkMonitoringExecutionSummaryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringExecutionSummaryProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html>
    MonitoringExecutionSummaryProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-creationtime>
                                        creationTime :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-endpointname>
                                        endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-failurereason>
                                        failureReason :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-lastmodifiedtime>
                                        lastModifiedTime :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-monitoringexecutionstatus>
                                        monitoringExecutionStatus :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-monitoringschedulename>
                                        monitoringScheduleName :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-processingjobarn>
                                        processingJobArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-monitoringexecutionsummary.html#cfn-sagemaker-monitoringschedule-monitoringexecutionsummary-scheduledtime>
                                        scheduledTime :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringExecutionSummaryProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text -> MonitoringExecutionSummaryProperty
mkMonitoringExecutionSummaryProperty
  creationTime
  lastModifiedTime
  monitoringExecutionStatus
  monitoringScheduleName
  scheduledTime
  = MonitoringExecutionSummaryProperty
      {creationTime = creationTime, lastModifiedTime = lastModifiedTime,
       monitoringExecutionStatus = monitoringExecutionStatus,
       monitoringScheduleName = monitoringScheduleName,
       scheduledTime = scheduledTime, endpointName = Prelude.Nothing,
       failureReason = Prelude.Nothing,
       processingJobArn = Prelude.Nothing}
instance ToResourceProperties MonitoringExecutionSummaryProperty where
  toResourceProperties MonitoringExecutionSummaryProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.MonitoringExecutionSummary",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CreationTime" JSON..= creationTime,
                            "LastModifiedTime" JSON..= lastModifiedTime,
                            "MonitoringExecutionStatus" JSON..= monitoringExecutionStatus,
                            "MonitoringScheduleName" JSON..= monitoringScheduleName,
                            "ScheduledTime" JSON..= scheduledTime]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "FailureReason" Prelude.<$> failureReason,
                               (JSON..=) "ProcessingJobArn" Prelude.<$> processingJobArn]))}
instance JSON.ToJSON MonitoringExecutionSummaryProperty where
  toJSON MonitoringExecutionSummaryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CreationTime" JSON..= creationTime,
               "LastModifiedTime" JSON..= lastModifiedTime,
               "MonitoringExecutionStatus" JSON..= monitoringExecutionStatus,
               "MonitoringScheduleName" JSON..= monitoringScheduleName,
               "ScheduledTime" JSON..= scheduledTime]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "FailureReason" Prelude.<$> failureReason,
                  (JSON..=) "ProcessingJobArn" Prelude.<$> processingJobArn])))
instance Property "CreationTime" MonitoringExecutionSummaryProperty where
  type PropertyType "CreationTime" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty {creationTime = newValue, ..}
instance Property "EndpointName" MonitoringExecutionSummaryProperty where
  type PropertyType "EndpointName" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {endpointName = Prelude.pure newValue, ..}
instance Property "FailureReason" MonitoringExecutionSummaryProperty where
  type PropertyType "FailureReason" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {failureReason = Prelude.pure newValue, ..}
instance Property "LastModifiedTime" MonitoringExecutionSummaryProperty where
  type PropertyType "LastModifiedTime" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {lastModifiedTime = newValue, ..}
instance Property "MonitoringExecutionStatus" MonitoringExecutionSummaryProperty where
  type PropertyType "MonitoringExecutionStatus" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {monitoringExecutionStatus = newValue, ..}
instance Property "MonitoringScheduleName" MonitoringExecutionSummaryProperty where
  type PropertyType "MonitoringScheduleName" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {monitoringScheduleName = newValue, ..}
instance Property "ProcessingJobArn" MonitoringExecutionSummaryProperty where
  type PropertyType "ProcessingJobArn" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty
        {processingJobArn = Prelude.pure newValue, ..}
instance Property "ScheduledTime" MonitoringExecutionSummaryProperty where
  type PropertyType "ScheduledTime" MonitoringExecutionSummaryProperty = Value Prelude.Text
  set newValue MonitoringExecutionSummaryProperty {..}
    = MonitoringExecutionSummaryProperty {scheduledTime = newValue, ..}