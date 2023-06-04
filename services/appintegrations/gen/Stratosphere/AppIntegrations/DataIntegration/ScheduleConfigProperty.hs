module Stratosphere.AppIntegrations.DataIntegration.ScheduleConfigProperty (
        ScheduleConfigProperty(..), mkScheduleConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigProperty
  = ScheduleConfigProperty {firstExecutionFrom :: (Prelude.Maybe (Value Prelude.Text)),
                            object :: (Prelude.Maybe (Value Prelude.Text)),
                            scheduleExpression :: (Value Prelude.Text)}
mkScheduleConfigProperty ::
  Value Prelude.Text -> ScheduleConfigProperty
mkScheduleConfigProperty scheduleExpression
  = ScheduleConfigProperty
      {scheduleExpression = scheduleExpression,
       firstExecutionFrom = Prelude.Nothing, object = Prelude.Nothing}
instance ToResourceProperties ScheduleConfigProperty where
  toResourceProperties ScheduleConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppIntegrations::DataIntegration.ScheduleConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ScheduleExpression" JSON..= scheduleExpression]
                           (Prelude.catMaybes
                              [(JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                               (JSON..=) "Object" Prelude.<$> object]))}
instance JSON.ToJSON ScheduleConfigProperty where
  toJSON ScheduleConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ScheduleExpression" JSON..= scheduleExpression]
              (Prelude.catMaybes
                 [(JSON..=) "FirstExecutionFrom" Prelude.<$> firstExecutionFrom,
                  (JSON..=) "Object" Prelude.<$> object])))
instance Property "FirstExecutionFrom" ScheduleConfigProperty where
  type PropertyType "FirstExecutionFrom" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty
        {firstExecutionFrom = Prelude.pure newValue, ..}
instance Property "Object" ScheduleConfigProperty where
  type PropertyType "Object" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {object = Prelude.pure newValue, ..}
instance Property "ScheduleExpression" ScheduleConfigProperty where
  type PropertyType "ScheduleExpression" ScheduleConfigProperty = Value Prelude.Text
  set newValue ScheduleConfigProperty {..}
    = ScheduleConfigProperty {scheduleExpression = newValue, ..}