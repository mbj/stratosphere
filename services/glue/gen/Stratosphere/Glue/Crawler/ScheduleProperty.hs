module Stratosphere.Glue.Crawler.ScheduleProperty (
        ScheduleProperty(..), mkScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScheduleProperty
  = ScheduleProperty {scheduleExpression :: (Prelude.Maybe (Value Prelude.Text))}
mkScheduleProperty :: ScheduleProperty
mkScheduleProperty
  = ScheduleProperty {scheduleExpression = Prelude.Nothing}
instance ToResourceProperties ScheduleProperty where
  toResourceProperties ScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::Glue::Crawler.Schedule",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression])}
instance JSON.ToJSON ScheduleProperty where
  toJSON ScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ScheduleExpression" Prelude.<$> scheduleExpression]))
instance Property "ScheduleExpression" ScheduleProperty where
  type PropertyType "ScheduleExpression" ScheduleProperty = Value Prelude.Text
  set newValue ScheduleProperty {}
    = ScheduleProperty {scheduleExpression = Prelude.pure newValue, ..}