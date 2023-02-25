module Stratosphere.IoTAnalytics.Dataset.TriggerProperty (
        module Exports, TriggerProperty(..), mkTriggerProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.ScheduleProperty as Exports
import {-# SOURCE #-} Stratosphere.IoTAnalytics.Dataset.TriggeringDatasetProperty as Exports
import Stratosphere.ResourceProperties
data TriggerProperty
  = TriggerProperty {schedule :: (Prelude.Maybe ScheduleProperty),
                     triggeringDataset :: (Prelude.Maybe TriggeringDatasetProperty)}
mkTriggerProperty :: TriggerProperty
mkTriggerProperty
  = TriggerProperty
      {schedule = Prelude.Nothing, triggeringDataset = Prelude.Nothing}
instance ToResourceProperties TriggerProperty where
  toResourceProperties TriggerProperty {..}
    = ResourceProperties
        {awsType = "AWS::IoTAnalytics::Dataset.Trigger",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Schedule" Prelude.<$> schedule,
                            (JSON..=) "TriggeringDataset" Prelude.<$> triggeringDataset])}
instance JSON.ToJSON TriggerProperty where
  toJSON TriggerProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Schedule" Prelude.<$> schedule,
               (JSON..=) "TriggeringDataset" Prelude.<$> triggeringDataset]))
instance Property "Schedule" TriggerProperty where
  type PropertyType "Schedule" TriggerProperty = ScheduleProperty
  set newValue TriggerProperty {..}
    = TriggerProperty {schedule = Prelude.pure newValue, ..}
instance Property "TriggeringDataset" TriggerProperty where
  type PropertyType "TriggeringDataset" TriggerProperty = TriggeringDatasetProperty
  set newValue TriggerProperty {..}
    = TriggerProperty {triggeringDataset = Prelude.pure newValue, ..}