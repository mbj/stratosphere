module Stratosphere.Scheduler.ScheduleGroup (
        ScheduleGroup(..), mkScheduleGroup
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data ScheduleGroup
  = ScheduleGroup {name :: (Prelude.Maybe (Value Prelude.Text)),
                   tags :: (Prelude.Maybe [Tag])}
mkScheduleGroup :: ScheduleGroup
mkScheduleGroup
  = ScheduleGroup {name = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties ScheduleGroup where
  toResourceProperties ScheduleGroup {..}
    = ResourceProperties
        {awsType = "AWS::Scheduler::ScheduleGroup",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON ScheduleGroup where
  toJSON ScheduleGroup {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Name" ScheduleGroup where
  type PropertyType "Name" ScheduleGroup = Value Prelude.Text
  set newValue ScheduleGroup {..}
    = ScheduleGroup {name = Prelude.pure newValue, ..}
instance Property "Tags" ScheduleGroup where
  type PropertyType "Tags" ScheduleGroup = [Tag]
  set newValue ScheduleGroup {..}
    = ScheduleGroup {tags = Prelude.pure newValue, ..}