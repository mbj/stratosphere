module Stratosphere.SageMaker.ModelCard.TrainingEnvironmentProperty (
        TrainingEnvironmentProperty(..), mkTrainingEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TrainingEnvironmentProperty
  = TrainingEnvironmentProperty {containerImage :: (Prelude.Maybe (ValueList (Value Prelude.Text)))}
mkTrainingEnvironmentProperty :: TrainingEnvironmentProperty
mkTrainingEnvironmentProperty
  = TrainingEnvironmentProperty {containerImage = Prelude.Nothing}
instance ToResourceProperties TrainingEnvironmentProperty where
  toResourceProperties TrainingEnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.TrainingEnvironment",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerImage" Prelude.<$> containerImage])}
instance JSON.ToJSON TrainingEnvironmentProperty where
  toJSON TrainingEnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerImage" Prelude.<$> containerImage]))
instance Property "ContainerImage" TrainingEnvironmentProperty where
  type PropertyType "ContainerImage" TrainingEnvironmentProperty = ValueList (Value Prelude.Text)
  set newValue TrainingEnvironmentProperty {}
    = TrainingEnvironmentProperty
        {containerImage = Prelude.pure newValue, ..}