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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceclientconfig.html>
    AsyncInferenceClientConfigProperty {haddock_workaround_ :: (),
                                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceclientconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceclientconfig-maxconcurrentinvocationsperinstance>
                                        maxConcurrentInvocationsPerInstance :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsyncInferenceClientConfigProperty ::
  AsyncInferenceClientConfigProperty
mkAsyncInferenceClientConfigProperty
  = AsyncInferenceClientConfigProperty
      {haddock_workaround_ = (),
       maxConcurrentInvocationsPerInstance = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceClientConfigProperty where
  toResourceProperties AsyncInferenceClientConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceClientConfig",
         supportsTags = Prelude.False,
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
  set newValue AsyncInferenceClientConfigProperty {..}
    = AsyncInferenceClientConfigProperty
        {maxConcurrentInvocationsPerInstance = Prelude.pure newValue, ..}