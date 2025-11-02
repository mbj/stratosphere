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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationtimeslice.html>
    HoursOfOperationTimeSliceProperty {haddock_workaround_ :: (),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationtimeslice.html#cfn-connect-hoursofoperation-hoursofoperationtimeslice-hours>
                                       hours :: (Value Prelude.Integer),
                                       -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationtimeslice.html#cfn-connect-hoursofoperation-hoursofoperationtimeslice-minutes>
                                       minutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperationTimeSliceProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> HoursOfOperationTimeSliceProperty
mkHoursOfOperationTimeSliceProperty hours minutes
  = HoursOfOperationTimeSliceProperty
      {haddock_workaround_ = (), hours = hours, minutes = minutes}
instance ToResourceProperties HoursOfOperationTimeSliceProperty where
  toResourceProperties HoursOfOperationTimeSliceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.HoursOfOperationTimeSlice",
         supportsTags = Prelude.False,
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