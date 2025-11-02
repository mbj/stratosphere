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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-inferenceexperimentschedule.html>
    InferenceExperimentScheduleProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-inferenceexperimentschedule.html#cfn-sagemaker-inferenceexperiment-inferenceexperimentschedule-endtime>
                                         endTime :: (Prelude.Maybe (Value Prelude.Text)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-inferenceexperiment-inferenceexperimentschedule.html#cfn-sagemaker-inferenceexperiment-inferenceexperimentschedule-starttime>
                                         startTime :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInferenceExperimentScheduleProperty ::
  InferenceExperimentScheduleProperty
mkInferenceExperimentScheduleProperty
  = InferenceExperimentScheduleProperty
      {haddock_workaround_ = (), endTime = Prelude.Nothing,
       startTime = Prelude.Nothing}
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