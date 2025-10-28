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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html>
    HoursOfOperationOverrideConfigProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-day>
                                            day :: (Value Prelude.Text),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-endtime>
                                            endTime :: OverrideTimeSliceProperty,
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationoverrideconfig.html#cfn-connect-hoursofoperation-hoursofoperationoverrideconfig-starttime>
                                            startTime :: OverrideTimeSliceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperationOverrideConfigProperty ::
  Value Prelude.Text
  -> OverrideTimeSliceProperty
     -> OverrideTimeSliceProperty
        -> HoursOfOperationOverrideConfigProperty
mkHoursOfOperationOverrideConfigProperty day endTime startTime
  = HoursOfOperationOverrideConfigProperty
      {haddock_workaround_ = (), day = day, endTime = endTime,
       startTime = startTime}
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