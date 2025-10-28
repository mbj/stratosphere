module Stratosphere.Evidently.Experiment (
        module Exports, Experiment(..), mkExperiment
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Evidently.Experiment.MetricGoalObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Experiment.OnlineAbConfigObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Experiment.RunningStatusObjectProperty as Exports
import {-# SOURCE #-} Stratosphere.Evidently.Experiment.TreatmentObjectProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Experiment
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html>
    Experiment {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-description>
                description :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-metricgoals>
                metricGoals :: [MetricGoalObjectProperty],
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-name>
                name :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-onlineabconfig>
                onlineAbConfig :: OnlineAbConfigObjectProperty,
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-project>
                project :: (Value Prelude.Text),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-randomizationsalt>
                randomizationSalt :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-removesegment>
                removeSegment :: (Prelude.Maybe (Value Prelude.Bool)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-runningstatus>
                runningStatus :: (Prelude.Maybe RunningStatusObjectProperty),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-samplingrate>
                samplingRate :: (Prelude.Maybe (Value Prelude.Integer)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-segment>
                segment :: (Prelude.Maybe (Value Prelude.Text)),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-tags>
                tags :: (Prelude.Maybe [Tag]),
                -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-evidently-experiment.html#cfn-evidently-experiment-treatments>
                treatments :: [TreatmentObjectProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkExperiment ::
  [MetricGoalObjectProperty]
  -> Value Prelude.Text
     -> OnlineAbConfigObjectProperty
        -> Value Prelude.Text -> [TreatmentObjectProperty] -> Experiment
mkExperiment metricGoals name onlineAbConfig project treatments
  = Experiment
      {metricGoals = metricGoals, name = name,
       onlineAbConfig = onlineAbConfig, project = project,
       treatments = treatments, description = Prelude.Nothing,
       randomizationSalt = Prelude.Nothing,
       removeSegment = Prelude.Nothing, runningStatus = Prelude.Nothing,
       samplingRate = Prelude.Nothing, segment = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Experiment where
  toResourceProperties Experiment {..}
    = ResourceProperties
        {awsType = "AWS::Evidently::Experiment",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricGoals" JSON..= metricGoals, "Name" JSON..= name,
                            "OnlineAbConfig" JSON..= onlineAbConfig, "Project" JSON..= project,
                            "Treatments" JSON..= treatments]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "RandomizationSalt" Prelude.<$> randomizationSalt,
                               (JSON..=) "RemoveSegment" Prelude.<$> removeSegment,
                               (JSON..=) "RunningStatus" Prelude.<$> runningStatus,
                               (JSON..=) "SamplingRate" Prelude.<$> samplingRate,
                               (JSON..=) "Segment" Prelude.<$> segment,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Experiment where
  toJSON Experiment {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricGoals" JSON..= metricGoals, "Name" JSON..= name,
               "OnlineAbConfig" JSON..= onlineAbConfig, "Project" JSON..= project,
               "Treatments" JSON..= treatments]
              (Prelude.catMaybes
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "RandomizationSalt" Prelude.<$> randomizationSalt,
                  (JSON..=) "RemoveSegment" Prelude.<$> removeSegment,
                  (JSON..=) "RunningStatus" Prelude.<$> runningStatus,
                  (JSON..=) "SamplingRate" Prelude.<$> samplingRate,
                  (JSON..=) "Segment" Prelude.<$> segment,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" Experiment where
  type PropertyType "Description" Experiment = Value Prelude.Text
  set newValue Experiment {..}
    = Experiment {description = Prelude.pure newValue, ..}
instance Property "MetricGoals" Experiment where
  type PropertyType "MetricGoals" Experiment = [MetricGoalObjectProperty]
  set newValue Experiment {..}
    = Experiment {metricGoals = newValue, ..}
instance Property "Name" Experiment where
  type PropertyType "Name" Experiment = Value Prelude.Text
  set newValue Experiment {..} = Experiment {name = newValue, ..}
instance Property "OnlineAbConfig" Experiment where
  type PropertyType "OnlineAbConfig" Experiment = OnlineAbConfigObjectProperty
  set newValue Experiment {..}
    = Experiment {onlineAbConfig = newValue, ..}
instance Property "Project" Experiment where
  type PropertyType "Project" Experiment = Value Prelude.Text
  set newValue Experiment {..} = Experiment {project = newValue, ..}
instance Property "RandomizationSalt" Experiment where
  type PropertyType "RandomizationSalt" Experiment = Value Prelude.Text
  set newValue Experiment {..}
    = Experiment {randomizationSalt = Prelude.pure newValue, ..}
instance Property "RemoveSegment" Experiment where
  type PropertyType "RemoveSegment" Experiment = Value Prelude.Bool
  set newValue Experiment {..}
    = Experiment {removeSegment = Prelude.pure newValue, ..}
instance Property "RunningStatus" Experiment where
  type PropertyType "RunningStatus" Experiment = RunningStatusObjectProperty
  set newValue Experiment {..}
    = Experiment {runningStatus = Prelude.pure newValue, ..}
instance Property "SamplingRate" Experiment where
  type PropertyType "SamplingRate" Experiment = Value Prelude.Integer
  set newValue Experiment {..}
    = Experiment {samplingRate = Prelude.pure newValue, ..}
instance Property "Segment" Experiment where
  type PropertyType "Segment" Experiment = Value Prelude.Text
  set newValue Experiment {..}
    = Experiment {segment = Prelude.pure newValue, ..}
instance Property "Tags" Experiment where
  type PropertyType "Tags" Experiment = [Tag]
  set newValue Experiment {..}
    = Experiment {tags = Prelude.pure newValue, ..}
instance Property "Treatments" Experiment where
  type PropertyType "Treatments" Experiment = [TreatmentObjectProperty]
  set newValue Experiment {..}
    = Experiment {treatments = newValue, ..}