module Stratosphere.Connect.HoursOfOperation.HoursOfOperationTimeSliceProperty (
        HoursOfOperationTimeSliceProperty(..),
        mkHoursOfOperationTimeSliceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HoursOfOperationTimeSliceProperty
  = HoursOfOperationTimeSliceProperty {hours :: (Value Prelude.Integer),
                                       minutes :: (Value Prelude.Integer)}
mkHoursOfOperationTimeSliceProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> HoursOfOperationTimeSliceProperty
mkHoursOfOperationTimeSliceProperty hours minutes
  = HoursOfOperationTimeSliceProperty
      {hours = hours, minutes = minutes}
instance ToResourceProperties HoursOfOperationTimeSliceProperty where
  toResourceProperties HoursOfOperationTimeSliceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.HoursOfOperationTimeSlice",
         properties = ["Hours" JSON..= hours, "Minutes" JSON..= minutes]}
instance JSON.ToJSON HoursOfOperationTimeSliceProperty where
  toJSON HoursOfOperationTimeSliceProperty {..}
    = JSON.object ["Hours" JSON..= hours, "Minutes" JSON..= minutes]
instance Property "Hours" HoursOfOperationTimeSliceProperty where
  type PropertyType "Hours" HoursOfOperationTimeSliceProperty = Value Prelude.Integer
  set newValue HoursOfOperationTimeSliceProperty {..}
    = HoursOfOperationTimeSliceProperty {hours = newValue, ..}
instance Property "Minutes" HoursOfOperationTimeSliceProperty where
  type PropertyType "Minutes" HoursOfOperationTimeSliceProperty = Value Prelude.Integer
  set newValue HoursOfOperationTimeSliceProperty {..}
    = HoursOfOperationTimeSliceProperty {minutes = newValue, ..}