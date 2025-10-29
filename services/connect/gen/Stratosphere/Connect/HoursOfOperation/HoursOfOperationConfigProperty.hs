module Stratosphere.Connect.HoursOfOperation.HoursOfOperationConfigProperty (
        module Exports, HoursOfOperationConfigProperty(..),
        mkHoursOfOperationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Connect.HoursOfOperation.HoursOfOperationTimeSliceProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HoursOfOperationConfigProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationconfig.html>
    HoursOfOperationConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationconfig.html#cfn-connect-hoursofoperation-hoursofoperationconfig-day>
                                    day :: (Value Prelude.Text),
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationconfig.html#cfn-connect-hoursofoperation-hoursofoperationconfig-endtime>
                                    endTime :: HoursOfOperationTimeSliceProperty,
                                    -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-connect-hoursofoperation-hoursofoperationconfig.html#cfn-connect-hoursofoperation-hoursofoperationconfig-starttime>
                                    startTime :: HoursOfOperationTimeSliceProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHoursOfOperationConfigProperty ::
  Value Prelude.Text
  -> HoursOfOperationTimeSliceProperty
     -> HoursOfOperationTimeSliceProperty
        -> HoursOfOperationConfigProperty
mkHoursOfOperationConfigProperty day endTime startTime
  = HoursOfOperationConfigProperty
      {day = day, endTime = endTime, startTime = startTime}
instance ToResourceProperties HoursOfOperationConfigProperty where
  toResourceProperties HoursOfOperationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::Connect::HoursOfOperation.HoursOfOperationConfig",
         supportsTags = Prelude.False,
         properties = ["Day" JSON..= day, "EndTime" JSON..= endTime,
                       "StartTime" JSON..= startTime]}
instance JSON.ToJSON HoursOfOperationConfigProperty where
  toJSON HoursOfOperationConfigProperty {..}
    = JSON.object
        ["Day" JSON..= day, "EndTime" JSON..= endTime,
         "StartTime" JSON..= startTime]
instance Property "Day" HoursOfOperationConfigProperty where
  type PropertyType "Day" HoursOfOperationConfigProperty = Value Prelude.Text
  set newValue HoursOfOperationConfigProperty {..}
    = HoursOfOperationConfigProperty {day = newValue, ..}
instance Property "EndTime" HoursOfOperationConfigProperty where
  type PropertyType "EndTime" HoursOfOperationConfigProperty = HoursOfOperationTimeSliceProperty
  set newValue HoursOfOperationConfigProperty {..}
    = HoursOfOperationConfigProperty {endTime = newValue, ..}
instance Property "StartTime" HoursOfOperationConfigProperty where
  type PropertyType "StartTime" HoursOfOperationConfigProperty = HoursOfOperationTimeSliceProperty
  set newValue HoursOfOperationConfigProperty {..}
    = HoursOfOperationConfigProperty {startTime = newValue, ..}