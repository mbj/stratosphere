module Stratosphere.SageMaker.ModelCard.TrainingHyperParameterProperty (
        TrainingHyperParameterProperty(..),
        mkTrainingHyperParameterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingHyperParameterProperty
  = TrainingHyperParameterProperty {name :: (Value Prelude.Text),
                                    value :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrainingHyperParameterProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> TrainingHyperParameterProperty
mkTrainingHyperParameterProperty name value
  = TrainingHyperParameterProperty {name = name, value = value}
instance ToResourceProperties TrainingHyperParameterProperty where
  toResourceProperties TrainingHyperParameterProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingHyperParameter",
         supportsTags = Prelude.False,
         properties = ["Name" JSON..= name, "Value" JSON..= value]}
instance JSON.ToJSON TrainingHyperParameterProperty where
  toJSON TrainingHyperParameterProperty {..}
    = JSON.object ["Name" JSON..= name, "Value" JSON..= value]
instance Property "Name" TrainingHyperParameterProperty where
  type PropertyType "Name" TrainingHyperParameterProperty = Value Prelude.Text
  set newValue TrainingHyperParameterProperty {..}
    = TrainingHyperParameterProperty {name = newValue, ..}
instance Property "Value" TrainingHyperParameterProperty where
  type PropertyType "Value" TrainingHyperParameterProperty = Value Prelude.Text
  set newValue TrainingHyperParameterProperty {..}
    = TrainingHyperParameterProperty {value = newValue, ..}