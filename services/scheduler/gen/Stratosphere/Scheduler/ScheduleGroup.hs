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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-scheduler-schedulegroup.html>
    ScheduleGroup {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-scheduler-schedulegroup.html#cfn-scheduler-schedulegroup-name>
                   name :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-scheduler-schedulegroup.html#cfn-scheduler-schedulegroup-tags>
                   tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScheduleGroup :: ScheduleGroup
mkScheduleGroup
  = ScheduleGroup
      {haddock_workaround_ = (), name = Prelude.Nothing,
       tags = Prelude.Nothing}
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