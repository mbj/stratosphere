module Stratosphere.SageMaker.EndpointConfig.AsyncInferenceConfigProperty (
        module Exports, AsyncInferenceConfigProperty(..),
        mkAsyncInferenceConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.AsyncInferenceClientConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.AsyncInferenceOutputConfigProperty as Exports
import Stratosphere.ResourceProperties
data AsyncInferenceConfigProperty
  = AsyncInferenceConfigProperty {clientConfig :: (Prelude.Maybe AsyncInferenceClientConfigProperty),
                                  outputConfig :: AsyncInferenceOutputConfigProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsyncInferenceConfigProperty ::
  AsyncInferenceOutputConfigProperty -> AsyncInferenceConfigProperty
mkAsyncInferenceConfigProperty outputConfig
  = AsyncInferenceConfigProperty
      {outputConfig = outputConfig, clientConfig = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceConfigProperty where
  toResourceProperties AsyncInferenceConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["OutputConfig" JSON..= outputConfig]
                           (Prelude.catMaybes
                              [(JSON..=) "ClientConfig" Prelude.<$> clientConfig]))}
instance JSON.ToJSON AsyncInferenceConfigProperty where
  toJSON AsyncInferenceConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["OutputConfig" JSON..= outputConfig]
              (Prelude.catMaybes
                 [(JSON..=) "ClientConfig" Prelude.<$> clientConfig])))
instance Property "ClientConfig" AsyncInferenceConfigProperty where
  type PropertyType "ClientConfig" AsyncInferenceConfigProperty = AsyncInferenceClientConfigProperty
  set newValue AsyncInferenceConfigProperty {..}
    = AsyncInferenceConfigProperty
        {clientConfig = Prelude.pure newValue, ..}
instance Property "OutputConfig" AsyncInferenceConfigProperty where
  type PropertyType "OutputConfig" AsyncInferenceConfigProperty = AsyncInferenceOutputConfigProperty
  set newValue AsyncInferenceConfigProperty {..}
    = AsyncInferenceConfigProperty {outputConfig = newValue, ..}