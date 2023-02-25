module Stratosphere.SageMaker.MonitoringSchedule.ScheduleConfigProperty (
        ScheduleConfigProperty(..), mkScheduleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigProperty
  = ScheduleConfigProperty {scheduleExpression :: (Value Prelude.Text)}
mkScheduleConfigProperty ::
  Value Prelude.Text -> ScheduleConfigProperty
mkScheduleConfigProperty scheduleExpression
  = ScheduleConfigProperty {scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleConfigProperty where
  toResourceProperties ScheduleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::MonitoringSchedule.ScheduleConfig",
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleConfigProperty where
  toJSON ScheduleConfigProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" ScheduleConfigProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {}
    = ScheduleConfigProperty {scheduleExpression = newValue, ..}