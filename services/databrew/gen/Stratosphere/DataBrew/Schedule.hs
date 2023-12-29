module Stratosphere.DataBrew.Schedule (
        Schedule(..), mkSchedule
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Schedule
  = Schedule {cronExpression :: (Value Prelude.Text),
              jobNames :: (Prelude.Maybe (ValueList Prelude.Text)),
              name :: (Value Prelude.Text),
              tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSchedule :: Value Prelude.Text -> Value Prelude.Text -> Schedule
mkSchedule cronExpression name
  = Schedule
      {cronExpression = cronExpression, name = name,
       jobNames = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Schedule where
  toResourceProperties Schedule {..}
    = ResourceProperties
        {awsType = "AWS::DataBrew::Schedule", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CronExpression" JSON..= cronExpression, "Name" JSON..= name]
                           (Prelude.catMaybes
                              [(JSON..=) "JobNames" Prelude.<$> jobNames,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Schedule where
  toJSON Schedule {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CronExpression" JSON..= cronExpression, "Name" JSON..= name]
              (Prelude.catMaybes
                 [(JSON..=) "JobNames" Prelude.<$> jobNames,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CronExpression" Schedule where
  type PropertyType "CronExpression" Schedule = Value Prelude.Text
  set newValue Schedule {..}
    = Schedule {cronExpression = newValue, ..}
instance Property "JobNames" Schedule where
  type PropertyType "JobNames" Schedule = ValueList Prelude.Text
  set newValue Schedule {..}
    = Schedule {jobNames = Prelude.pure newValue, ..}
instance Property "Name" Schedule where
  type PropertyType "Name" Schedule = Value Prelude.Text
  set newValue Schedule {..} = Schedule {name = newValue, ..}
instance Property "Tags" Schedule where
  type PropertyType "Tags" Schedule = [Tag]
  set newValue Schedule {..}
    = Schedule {tags = Prelude.pure newValue, ..}