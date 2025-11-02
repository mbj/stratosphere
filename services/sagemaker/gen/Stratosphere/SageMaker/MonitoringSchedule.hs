module Stratosphere.SageMaker.MonitoringSchedule (
        module Exports, MonitoringSchedule(..), mkMonitoringSchedule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringExecutionSummaryProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.MonitoringSchedule.MonitoringScheduleConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data MonitoringSchedule
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html>
    MonitoringSchedule {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-endpointname>
                        endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-failurereason>
                        failureReason :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-lastmonitoringexecutionsummary>
                        lastMonitoringExecutionSummary :: (Prelude.Maybe MonitoringExecutionSummaryProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringscheduleconfig>
                        monitoringScheduleConfig :: MonitoringScheduleConfigProperty,
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringschedulename>
                        monitoringScheduleName :: (Value Prelude.Text),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-monitoringschedulestatus>
                        monitoringScheduleStatus :: (Prelude.Maybe (Value Prelude.Text)),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-sagemaker-monitoringschedule.html#cfn-sagemaker-monitoringschedule-tags>
                        tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonitoringSchedule ::
  MonitoringScheduleConfigProperty
  -> Value Prelude.Text -> MonitoringSchedule
mkMonitoringSchedule
  monitoringScheduleConfig
  monitoringScheduleName
  = MonitoringSchedule
      {haddock_workaround_ = (),
       monitoringScheduleConfig = monitoringScheduleConfig,
       monitoringScheduleName = monitoringScheduleName,
       endpointName = Prelude.Nothing, failureReason = Prelude.Nothing,
       lastMonitoringExecutionSummary = Prelude.Nothing,
       monitoringScheduleStatus = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MonitoringSchedule where
  toResourceProperties MonitoringSchedule {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MonitoringScheduleConfig" JSON..= monitoringScheduleConfig,
                            "MonitoringScheduleName" JSON..= monitoringScheduleName]
                           (Prelude.catMaybes
                              [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                               (JSON..=) "FailureReason" Prelude.<$> failureReason,
                               (JSON..=) "LastMonitoringExecutionSummary"
                                 Prelude.<$> lastMonitoringExecutionSummary,
                               (JSON..=) "MonitoringScheduleStatus"
                                 Prelude.<$> monitoringScheduleStatus,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON MonitoringSchedule where
  toJSON MonitoringSchedule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MonitoringScheduleConfig" JSON..= monitoringScheduleConfig,
               "MonitoringScheduleName" JSON..= monitoringScheduleName]
              (Prelude.catMaybes
                 [(JSON..=) "EndpointName" Prelude.<$> endpointName,
                  (JSON..=) "FailureReason" Prelude.<$> failureReason,
                  (JSON..=) "LastMonitoringExecutionSummary"
                    Prelude.<$> lastMonitoringExecutionSummary,
                  (JSON..=) "MonitoringScheduleStatus"
                    Prelude.<$> monitoringScheduleStatus,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "EndpointName" MonitoringSchedule where
  type PropertyType "EndpointName" MonitoringSchedule = Value Prelude.Text
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule {endpointName = Prelude.pure newValue, ..}
instance Property "FailureReason" MonitoringSchedule where
  type PropertyType "FailureReason" MonitoringSchedule = Value Prelude.Text
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule {failureReason = Prelude.pure newValue, ..}
instance Property "LastMonitoringExecutionSummary" MonitoringSchedule where
  type PropertyType "LastMonitoringExecutionSummary" MonitoringSchedule = MonitoringExecutionSummaryProperty
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule
        {lastMonitoringExecutionSummary = Prelude.pure newValue, ..}
instance Property "MonitoringScheduleConfig" MonitoringSchedule where
  type PropertyType "MonitoringScheduleConfig" MonitoringSchedule = MonitoringScheduleConfigProperty
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule {monitoringScheduleConfig = newValue, ..}
instance Property "MonitoringScheduleName" MonitoringSchedule where
  type PropertyType "MonitoringScheduleName" MonitoringSchedule = Value Prelude.Text
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule {monitoringScheduleName = newValue, ..}
instance Property "MonitoringScheduleStatus" MonitoringSchedule where
  type PropertyType "MonitoringScheduleStatus" MonitoringSchedule = Value Prelude.Text
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule
        {monitoringScheduleStatus = Prelude.pure newValue, ..}
instance Property "Tags" MonitoringSchedule where
  type PropertyType "Tags" MonitoringSchedule = [Tag]
  set newValue MonitoringSchedule {..}
    = MonitoringSchedule {tags = Prelude.pure newValue, ..}