module Stratosphere.QuickSight.RefreshSchedule.RefreshScheduleMapProperty (
        module Exports, RefreshScheduleMapProperty(..),
        mkRefreshScheduleMapProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.QuickSight.RefreshSchedule.ScheduleFrequencyProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RefreshScheduleMapProperty
  = RefreshScheduleMapProperty {refreshType :: (Prelude.Maybe (Value Prelude.Text)),
                                scheduleFrequency :: (Prelude.Maybe ScheduleFrequencyProperty),
                                scheduleId :: (Prelude.Maybe (Value Prelude.Text)),
                                startAfterDateTime :: (Prelude.Maybe (Value Prelude.Text))}
mkRefreshScheduleMapProperty :: RefreshScheduleMapProperty
mkRefreshScheduleMapProperty
  = RefreshScheduleMapProperty
      {refreshType = Prelude.Nothing,
       scheduleFrequency = Prelude.Nothing, scheduleId = Prelude.Nothing,
       startAfterDateTime = Prelude.Nothing}
instance ToResourceProperties RefreshScheduleMapProperty where
  toResourceProperties RefreshScheduleMapProperty {..}
    = ResourceProperties
        {awsType = "AWS::QuickSight::RefreshSchedule.RefreshScheduleMap",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "RefreshType" Prelude.<$> refreshType,
                            (JSON..=) "ScheduleFrequency" Prelude.<$> scheduleFrequency,
                            (JSON..=) "ScheduleId" Prelude.<$> scheduleId,
                            (JSON..=) "StartAfterDateTime" Prelude.<$> startAfterDateTime])}
instance JSON.ToJSON RefreshScheduleMapProperty where
  toJSON RefreshScheduleMapProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "RefreshType" Prelude.<$> refreshType,
               (JSON..=) "ScheduleFrequency" Prelude.<$> scheduleFrequency,
               (JSON..=) "ScheduleId" Prelude.<$> scheduleId,
               (JSON..=) "StartAfterDateTime" Prelude.<$> startAfterDateTime]))
instance Property "RefreshType" RefreshScheduleMapProperty where
  type PropertyType "RefreshType" RefreshScheduleMapProperty = Value Prelude.Text
  set newValue RefreshScheduleMapProperty {..}
    = RefreshScheduleMapProperty
        {refreshType = Prelude.pure newValue, ..}
instance Property "ScheduleFrequency" RefreshScheduleMapProperty where
  type PropertyType "ScheduleFrequency" RefreshScheduleMapProperty = ScheduleFrequencyProperty
  set newValue RefreshScheduleMapProperty {..}
    = RefreshScheduleMapProperty
        {scheduleFrequency = Prelude.pure newValue, ..}
instance Property "ScheduleId" RefreshScheduleMapProperty where
  type PropertyType "ScheduleId" RefreshScheduleMapProperty = Value Prelude.Text
  set newValue RefreshScheduleMapProperty {..}
    = RefreshScheduleMapProperty
        {scheduleId = Prelude.pure newValue, ..}
instance Property "StartAfterDateTime" RefreshScheduleMapProperty where
  type PropertyType "StartAfterDateTime" RefreshScheduleMapProperty = Value Prelude.Text
  set newValue RefreshScheduleMapProperty {..}
    = RefreshScheduleMapProperty
        {startAfterDateTime = Prelude.pure newValue, ..}