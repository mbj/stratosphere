module Stratosphere.InspectorV2.CisScanConfiguration.DailyScheduleProperty (
        module Exports, DailyScheduleProperty(..), mkDailyScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.TimeProperty as Exports
import Stratosphere.ResourceProperties
data DailyScheduleProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-dailyschedule.html>
    DailyScheduleProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-inspectorv2-cisscanconfiguration-dailyschedule.html#cfn-inspectorv2-cisscanconfiguration-dailyschedule-starttime>
                           startTime :: TimeProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDailyScheduleProperty :: TimeProperty -> DailyScheduleProperty
mkDailyScheduleProperty startTime
  = DailyScheduleProperty
      {haddock_workaround_ = (), startTime = startTime}
instance ToResourceProperties DailyScheduleProperty where
  toResourceProperties DailyScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.DailySchedule",
         supportsTags = Prelude.False,
         properties = ["StartTime" JSON..= startTime]}
instance JSON.ToJSON DailyScheduleProperty where
  toJSON DailyScheduleProperty {..}
    = JSON.object ["StartTime" JSON..= startTime]
instance Property "StartTime" DailyScheduleProperty where
  type PropertyType "StartTime" DailyScheduleProperty = TimeProperty
  set newValue DailyScheduleProperty {..}
    = DailyScheduleProperty {startTime = newValue, ..}