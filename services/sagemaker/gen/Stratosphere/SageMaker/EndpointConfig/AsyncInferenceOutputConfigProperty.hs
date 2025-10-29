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
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceoutputconfig.html>
    AsyncInferenceOutputConfigProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceoutputconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceoutputconfig-kmskeyid>
                                        kmsKeyId :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceoutputconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceoutputconfig-notificationconfig>
                                        notificationConfig :: (Prelude.Maybe AsyncInferenceNotificationConfigProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceoutputconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceoutputconfig-s3failurepath>
                                        s3FailurePath :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-sagemaker-endpointconfig-asyncinferenceoutputconfig.html#cfn-sagemaker-endpointconfig-asyncinferenceoutputconfig-s3outputpath>
                                        s3OutputPath :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAsyncInferenceOutputConfigProperty ::
  AsyncInferenceOutputConfigProperty
mkAsyncInferenceOutputConfigProperty
  = AsyncInferenceOutputConfigProperty
      {kmsKeyId = Prelude.Nothing, notificationConfig = Prelude.Nothing,
       s3FailurePath = Prelude.Nothing, s3OutputPath = Prelude.Nothing}
instance ToResourceProperties AsyncInferenceOutputConfigProperty where
  toResourceProperties AsyncInferenceOutputConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::SageMaker::EndpointConfig.AsyncInferenceOutputConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
                            (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig,
                            (JSON..=) "S3FailurePath" Prelude.<$> s3FailurePath,
                            (JSON..=) "S3OutputPath" Prelude.<$> s3OutputPath])}
instance JSON.ToJSON AsyncInferenceOutputConfigProperty where
  toJSON AsyncInferenceOutputConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "KmsKeyId" Prelude.<$> kmsKeyId,
               (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig,
               (JSON..=) "S3FailurePath" Prelude.<$> s3FailurePath,
               (JSON..=) "S3OutputPath" Prelude.<$> s3OutputPath]))
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
instance Property "S3FailurePath" AsyncInferenceOutputConfigProperty where
  type PropertyType "S3FailurePath" AsyncInferenceOutputConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceOutputConfigProperty {..}
    = AsyncInferenceOutputConfigProperty
        {s3FailurePath = Prelude.pure newValue, ..}
instance Property "S3OutputPath" AsyncInferenceOutputConfigProperty where
  type PropertyType "S3OutputPath" AsyncInferenceOutputConfigProperty = Value Prelude.Text
  set newValue AsyncInferenceOutputConfigProperty {..}
    = AsyncInferenceOutputConfigProperty
        {s3OutputPath = Prelude.pure newValue, ..}