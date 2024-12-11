module Stratosphere.ApplicationSignals.ServiceLevelObjective.CalendarIntervalProperty (
        CalendarIntervalProperty(..), mkCalendarIntervalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CalendarIntervalProperty
  = CalendarIntervalProperty {duration :: (Value Prelude.Integer),
                              durationUnit :: (Value Prelude.Text),
                              startTime :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCalendarIntervalProperty ::
  Value Prelude.Integer
  -> Value Prelude.Text
     -> Value Prelude.Integer -> CalendarIntervalProperty
mkCalendarIntervalProperty duration durationUnit startTime
  = CalendarIntervalProperty
      {duration = duration, durationUnit = durationUnit,
       startTime = startTime}
instance ToResourceProperties CalendarIntervalProperty where
  toResourceProperties CalendarIntervalProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.CalendarInterval",
         supportsTags = Prelude.False,
         properties = ["Duration" JSON..= duration,
                       "DurationUnit" JSON..= durationUnit,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON CalendarIntervalProperty where
  toJSON CalendarIntervalProperty {..}
    = JSON.object
        ["Duration" JSON..= duration, "DurationUnit" JSON..= durationUnit,
         "StartTime" JSON..= startTime]
instance Property "Duration" CalendarIntervalProperty where
  type PropertyType "Duration" CalendarIntervalProperty = Value Prelude.Integer
  set newValue CalendarIntervalProperty {..}
    = CalendarIntervalProperty {duration = newValue, ..}
instance Property "DurationUnit" CalendarIntervalProperty where
  type PropertyType "DurationUnit" CalendarIntervalProperty = Value Prelude.Text
  set newValue CalendarIntervalProperty {..}
    = CalendarIntervalProperty {durationUnit = newValue, ..}
instance Property "StartTime" CalendarIntervalProperty where
  type PropertyType "StartTime" CalendarIntervalProperty = Value Prelude.Integer
  set newValue CalendarIntervalProperty {..}
    = CalendarIntervalProperty {startTime = newValue, ..}