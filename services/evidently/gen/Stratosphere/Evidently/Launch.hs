module Stratosphere.Evidently.Launch (
        module Exports, Launch(..), mkLaunch
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Launch.ExecutionStatusObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Launch.LaunchGroupObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Launch.MetricDefinitionObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Launch.StepConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Launch
  = Launch {description :: (Prelude.Maybe (Value Prelude.Text)),
            executionStatus :: (Prelude.Maybe ExecutionStatusObjectProperty),
            groups :: [LaunchGroupObjectProperty],
            metricMonitors :: (Prelude.Maybe [MetricDefinitionObjectProperty]),
            name :: (Value Prelude.Text),
            project :: (Value Prelude.Text),
            randomizationSalt :: (Prelude.Maybe (Value Prelude.Text)),
            scheduledSplitsConfig :: [StepConfigProperty],
            tags :: (Prelude.Maybe [Tag])}
mkLaunch ::
  [LaunchGroupObjectProperty]
  -> Value Prelude.Text
     -> Value Prelude.Text -> [StepConfigProperty] -> Launch
mkLaunch groups name project scheduledSplitsConfig
  = Launch
      {groups = groups, name = name, project = project,
       scheduledSplitsConfig = scheduledSplitsConfig,
       description = Prelude.Nothing, executionStatus = Prelude.Nothing,
       metricMonitors = Prelude.Nothing,
       randomizationSalt = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties Launch where
  toResourceProperties Launch {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Launch", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Groups" JSON..= groups, "Name" JSON..= name,
                            "Project" JSON..= project,
                            "ScheduledSplitsConfig" JSON..= scheduledSplitsConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "ExecutionStatus" Prelude.<$> executionStatus,
                               (JSON..=) "MetricMonitors" Prelude.<$> metricMonitors,
                               (JSON..=) "RandomizationSalt" Prelude.<$> randomizationSalt,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Launch where
  toJSON Launch {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Groups" JSON..= groups, "Name" JSON..= name,
               "Project" JSON..= project,
               "ScheduledSplitsConfig" JSON..= scheduledSplitsConfig]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "ExecutionStatus" Prelude.<$> executionStatus,
                  (JSON..=) "MetricMonitors" Prelude.<$> metricMonitors,
                  (JSON..=) "RandomizationSalt" Prelude.<$> randomizationSalt,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Launch where
  type PropertyType "Description" Launch = Value Prelude.Text
  set newValue Launch {..}
    = Launch {description = Prelude.pure newValue, ..}
instance Property "ExecutionStatus" Launch where
  type PropertyType "ExecutionStatus" Launch = ExecutionStatusObjectProperty
  set newValue Launch {..}
    = Launch {executionStatus = Prelude.pure newValue, ..}
instance Property "Groups" Launch where
  type PropertyType "Groups" Launch = [LaunchGroupObjectProperty]
  set newValue Launch {..} = Launch {groups = newValue, ..}
instance Property "MetricMonitors" Launch where
  type PropertyType "MetricMonitors" Launch = [MetricDefinitionObjectProperty]
  set newValue Launch {..}
    = Launch {metricMonitors = Prelude.pure newValue, ..}
instance Property "Name" Launch where
  type PropertyType "Name" Launch = Value Prelude.Text
  set newValue Launch {..} = Launch {name = newValue, ..}
instance Property "Project" Launch where
  type PropertyType "Project" Launch = Value Prelude.Text
  set newValue Launch {..} = Launch {project = newValue, ..}
instance Property "RandomizationSalt" Launch where
  type PropertyType "RandomizationSalt" Launch = Value Prelude.Text
  set newValue Launch {..}
    = Launch {randomizationSalt = Prelude.pure newValue, ..}
instance Property "ScheduledSplitsConfig" Launch where
  type PropertyType "ScheduledSplitsConfig" Launch = [StepConfigProperty]
  set newValue Launch {..}
    = Launch {scheduledSplitsConfig = newValue, ..}
instance Property "Tags" Launch where
  type PropertyType "Tags" Launch = [Tag]
  set newValue Launch {..}
    = Launch {tags = Prelude.pure newValue, ..}