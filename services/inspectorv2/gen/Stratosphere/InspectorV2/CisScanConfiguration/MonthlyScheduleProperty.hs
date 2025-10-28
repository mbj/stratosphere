module Stratosphere.InspectorV2.CisScanConfiguration.MonthlyScheduleProperty (
        module Exports, MonthlyScheduleProperty(..),
        mkMonthlyScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.TimeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonthlyScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-monthlyschedule.html>
    MonthlyScheduleProperty {haddock_workaround_ :: (),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-monthlyschedule.html#cfn-inspectorv2-cisscanconfiguration-monthlyschedule-day>
                             day :: (Value Prelude.Text),
                             -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-monthlyschedule.html#cfn-inspectorv2-cisscanconfiguration-monthlyschedule-starttime>
                             startTime :: TimeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMonthlyScheduleProperty ::
  Value Prelude.Text -> TimeProperty -> MonthlyScheduleProperty
mkMonthlyScheduleProperty day startTime
  = MonthlyScheduleProperty
      {haddock_workaround_ = (), day = day, startTime = startTime}
instance ToResourceProperties MonthlyScheduleProperty where
  toResourceProperties MonthlyScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.MonthlySchedule",
         supportsTags = Prelude.False,
         properties = ["Day" JSON..= day, "StartTime" JSON..= startTime]}
instance JSON.ToJSON MonthlyScheduleProperty where
  toJSON MonthlyScheduleProperty {..}
    = JSON.object ["Day" JSON..= day, "StartTime" JSON..= startTime]
instance Property "Day" MonthlyScheduleProperty where
  type PropertyType "Day" MonthlyScheduleProperty = Value Prelude.Text
  set newValue MonthlyScheduleProperty {..}
    = MonthlyScheduleProperty {day = newValue, ..}
instance Property "StartTime" MonthlyScheduleProperty where
  type PropertyType "StartTime" MonthlyScheduleProperty = TimeProperty
  set newValue MonthlyScheduleProperty {..}
    = MonthlyScheduleProperty {startTime = newValue, ..}