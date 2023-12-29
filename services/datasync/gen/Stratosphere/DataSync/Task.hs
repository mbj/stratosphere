module Stratosphere.DataSync.Task (
        module Exports, Task(..), mkTask
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DataSync.Task.FilterRuleProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.OptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.DataSync.Task.TaskScheduleProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Task
  = Task {cloudWatchLogGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
          destinationLocationArn :: (Value Prelude.Text),
          excludes :: (Prelude.Maybe [FilterRuleProperty]),
          includes :: (Prelude.Maybe [FilterRuleProperty]),
          name :: (Prelude.Maybe (Value Prelude.Text)),
          options :: (Prelude.Maybe OptionsProperty),
          schedule :: (Prelude.Maybe TaskScheduleProperty),
          sourceLocationArn :: (Value Prelude.Text),
          tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTask :: Value Prelude.Text -> Value Prelude.Text -> Task
mkTask destinationLocationArn sourceLocationArn
  = Task
      {destinationLocationArn = destinationLocationArn,
       sourceLocationArn = sourceLocationArn,
       cloudWatchLogGroupArn = Prelude.Nothing,
       excludes = Prelude.Nothing, includes = Prelude.Nothing,
       name = Prelude.Nothing, options = Prelude.Nothing,
       schedule = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Task where
  toResourceProperties Task {..}
    = ResourceProperties
        {awsType = "AWS::DataSync::Task", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DestinationLocationArn" JSON..= destinationLocationArn,
                            "SourceLocationArn" JSON..= sourceLocationArn]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLogGroupArn"
                                 Prelude.<$> cloudWatchLogGroupArn,
                               (JSON..=) "Excludes" Prelude.<$> excludes,
                               (JSON..=) "Includes" Prelude.<$> includes,
                               (JSON..=) "Name" Prelude.<$> name,
                               (JSON..=) "Options" Prelude.<$> options,
                               (JSON..=) "Schedule" Prelude.<$> schedule,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Task where
  toJSON Task {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DestinationLocationArn" JSON..= destinationLocationArn,
               "SourceLocationArn" JSON..= sourceLocationArn]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLogGroupArn"
                    Prelude.<$> cloudWatchLogGroupArn,
                  (JSON..=) "Excludes" Prelude.<$> excludes,
                  (JSON..=) "Includes" Prelude.<$> includes,
                  (JSON..=) "Name" Prelude.<$> name,
                  (JSON..=) "Options" Prelude.<$> options,
                  (JSON..=) "Schedule" Prelude.<$> schedule,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "CloudWatchLogGroupArn" Task where
  type PropertyType "CloudWatchLogGroupArn" Task = Value Prelude.Text
  set newValue Task {..}
    = Task {cloudWatchLogGroupArn = Prelude.pure newValue, ..}
instance Property "DestinationLocationArn" Task where
  type PropertyType "DestinationLocationArn" Task = Value Prelude.Text
  set newValue Task {..}
    = Task {destinationLocationArn = newValue, ..}
instance Property "Excludes" Task where
  type PropertyType "Excludes" Task = [FilterRuleProperty]
  set newValue Task {..}
    = Task {excludes = Prelude.pure newValue, ..}
instance Property "Includes" Task where
  type PropertyType "Includes" Task = [FilterRuleProperty]
  set newValue Task {..}
    = Task {includes = Prelude.pure newValue, ..}
instance Property "Name" Task where
  type PropertyType "Name" Task = Value Prelude.Text
  set newValue Task {..} = Task {name = Prelude.pure newValue, ..}
instance Property "Options" Task where
  type PropertyType "Options" Task = OptionsProperty
  set newValue Task {..} = Task {options = Prelude.pure newValue, ..}
instance Property "Schedule" Task where
  type PropertyType "Schedule" Task = TaskScheduleProperty
  set newValue Task {..}
    = Task {schedule = Prelude.pure newValue, ..}
instance Property "SourceLocationArn" Task where
  type PropertyType "SourceLocationArn" Task = Value Prelude.Text
  set newValue Task {..} = Task {sourceLocationArn = newValue, ..}
instance Property "Tags" Task where
  type PropertyType "Tags" Task = [Tag]
  set newValue Task {..} = Task {tags = Prelude.pure newValue, ..}