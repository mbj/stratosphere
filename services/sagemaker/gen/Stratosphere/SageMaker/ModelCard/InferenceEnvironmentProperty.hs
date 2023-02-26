module Stratosphere.SageMaker.ModelCard.InferenceEnvironmentProperty (
        InferenceEnvironmentProperty(..), mkInferenceEnvironmentProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceEnvironmentProperty
  = InferenceEnvironmentProperty {containerImage :: (Prelude.Maybe (ValueList Prelude.Text))}
mkInferenceEnvironmentProperty :: InferenceEnvironmentProperty
mkInferenceEnvironmentProperty
  = InferenceEnvironmentProperty {containerImage = Prelude.Nothing}
instance ToResourceProperties InferenceEnvironmentProperty where
  toResourceProperties InferenceEnvironmentProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::ModelCard.InferenceEnvironment",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ContainerImage" Prelude.<$> containerImage])}
instance JSON.ToJSON InferenceEnvironmentProperty where
  toJSON InferenceEnvironmentProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ContainerImage" Prelude.<$> containerImage]))
instance Property "ContainerImage" InferenceEnvironmentProperty where
  type PropertyType "ContainerImage" InferenceEnvironmentProperty = ValueList Prelude.Text
  set newValue InferenceEnvironmentProperty {}
    = InferenceEnvironmentProperty
        {containerImage = Prelude.pure newValue, ..}