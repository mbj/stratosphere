module Stratosphere.SageMaker.ModelCard.TrainingMetricProperty (
        TrainingMetricProperty(..), mkTrainingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingMetricProperty
  = TrainingMetricProperty {name :: (Value Prelude.Text),
                            notes :: (Prelude.Maybe (Value Prelude.Text)),
                            value :: (Value Prelude.Double)}
mkTrainingMetricProperty ::
  Value Prelude.Text
  -> Value Prelude.Double -> TrainingMetricProperty
mkTrainingMetricProperty name value
  = TrainingMetricProperty
      {name = name, value = value, notes = Prelude.Nothing}
instance ToResourceProperties TrainingMetricProperty where
  toResourceProperties TrainingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingMetric",
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