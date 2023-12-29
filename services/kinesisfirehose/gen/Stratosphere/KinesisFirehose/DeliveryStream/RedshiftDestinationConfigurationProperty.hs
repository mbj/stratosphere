module Stratosphere.KinesisFirehose.DeliveryStream.RedshiftDestinationConfigurationProperty (
        module Exports, RedshiftDestinationConfigurationProperty(..),
        mkRedshiftDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CopyCommandProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RedshiftRetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RedshiftDestinationConfigurationProperty
  = RedshiftDestinationConfigurationProperty {cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                              clusterJDBCURL :: (Value Prelude.Text),
                                              copyCommand :: CopyCommandProperty,
                                              password :: (Value Prelude.Text),
                                              processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                              retryOptions :: (Prelude.Maybe RedshiftRetryOptionsProperty),
                                              roleARN :: (Value Prelude.Text),
                                              s3BackupConfiguration :: (Prelude.Maybe S3DestinationConfigurationProperty),
                                              s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                              s3Configuration :: S3DestinationConfigurationProperty,
                                              username :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRedshiftDestinationConfigurationProperty ::
  Value Prelude.Text
  -> CopyCommandProperty
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> S3DestinationConfigurationProperty
              -> Value Prelude.Text -> RedshiftDestinationConfigurationProperty
mkRedshiftDestinationConfigurationProperty
  clusterJDBCURL
  copyCommand
  password
  roleARN
  s3Configuration
  username
  = RedshiftDestinationConfigurationProperty
      {clusterJDBCURL = clusterJDBCURL, copyCommand = copyCommand,
       password = password, roleARN = roleARN,
       s3Configuration = s3Configuration, username = username,
       cloudWatchLoggingOptions = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing,
       s3BackupConfiguration = Prelude.Nothing,
       s3BackupMode = Prelude.Nothing}
instance ToResourceProperties RedshiftDestinationConfigurationProperty where
  toResourceProperties RedshiftDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.RedshiftDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ClusterJDBCURL" JSON..= clusterJDBCURL,
                            "CopyCommand" JSON..= copyCommand, "Password" JSON..= password,
                            "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration,
                            "Username" JSON..= username]
                           (Prelude.catMaybes
                              [(JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupConfiguration"
                                 Prelude.<$> s3BackupConfiguration,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode]))}
instance JSON.ToJSON RedshiftDestinationConfigurationProperty where
  toJSON RedshiftDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ClusterJDBCURL" JSON..= clusterJDBCURL,
               "CopyCommand" JSON..= copyCommand, "Password" JSON..= password,
               "RoleARN" JSON..= roleARN,
               "S3Configuration" JSON..= s3Configuration,
               "Username" JSON..= username]
              (Prelude.catMaybes
                 [(JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupConfiguration"
                    Prelude.<$> s3BackupConfiguration,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode])))
instance Property "CloudWatchLoggingOptions" RedshiftDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" RedshiftDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "ClusterJDBCURL" RedshiftDestinationConfigurationProperty where
  type PropertyType "ClusterJDBCURL" RedshiftDestinationConfigurationProperty = Value Prelude.Text
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {clusterJDBCURL = newValue, ..}
instance Property "CopyCommand" RedshiftDestinationConfigurationProperty where
  type PropertyType "CopyCommand" RedshiftDestinationConfigurationProperty = CopyCommandProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {copyCommand = newValue, ..}
instance Property "Password" RedshiftDestinationConfigurationProperty where
  type PropertyType "Password" RedshiftDestinationConfigurationProperty = Value Prelude.Text
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {password = newValue, ..}
instance Property "ProcessingConfiguration" RedshiftDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" RedshiftDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" RedshiftDestinationConfigurationProperty where
  type PropertyType "RetryOptions" RedshiftDestinationConfigurationProperty = RedshiftRetryOptionsProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" RedshiftDestinationConfigurationProperty where
  type PropertyType "RoleARN" RedshiftDestinationConfigurationProperty = Value Prelude.Text
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty {roleARN = newValue, ..}
instance Property "S3BackupConfiguration" RedshiftDestinationConfigurationProperty where
  type PropertyType "S3BackupConfiguration" RedshiftDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {s3BackupConfiguration = Prelude.pure newValue, ..}
instance Property "S3BackupMode" RedshiftDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" RedshiftDestinationConfigurationProperty = Value Prelude.Text
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" RedshiftDestinationConfigurationProperty where
  type PropertyType "S3Configuration" RedshiftDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "Username" RedshiftDestinationConfigurationProperty where
  type PropertyType "Username" RedshiftDestinationConfigurationProperty = Value Prelude.Text
  set newValue RedshiftDestinationConfigurationProperty {..}
    = RedshiftDestinationConfigurationProperty
        {username = newValue, ..}