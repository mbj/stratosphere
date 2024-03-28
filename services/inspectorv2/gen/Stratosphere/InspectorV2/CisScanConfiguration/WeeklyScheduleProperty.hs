module Stratosphere.InspectorV2.CisScanConfiguration.WeeklyScheduleProperty (
        module Exports, WeeklyScheduleProperty(..),
        mkWeeklyScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.TimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data WeeklyScheduleProperty
  = WeeklyScheduleProperty {days :: (ValueList Prelude.Text),
                            startTime :: TimeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWeeklyScheduleProperty ::
  ValueList Prelude.Text -> TimeProperty -> WeeklyScheduleProperty
mkWeeklyScheduleProperty days startTime
  = WeeklyScheduleProperty {days = days, startTime = startTime}
instance ToResourceProperties WeeklyScheduleProperty where
  toResourceProperties WeeklyScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.WeeklySchedule",
         supportsTags = Prelude.False,
         properties = ["Days" JSON..= days, "StartTime" JSON..= startTime]}
instance JSON.ToJSON WeeklyScheduleProperty where
  toJSON WeeklyScheduleProperty {..}
    = JSON.object ["Days" JSON..= days, "StartTime" JSON..= startTime]
instance Property "Days" WeeklyScheduleProperty where
  type PropertyType "Days" WeeklyScheduleProperty = ValueList Prelude.Text
  set newValue WeeklyScheduleProperty {..}
    = WeeklyScheduleProperty {days = newValue, ..}
instance Property "StartTime" WeeklyScheduleProperty where
  type PropertyType "StartTime" WeeklyScheduleProperty = TimeProperty
  set newValue WeeklyScheduleProperty {..}
    = WeeklyScheduleProperty {startTime = newValue, ..}