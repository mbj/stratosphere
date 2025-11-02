module Stratosphere.Connect.HoursOfOperation.OverrideTimeSliceProperty (
        OverrideTimeSliceProperty(..), mkOverrideTimeSliceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OverrideTimeSliceProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-overridetimeslice.html>
    OverrideTimeSliceProperty {haddock_workaround_ :: (),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-overridetimeslice.html#cfn-connect-hoursofoperation-overridetimeslice-hours>
                               hours :: (Value Prelude.Integer),
                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-overridetimeslice.html#cfn-connect-hoursofoperation-overridetimeslice-minutes>
                               minutes :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOverrideTimeSliceProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer -> OverrideTimeSliceProperty
mkOverrideTimeSliceProperty hours minutes
  = OverrideTimeSliceProperty
      {haddock_workaround_ = (), hours = hours, minutes = minutes}
instance ToResourceProperties OverrideTimeSliceProperty where
  toResourceProperties OverrideTimeSliceProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.OverrideTimeSlice",
         supportsTags = Prelude.False,
         properties = ["Hours" JSON..= hours, "Minutes" JSON..= minutes]}
instance JSON.ToJSON OverrideTimeSliceProperty where
  toJSON OverrideTimeSliceProperty {..}
    = JSON.object ["Hours" JSON..= hours, "Minutes" JSON..= minutes]
instance Property "Hours" OverrideTimeSliceProperty where
  type PropertyType "Hours" OverrideTimeSliceProperty = Value Prelude.Integer
  set newValue OverrideTimeSliceProperty {..}
    = OverrideTimeSliceProperty {hours = newValue, ..}
instance Property "Minutes" OverrideTimeSliceProperty where
  type PropertyType "Minutes" OverrideTimeSliceProperty = Value Prelude.Integer
  set newValue OverrideTimeSliceProperty {..}
    = OverrideTimeSliceProperty {minutes = newValue, ..}