module Stratosphere.SageMaker.Model.InferenceExecutionConfigProperty (
        InferenceExecutionConfigProperty(..),
        mkInferenceExecutionConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InferenceExecutionConfigProperty
  = InferenceExecutionConfigProperty {mode :: (Value Prelude.Text)}
mkInferenceExecutionConfigProperty ::
  Value Prelude.Text -> InferenceExecutionConfigProperty
mkInferenceExecutionConfigProperty mode
  = InferenceExecutionConfigProperty {mode = mode}
instance ToResourceProperties InferenceExecutionConfigProperty where
  toResourceProperties InferenceExecutionConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::Model.InferenceExecutionConfig",
         supportsTags = Prelude.False, properties = ["Mode" JSON..= mode]}
instance JSON.ToJSON InferenceExecutionConfigProperty where
  toJSON InferenceExecutionConfigProperty {..}
    = JSON.object ["Mode" JSON..= mode]
instance Property "Mode" InferenceExecutionConfigProperty where
  type PropertyType "Mode" InferenceExecutionConfigProperty = Value Prelude.Text
  set newValue InferenceExecutionConfigProperty {}
    = InferenceExecutionConfigProperty {mode = newValue, ..}