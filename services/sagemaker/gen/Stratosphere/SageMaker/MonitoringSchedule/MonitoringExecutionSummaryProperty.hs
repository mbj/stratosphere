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
  = MonitoringExecutionSummaryProperty {creationTime :: (Value Prelude.Text),
                                        endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                                        failureReason :: (Prelude.Maybe (Value Prelude.Text)),
                                        lastModifiedTime :: (Value Prelude.Text),
                                        monitoringExecutionStatus :: (Value Prelude.Text),
                                        monitoringScheduleName :: (Value Prelude.Text),
                                        processingJobArn :: (Prelude.Maybe (Value Prelude.Text)),
                                        scheduledTime :: (Value Prelude.Text)}
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