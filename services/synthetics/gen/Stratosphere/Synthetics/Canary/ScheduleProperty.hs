module Stratosphere.Synthetics.Canary.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = ScheduleProperty {durationInSeconds :: (Prelude.Maybe (Value Prelude.Text)),
                      expression :: (Value Prelude.Text)}
mkScheduleProperty :: Value Prelude.Text -> ScheduleProperty
mkScheduleProperty expression
  = ScheduleProperty
      {expression = expression, durationInSeconds = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Synthetics::Canary.Schedule",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Expression" JSON..= expression]
                           (Prelude.catMaybes
                              [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds]))}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Expression" JSON..= expression]
              (Prelude.catMaybes
                 [(JSON..=) "DurationInSeconds" Prelude.<$> durationInSeconds])))
instance Property "DurationInSeconds" ScheduleProperty where
  type PropertyType "DurationInSeconds" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {durationInSeconds = Prelude.pure newValue, ..}
instance Property "Expression" ScheduleProperty where
  type PropertyType "Expression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {..}
    = ScheduleProperty {expression = newValue, ..}