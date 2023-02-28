module Stratosphere.AppIntegrations.DataIntegration.ScheduleConfigProperty (
        ScheduleConfigProperty(..), mkScheduleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigProperty
  = ScheduleConfigProperty {firstExecutionFrom :: (Value Prelude.Text),
                            object :: (Value Prelude.Text),
                            scheduleExpression :: (Value Prelude.Text)}
mkScheduleConfigProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> ScheduleConfigProperty
mkScheduleConfigProperty
  firstExecutionFrom
  object
  scheduleExpression
  = ScheduleConfigProperty
      {firstExecutionFrom = firstExecutionFrom, object = object,
       scheduleExpression = scheduleExpression}
instance ToResourceProperties ScheduleConfigProperty where
  toResourceProperties ScheduleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::DataIntegration.ScheduleConfig",
         supportsTags = Prelude.False,
         properties = ["FirstExecutionFrom" JSON..= firstExecutionFrom,
                       "Object" JSON..= object,
                       "ScheduleExpression" JSON..= scheduleExpression]}
instance JSON.ToJSON ScheduleConfigProperty where
  toJSON ScheduleConfigProperty {..}
    = JSON.object
        ["FirstExecutionFrom" JSON..= firstExecutionFrom,
         "Object" JSON..= object,
         "ScheduleExpression" JSON..= scheduleExpression]
instance Property "FirstExecutionFrom" ScheduleConfigProperty where
  type PropertyType "FirstExecutionFrom" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {firstExecutionFrom = newValue, ..}
instance Property "Object" ScheduleConfigProperty where
  type PropertyType "Object" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {object = newValue, ..}
instance Property "ScheduleExpression" ScheduleConfigProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {scheduleExpression = newValue, ..}