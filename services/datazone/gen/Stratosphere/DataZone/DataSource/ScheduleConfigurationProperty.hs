module Stratosphere.DataZone.DataSource.ScheduleConfigurationProperty (
        ScheduleConfigurationProperty(..), mkScheduleConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleConfigurationProperty
  = ScheduleConfigurationProperty {schedule :: (Prelude.Maybe (Value Prelude.Text)),
                                   timezone :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleConfigurationProperty :: ScheduleConfigurationProperty
mkScheduleConfigurationProperty
  = ScheduleConfigurationProperty
      {schedule = Prelude.Nothing, timezone = Prelude.Nothing}
instance ToResourceProperties ScheduleConfigurationProperty where
  toResourceProperties ScheduleConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DataZone::DataSource.ScheduleConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Schedule" Prelude.<$> schedule,
                            (JSON..=) "Timezone" Prelude.<$> timezone])}
instance JSON.ToJSON ScheduleConfigurationProperty where
  toJSON ScheduleConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Schedule" Prelude.<$> schedule,
               (JSON..=) "Timezone" Prelude.<$> timezone]))
instance Property "Schedule" ScheduleConfigurationProperty where
  type PropertyType "Schedule" ScheduleConfigurationProperty = Value Prelude.Text
  set newValue ScheduleConfigurationProperty {..}
    = ScheduleConfigurationProperty
        {schedule = Prelude.pure newValue, ..}
instance Property "Timezone" ScheduleConfigurationProperty where
  type PropertyType "Timezone" ScheduleConfigurationProperty = Value Prelude.Text
  set newValue ScheduleConfigurationProperty {..}
    = ScheduleConfigurationProperty
        {timezone = Prelude.pure newValue, ..}