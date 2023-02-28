module Stratosphere.IoTAnalytics.Dataset.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = ScheduleProperty {scheduleExpression :: (Value Prelude.Text)}
mkScheduleProperty :: Value Prelude.Text -> ScheduleProperty
mkScheduleProperty scheduleExpression
  = ScheduleProperty {scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Schedule",
         supportsTags = Prelude.False,
         properties = ["ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object ["ScheduleExpression" JSON..= scheduleExpression]
instance Property "ScheduleExpression" ScheduleProperty where
  type PropertyType "ScheduleExpression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {}
    = ScheduleProperty {scheduleExpression = newValue, ..}