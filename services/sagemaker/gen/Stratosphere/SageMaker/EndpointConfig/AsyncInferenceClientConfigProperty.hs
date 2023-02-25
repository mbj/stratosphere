module Stratosphere.SageMaker.EndpointConfig.AsyncInferenceClientConfigProperty (
        AsyncInferenceClientConfigProperty(..),
        mkAsyncInferenceClientConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AsyncInferenceClientConfigProperty
  = AsyncInferenceClientConfigProperty {maxConcurrentInvocationsPerInstance :: (Prelude.Maybe (Value Prelude.Integer))}
mkAsyncInferenceClientConfigProperty ::
  AsyncInferenceClientConfigProperty
mkAsyncInferenceClientConfigProperty
  = AsyncInferenceClientConfigProperty
      {maxConcurrentInvocationsPerInstance = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceClientConfigProperty where
  toResourceProperties AsyncInferenceClientConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceClientConfig",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MaxConcurrentInvocationsPerInstance"
                              Prelude.<$> maxConcurrentInvocationsPerInstance])}
instance JSON.ToJSON AsyncInferenceClientConfigProperty where
  toJSON AsyncInferenceClientConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MaxConcurrentInvocationsPerInstance"
                 Prelude.<$> maxConcurrentInvocationsPerInstance]))
instance Property "MaxConcurrentInvocationsPerInstance" AsyncInferenceClientConfigProperty where
  type PropertyType "MaxConcurrentInvocationsPerInstance" AsyncInferenceClientConfigProperty = Value Prelude.Integer
  set newValue AsyncInferenceClientConfigProperty {}
    = AsyncInferenceClientConfigProperty
        {maxConcurrentInvocationsPerInstance = Prelude.pure newValue, ..}