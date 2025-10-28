module Stratosphere.SageMaker.ModelCard.TrainingMetricProperty (
        TrainingMetricProperty(..), mkTrainingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingmetric.html>
    TrainingMetricProperty {haddock_workaround_ :: (),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingmetric.html#cfn-sagemaker-modelcard-trainingmetric-name>
                            name :: (Value Prelude.Text),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingmetric.html#cfn-sagemaker-modelcard-trainingmetric-notes>
                            notes :: (Prelude.Maybe (Value Prelude.Text)),
                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-modelcard-trainingmetric.html#cfn-sagemaker-modelcard-trainingmetric-value>
                            value :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingMetricProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> TrainingMetricProperty
mkTrainingMetricProperty name value
  = TrainingMetricProperty
      {haddock_workaround_ = (), name = name, value = value,
       notes = Prelude.Nothing}
instance ToResourceProperties TrainingMetricProperty where
  toResourceProperties TrainingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Name" JSON..= name, "Value" JSON..= value]
                           (Prelude.catMaybes [(JSON..=) "Notes" Prelude.<$> notes]))}
instance JSON.ToJSON TrainingMetricProperty where
  toJSON TrainingMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Name" JSON..= name, "Value" JSON..= value]
              (Prelude.catMaybes [(JSON..=) "Notes" Prelude.<$> notes])))
instance Property "Name" TrainingMetricProperty where
  type PropertyType "Name" TrainingMetricProperty = Value Prelude.Text
  set newValue TrainingMetricProperty {..}
    = TrainingMetricProperty {name = newValue, ..}
instance Property "Notes" TrainingMetricProperty where
  type PropertyType "Notes" TrainingMetricProperty = Value Prelude.Text
  set newValue TrainingMetricProperty {..}
    = TrainingMetricProperty {notes = Prelude.pure newValue, ..}
instance Property "Value" TrainingMetricProperty where
  type PropertyType "Value" TrainingMetricProperty = Value Prelude.Double
  set newValue TrainingMetricProperty {..}
    = TrainingMetricProperty {value = newValue, ..}