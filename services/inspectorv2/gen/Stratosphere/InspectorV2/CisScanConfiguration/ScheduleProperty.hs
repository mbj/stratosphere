module Stratosphere.InspectorV2.CisScanConfiguration.ScheduleProperty (
        module Exports, ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.DailyScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.MonthlyScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.InspectorV2.CisScanConfiguration.WeeklyScheduleProperty as Exports
import Stratosphere.ResourceProperties
data ScheduleProperty
  = ScheduleProperty {daily :: (Prelude.Maybe DailyScheduleProperty),
                      monthly :: (Prelude.Maybe MonthlyScheduleProperty),
                      oneTime :: (Prelude.Maybe JSON.Object),
                      weekly :: (Prelude.Maybe WeeklyScheduleProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty
      {daily = Prelude.Nothing, monthly = Prelude.Nothing,
       oneTime = Prelude.Nothing, weekly = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::InspectorV2::CisScanConfiguration.Schedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Daily" Prelude.<$> daily,
                            (JSON..=) "Monthly" Prelude.<$> monthly,
                            (JSON..=) "OneTime" Prelude.<$> oneTime,
                            (JSON..=) "Weekly" Prelude.<$> weekly])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Daily" Prelude.<$> daily,
               (JSON..=) "Monthly" Prelude.<$> monthly,
               (JSON..=) "OneTime" Prelude.<$> oneTime,
               (JSON..=) "Weekly" Prelude.<$> weekly]))
instance Property "Daily" ScheduleProperty where
  type PropertyType "Daily" ScheduleProperty = DailyScheduleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {daily = Prelude.pure newValue, ..}
instance Property "Monthly" ScheduleProperty where
  type PropertyType "Monthly" ScheduleProperty = MonthlyScheduleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {monthly = Prelude.pure newValue, ..}
instance Property "OneTime" ScheduleProperty where
  type PropertyType "OneTime" ScheduleProperty = JSON.Object
  set newValue ScheduleProperty {..}
    = ScheduleProperty {oneTime = Prelude.pure newValue, ..}
instance Property "Weekly" ScheduleProperty where
  type PropertyType "Weekly" ScheduleProperty = WeeklyScheduleProperty
  set newValue ScheduleProperty {..}
    = ScheduleProperty {weekly = Prelude.pure newValue, ..}