module Stratosphere.SageMaker.EndpointConfig.AsyncInferenceNotificationConfigProperty (
        AsyncInferenceNotificationConfigProperty(..),
        mkAsyncInferenceNotificationConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AsyncInferenceNotificationConfigProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferencenotificationconfig.html>
    AsyncInferenceNotificationConfigProperty {haddock_workaround_ :: (),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferencenotificationconfig.html#cfn-sagemaker-endpointconfig-asyncinferencenotificationconfig-errortopic>
                                              errorTopic :: (Prelude.Maybe (Value Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferencenotificationconfig.html#cfn-sagemaker-endpointconfig-asyncinferencenotificationconfig-includeinferenceresponsein>
                                              includeInferenceResponseIn :: (Prelude.Maybe (ValueList Prelude.Text)),
                                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferencenotificationconfig.html#cfn-sagemaker-endpointconfig-asyncinferencenotificationconfig-successtopic>
                                              successTopic :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsyncInferenceNotificationConfigProperty ::
  AsyncInferenceNotificationConfigProperty
mkAsyncInferenceNotificationConfigProperty
  = AsyncInferenceNotificationConfigProperty
      {haddock_workaround_ = (), errorTopic = Prelude.Nothing,
       includeInferenceResponseIn = Prelude.Nothing,
       successTopic = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceNotificationConfigProperty where
  toResourceProperties AsyncInferenceNotificationConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceNotificationConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "ErrorTopic" Prelude.<$> errorTopic,
                            (JSON..=) "IncludeInferenceResponseIn"
                              Prelude.<$> includeInferenceResponseIn,
                            (JSON..=) "SuccessTopic" Prelude.<$> successTopic])}
instance JSON.ToJSON AsyncInferenceNotificationConfigProperty where
  toJSON AsyncInferenceNotificationConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "ErrorTopic" Prelude.<$> errorTopic,
               (JSON..=) "IncludeInferenceResponseIn"
                 Prelude.<$> includeInferenceResponseIn,
               (JSON..=) "SuccessTopic" Prelude.<$> successTopic]))
instance Property "ErrorTopic" AsyncInferenceNotificationConfigProperty where
  type PropertyType "ErrorTopic" AsyncInferenceNotificationConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceNotificationConfigProperty {..}
    = AsyncInferenceNotificationConfigProperty
        {errorTopic = Prelude.pure newValue, ..}
instance Property "IncludeInferenceResponseIn" AsyncInferenceNotificationConfigProperty where
  type PropertyType "IncludeInferenceResponseIn" AsyncInferenceNotificationConfigProperty = ValueList Prelude.Text
  set newValue AsyncInferenceNotificationConfigProperty {..}
    = AsyncInferenceNotificationConfigProperty
        {includeInferenceResponseIn = Prelude.pure newValue, ..}
instance Property "SuccessTopic" AsyncInferenceNotificationConfigProperty where
  type PropertyType "SuccessTopic" AsyncInferenceNotificationConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceNotificationConfigProperty {..}
    = AsyncInferenceNotificationConfigProperty
        {successTopic = Prelude.pure newValue, ..}