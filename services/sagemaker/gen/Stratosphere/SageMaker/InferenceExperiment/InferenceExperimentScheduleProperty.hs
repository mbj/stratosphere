module Stratosphere.SageMaker.InferenceExperiment.InferenceExperimentScheduleProperty (
        InferenceExperimentScheduleProperty(..),
        mkInferenceExperimentScheduleProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceExperimentScheduleProperty
  = InferenceExperimentScheduleProperty {endTime :: (Prelude.Maybe (Value Prelude.Text)),
                                         startTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceExperimentScheduleProperty ::
  InferenceExperimentScheduleProperty
mkInferenceExperimentScheduleProperty
  = InferenceExperimentScheduleProperty
      {endTime = Prelude.Nothing, startTime = Prelude.Nothing}
instance ToResourceProperties InferenceExperimentScheduleProperty where
  toResourceProperties InferenceExperimentScheduleProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::InferenceExperiment.InferenceExperimentSchedule",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "EndTime" Prelude.<$> endTime,
                            (JSON..=) "StartTime" Prelude.<$> startTime])}
instance JSON.ToJSON InferenceExperimentScheduleProperty where
  toJSON InferenceExperimentScheduleProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "EndTime" Prelude.<$> endTime,
               (JSON..=) "StartTime" Prelude.<$> startTime]))
instance Property "EndTime" InferenceExperimentScheduleProperty where
  type PropertyType "EndTime" InferenceExperimentScheduleProperty = Value Prelude.Text
  set newValue InferenceExperimentScheduleProperty {..}
    = InferenceExperimentScheduleProperty
        {endTime = Prelude.pure newValue, ..}
instance Property "StartTime" InferenceExperimentScheduleProperty where
  type PropertyType "StartTime" InferenceExperimentScheduleProperty = Value Prelude.Text
  set newValue InferenceExperimentScheduleProperty {..}
    = InferenceExperimentScheduleProperty
        {startTime = Prelude.pure newValue, ..}