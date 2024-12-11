module Stratosphere.ApplicationSignals.ServiceLevelObjective.IntervalProperty (
        module Exports, IntervalProperty(..), mkIntervalProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.CalendarIntervalProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationSignals.ServiceLevelObjective.RollingIntervalProperty as Exports
import Stratosphere.ResourceProperties
data IntervalProperty
  = IntervalProperty {calendarInterval :: (Prelude.Maybe CalendarIntervalProperty),
                      rollingInterval :: (Prelude.Maybe RollingIntervalProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIntervalProperty :: IntervalProperty
mkIntervalProperty
  = IntervalProperty
      {calendarInterval = Prelude.Nothing,
       rollingInterval = Prelude.Nothing}
instance ToResourceProperties IntervalProperty where
  toResourceProperties IntervalProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationSignals::ServiceLevelObjective.Interval",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CalendarInterval" Prelude.<$> calendarInterval,
                            (JSON..=) "RollingInterval" Prelude.<$> rollingInterval])}
instance JSON.ToJSON IntervalProperty where
  toJSON IntervalProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CalendarInterval" Prelude.<$> calendarInterval,
               (JSON..=) "RollingInterval" Prelude.<$> rollingInterval]))
instance Property "CalendarInterval" IntervalProperty where
  type PropertyType "CalendarInterval" IntervalProperty = CalendarIntervalProperty
  set newValue IntervalProperty {..}
    = IntervalProperty {calendarInterval = Prelude.pure newValue, ..}
instance Property "RollingInterval" IntervalProperty where
  type PropertyType "RollingInterval" IntervalProperty = RollingIntervalProperty
  set newValue IntervalProperty {..}
    = IntervalProperty {rollingInterval = Prelude.pure newValue, ..}