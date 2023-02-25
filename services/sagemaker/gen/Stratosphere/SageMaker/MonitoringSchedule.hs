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
  = MonitoringSchedule {endpointName :: (Prelude.Maybe (Value Prelude.Text)),
                        failureReason :: (Prelude.Maybe (Value Prelude.Text)),
                        lastMonitoringExecutionSummary :: (Prelude.Maybe MonitoringExecutionSummaryProperty),
                        monitoringScheduleConfig :: MonitoringScheduleConfigProperty,
                        monitoringScheduleName :: (Value Prelude.Text),
                        monitoringScheduleStatus :: (Prelude.Maybe (Value Prelude.Text)),
                        tags :: (Prelude.Maybe [Tag])}
mkMonitoringSchedule ::
  MonitoringScheduleConfigProperty
  -> Value Prelude.Text -> MonitoringSchedule
mkMonitoringSchedule
  monitoringScheduleConfig
  monitoringScheduleName
  = MonitoringSchedule
      {monitoringScheduleConfig = monitoringScheduleConfig,
       monitoringScheduleName = monitoringScheduleName,
       endpointName = Prelude.Nothing, failureReason = Prelude.Nothing,
       lastMonitoringExecutionSummary = Prelude.Nothing,
       monitoringScheduleStatus = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties MonitoringSchedule where
  toResourceProperties MonitoringSchedule {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule",
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