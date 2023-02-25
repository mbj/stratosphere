module Stratosphere.SageMaker.EndpointConfig.AsyncInferenceOutputConfigProperty (
        module Exports, AsyncInferenceOutputConfigProperty(..),
        mkAsyncInferenceOutputConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SageMaker.EndpointConfig.AsyncInferenceNotificationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AsyncInferenceOutputConfigProperty
  = AsyncInferenceOutputConfigProperty {kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                        notificationConfig :: (Prelude.Maybe AsyncInferenceNotificationConfigProperty),
                                        s3OutputPath :: (Value Prelude.Text)}
mkAsyncInferenceOutputConfigProperty ::
  Value Prelude.Text -> AsyncInferenceOutputConfigProperty
mkAsyncInferenceOutputConfigProperty s3OutputPath
  = AsyncInferenceOutputConfigProperty
      {s3OutputPath = s3OutputPath, kmsKeyId = Prelude.Nothing,
       notificationConfig = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceOutputConfigProperty where
  toResourceProperties AsyncInferenceOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceOutputConfig",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["S3OutputPath" JSON..= s3OutputPath]
                           (Prelude.catMaybes
                              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                               (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig]))}
instance JSON.ToJSON AsyncInferenceOutputConfigProperty where
  toJSON AsyncInferenceOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["S3OutputPath" JSON..= s3OutputPath]
              (Prelude.catMaybes
                 [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                  (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig])))
instance Property "KmsKeyId" AsyncInferenceOutputConfigProperty where
  type PropertyType "KmsKeyId" AsyncInferenceOutputConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceOutputConfigProperty {..}
    = AsyncInferenceOutputConfigProperty
        {kmsKeyId = Prelude.pure newValue, ..}
instance Property "NotificationConfig" AsyncInferenceOutputConfigProperty where
  type PropertyType "NotificationConfig" AsyncInferenceOutputConfigProperty = AsyncInferenceNotificationConfigProperty
  set newValue AsyncInferenceOutputConfigProperty {..}
    = AsyncInferenceOutputConfigProperty
        {notificationConfig = Prelude.pure newValue, ..}
instance Property "S3OutputPath" AsyncInferenceOutputConfigProperty where
  type PropertyType "S3OutputPath" AsyncInferenceOutputConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceOutputConfigProperty {..}
    = AsyncInferenceOutputConfigProperty {s3OutputPath = newValue, ..}