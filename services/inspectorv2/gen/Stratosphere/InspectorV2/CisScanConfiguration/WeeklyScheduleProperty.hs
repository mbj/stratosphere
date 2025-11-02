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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html>
    WeeklyScheduleProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html#cfn-inspectorv2-cisscanconfiguration-weeklyschedule-days>
                            days :: (ValueList Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-weeklyschedule.html#cfn-inspectorv2-cisscanconfiguration-weeklyschedule-starttime>
                            startTime :: TimeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkWeeklyScheduleProperty ::
  ValueList Prelude.Text -> TimeProperty -> WeeklyScheduleProperty
mkWeeklyScheduleProperty days startTime
  = WeeklyScheduleProperty
      {haddock_workaround_ = (), days = days, startTime = startTime}
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