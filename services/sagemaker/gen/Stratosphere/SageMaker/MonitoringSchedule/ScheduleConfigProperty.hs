module Stratosphere.SageMaker.MonitoringSchedule.ScheduleConfigProperty (
        ScheduleConfigProperty(..), mkScheduleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html>
    ScheduleConfigProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html#cfn-sagemaker-monitoringschedule-scheduleconfig-dataanalysisendtime>
                            dataAnalysisEndTime :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html#cfn-sagemaker-monitoringschedule-scheduleconfig-dataanalysisstarttime>
                            dataAnalysisStartTime :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-monitoringschedule-scheduleconfig.html#cfn-sagemaker-monitoringschedule-scheduleconfig-scheduleexpression>
                            scheduleExpression :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleConfigProperty ::
  Value Prelude.Text -> ScheduleConfigProperty
mkScheduleConfigProperty scheduleExpression
  = ScheduleConfigProperty
      {haddock_workaround_ = (), scheduleExpression = scheduleExpression,
       dataAnalysisEndTime = Prelude.Nothing,
       dataAnalysisStartTime = Prelude.Nothing}
instance ToResourceProperties ScheduleConfigProperty where
  toResourceProperties ScheduleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.ScheduleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "DataAnalysisEndTime" Prelude.<$> dataAnalysisEndTime,
                               (JSON..=) "DataAnalysisStartTime"
                                 Prelude.<$> dataAnalysisStartTime]))}
instance JSON.ToJSON ScheduleConfigProperty where
  toJSON ScheduleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "DataAnalysisEndTime" Prelude.<$> dataAnalysisEndTime,
                  (JSON..=) "DataAnalysisStartTime"
                    Prelude.<$> dataAnalysisStartTime])))
instance Property "DataAnalysisEndTime" ScheduleConfigProperty where
  type PropertyType "DataAnalysisEndTime" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty
        {dataAnalysisEndTime = Prelude.pure newValue, ..}
instance Property "DataAnalysisStartTime" ScheduleConfigProperty where
  type PropertyType "DataAnalysisStartTime" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty
        {dataAnalysisStartTime = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" ScheduleConfigProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {scheduleExpression = newValue, ..}