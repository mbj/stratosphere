module Stratosphere.SSM.MaintenanceWindowTask.MaintenanceWindowRunCommandParametersProperty (
        module Exports, MaintenanceWindowRunCommandParametersProperty(..),
        mkMaintenanceWindowRunCommandParametersProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.CloudWatchOutputConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.SSM.MaintenanceWindowTask.NotificationConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MaintenanceWindowRunCommandParametersProperty
  = MaintenanceWindowRunCommandParametersProperty {cloudWatchOutputConfig :: (Prelude.Maybe CloudWatchOutputConfigProperty),
                                                   comment :: (Prelude.Maybe (Value Prelude.Text)),
                                                   documentHash :: (Prelude.Maybe (Value Prelude.Text)),
                                                   documentHashType :: (Prelude.Maybe (Value Prelude.Text)),
                                                   documentVersion :: (Prelude.Maybe (Value Prelude.Text)),
                                                   notificationConfig :: (Prelude.Maybe NotificationConfigProperty),
                                                   outputS3BucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   outputS3KeyPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                   parameters :: (Prelude.Maybe JSON.Object),
                                                   serviceRoleArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                   timeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
mkMaintenanceWindowRunCommandParametersProperty ::
  MaintenanceWindowRunCommandParametersProperty
mkMaintenanceWindowRunCommandParametersProperty
  = MaintenanceWindowRunCommandParametersProperty
      {cloudWatchOutputConfig = Prelude.Nothing,
       comment = Prelude.Nothing, documentHash = Prelude.Nothing,
       documentHashType = Prelude.Nothing,
       documentVersion = Prelude.Nothing,
       notificationConfig = Prelude.Nothing,
       outputS3BucketName = Prelude.Nothing,
       outputS3KeyPrefix = Prelude.Nothing, parameters = Prelude.Nothing,
       serviceRoleArn = Prelude.Nothing, timeoutSeconds = Prelude.Nothing}
instance ToResourceProperties MaintenanceWindowRunCommandParametersProperty where
  toResourceProperties
    MaintenanceWindowRunCommandParametersProperty {..}
    = ResourceProperties
        {awsType = "AWS::SSM::MaintenanceWindowTask.MaintenanceWindowRunCommandParameters",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchOutputConfig"
                              Prelude.<$> cloudWatchOutputConfig,
                            (JSON..=) "Comment" Prelude.<$> comment,
                            (JSON..=) "DocumentHash" Prelude.<$> documentHash,
                            (JSON..=) "DocumentHashType" Prelude.<$> documentHashType,
                            (JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
                            (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig,
                            (JSON..=) "OutputS3BucketName" Prelude.<$> outputS3BucketName,
                            (JSON..=) "OutputS3KeyPrefix" Prelude.<$> outputS3KeyPrefix,
                            (JSON..=) "Parameters" Prelude.<$> parameters,
                            (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn,
                            (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds])}
instance JSON.ToJSON MaintenanceWindowRunCommandParametersProperty where
  toJSON MaintenanceWindowRunCommandParametersProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchOutputConfig"
                 Prelude.<$> cloudWatchOutputConfig,
               (JSON..=) "Comment" Prelude.<$> comment,
               (JSON..=) "DocumentHash" Prelude.<$> documentHash,
               (JSON..=) "DocumentHashType" Prelude.<$> documentHashType,
               (JSON..=) "DocumentVersion" Prelude.<$> documentVersion,
               (JSON..=) "NotificationConfig" Prelude.<$> notificationConfig,
               (JSON..=) "OutputS3BucketName" Prelude.<$> outputS3BucketName,
               (JSON..=) "OutputS3KeyPrefix" Prelude.<$> outputS3KeyPrefix,
               (JSON..=) "Parameters" Prelude.<$> parameters,
               (JSON..=) "ServiceRoleArn" Prelude.<$> serviceRoleArn,
               (JSON..=) "TimeoutSeconds" Prelude.<$> timeoutSeconds]))
instance Property "CloudWatchOutputConfig" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "CloudWatchOutputConfig" MaintenanceWindowRunCommandParametersProperty = CloudWatchOutputConfigProperty
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {cloudWatchOutputConfig = Prelude.pure newValue, ..}
instance Property "Comment" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "Comment" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {comment = Prelude.pure newValue, ..}
instance Property "DocumentHash" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "DocumentHash" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {documentHash = Prelude.pure newValue, ..}
instance Property "DocumentHashType" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "DocumentHashType" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {documentHashType = Prelude.pure newValue, ..}
instance Property "DocumentVersion" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "DocumentVersion" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {documentVersion = Prelude.pure newValue, ..}
instance Property "NotificationConfig" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "NotificationConfig" MaintenanceWindowRunCommandParametersProperty = NotificationConfigProperty
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {notificationConfig = Prelude.pure newValue, ..}
instance Property "OutputS3BucketName" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "OutputS3BucketName" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {outputS3BucketName = Prelude.pure newValue, ..}
instance Property "OutputS3KeyPrefix" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "OutputS3KeyPrefix" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {outputS3KeyPrefix = Prelude.pure newValue, ..}
instance Property "Parameters" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "Parameters" MaintenanceWindowRunCommandParametersProperty = JSON.Object
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {parameters = Prelude.pure newValue, ..}
instance Property "ServiceRoleArn" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "ServiceRoleArn" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Text
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {serviceRoleArn = Prelude.pure newValue, ..}
instance Property "TimeoutSeconds" MaintenanceWindowRunCommandParametersProperty where
  type PropertyType "TimeoutSeconds" MaintenanceWindowRunCommandParametersProperty = Value Prelude.Integer
  set newValue MaintenanceWindowRunCommandParametersProperty {..}
    = MaintenanceWindowRunCommandParametersProperty
        {timeoutSeconds = Prelude.pure newValue, ..}