module Stratosphere.Connect.HoursOfOperation.HoursOfOperationOverrideConfigProperty (
        module Exports, HoursOfOperationOverrideConfigProperty(..),
        mkHoursOfOperationOverrideConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.HoursOfOperation.OverrideTimeSliceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HoursOfOperationOverrideConfigProperty
  = HoursOfOperationOverrideConfigProperty {day :: (Value Prelude.Text),
                                            endTime :: OverrideTimeSliceProperty,
                                            startTime :: OverrideTimeSliceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperationOverrideConfigProperty ::
  Value Prelude.Text
  -> OverrideTimeSliceProperty
     -> OverrideTimeSliceProperty
        -> HoursOfOperationOverrideConfigProperty
mkHoursOfOperationOverrideConfigProperty day endTime startTime
  = HoursOfOperationOverrideConfigProperty
      {day = day, endTime = endTime, startTime = startTime}
instance ToResourceProperties HoursOfOperationOverrideConfigProperty where
  toResourceProperties HoursOfOperationOverrideConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.HoursOfOperationOverrideConfig",
         supportsTags = Prelude.False,
         properties = ["Day" JSON..= day, "EndTime" JSON..= endTime,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON HoursOfOperationOverrideConfigProperty where
  toJSON HoursOfOperationOverrideConfigProperty {..}
    = JSON.object
        ["Day" JSON..= day, "EndTime" JSON..= endTime,
         "StartTime" JSON..= startTime]
instance Property "Day" HoursOfOperationOverrideConfigProperty where
  type PropertyType "Day" HoursOfOperationOverrideConfigProperty = Value Prelude.Text
  set newValue HoursOfOperationOverrideConfigProperty {..}
    = HoursOfOperationOverrideConfigProperty {day = newValue, ..}
instance Property "EndTime" HoursOfOperationOverrideConfigProperty where
  type PropertyType "EndTime" HoursOfOperationOverrideConfigProperty = OverrideTimeSliceProperty
  set newValue HoursOfOperationOverrideConfigProperty {..}
    = HoursOfOperationOverrideConfigProperty {endTime = newValue, ..}
instance Property "StartTime" HoursOfOperationOverrideConfigProperty where
  type PropertyType "StartTime" HoursOfOperationOverrideConfigProperty = OverrideTimeSliceProperty
  set newValue HoursOfOperationOverrideConfigProperty {..}
    = HoursOfOperationOverrideConfigProperty {startTime = newValue, ..}