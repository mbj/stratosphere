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
  = AsyncInferenceNotificationConfigProperty {errorTopic :: (Prelude.Maybe (Value Prelude.Text)),
                                              includeInferenceResponseIn :: (Prelude.Maybe (ValueList Prelude.Text)),
                                              successTopic :: (Prelude.Maybe (Value Prelude.Text))}
mkAsyncInferenceNotificationConfigProperty ::
  AsyncInferenceNotificationConfigProperty
mkAsyncInferenceNotificationConfigProperty
  = AsyncInferenceNotificationConfigProperty
      {errorTopic = Prelude.Nothing,
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