module Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointDestinationConfigurationProperty (
        module Exports, HttpEndpointDestinationConfigurationProperty(..),
        mkHttpEndpointDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointRequestConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SecretsManagerConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HttpEndpointDestinationConfigurationProperty
  = HttpEndpointDestinationConfigurationProperty {bufferingHints :: (Prelude.Maybe BufferingHintsProperty),
                                                  cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                                  endpointConfiguration :: HttpEndpointConfigurationProperty,
                                                  processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                                  requestConfiguration :: (Prelude.Maybe HttpEndpointRequestConfigurationProperty),
                                                  retryOptions :: (Prelude.Maybe RetryOptionsProperty),
                                                  roleARN :: (Prelude.Maybe (Value Prelude.Text)),
                                                  s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                  s3Configuration :: S3DestinationConfigurationProperty,
                                                  secretsManagerConfiguration :: (Prelude.Maybe SecretsManagerConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHttpEndpointDestinationConfigurationProperty ::
  HttpEndpointConfigurationProperty
  -> S3DestinationConfigurationProperty
     -> HttpEndpointDestinationConfigurationProperty
mkHttpEndpointDestinationConfigurationProperty
  endpointConfiguration
  s3Configuration
  = HttpEndpointDestinationConfigurationProperty
      {endpointConfiguration = endpointConfiguration,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       requestConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, roleARN = Prelude.Nothing,
       s3BackupMode = Prelude.Nothing,
       secretsManagerConfiguration = Prelude.Nothing}
instance ToResourceProperties HttpEndpointDestinationConfigurationProperty where
  toResourceProperties
    HttpEndpointDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.HttpEndpointDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["EndpointConfiguration" JSON..= endpointConfiguration,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RequestConfiguration" Prelude.<$> requestConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "RoleARN" Prelude.<$> roleARN,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "SecretsManagerConfiguration"
                                 Prelude.<$> secretsManagerConfiguration]))}
instance JSON.ToJSON HttpEndpointDestinationConfigurationProperty where
  toJSON HttpEndpointDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["EndpointConfiguration" JSON..= endpointConfiguration,
               "S3Configuration" JSON..= s3Configuration]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RequestConfiguration" Prelude.<$> requestConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "RoleARN" Prelude.<$> roleARN,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "SecretsManagerConfiguration"
                    Prelude.<$> secretsManagerConfiguration])))
instance Property "BufferingHints" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "BufferingHints" HttpEndpointDestinationConfigurationProperty = BufferingHintsProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" HttpEndpointDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "EndpointConfiguration" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "EndpointConfiguration" HttpEndpointDestinationConfigurationProperty = HttpEndpointConfigurationProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {endpointConfiguration = newValue, ..}
instance Property "ProcessingConfiguration" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" HttpEndpointDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RequestConfiguration" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "RequestConfiguration" HttpEndpointDestinationConfigurationProperty = HttpEndpointRequestConfigurationProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {requestConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "RetryOptions" HttpEndpointDestinationConfigurationProperty = RetryOptionsProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "RoleARN" HttpEndpointDestinationConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {roleARN = Prelude.pure newValue, ..}
instance Property "S3BackupMode" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" HttpEndpointDestinationConfigurationProperty = Value Prelude.Text
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "S3Configuration" HttpEndpointDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "SecretsManagerConfiguration" HttpEndpointDestinationConfigurationProperty where
  type PropertyType "SecretsManagerConfiguration" HttpEndpointDestinationConfigurationProperty = SecretsManagerConfigurationProperty
  set newValue HttpEndpointDestinationConfigurationProperty {..}
    = HttpEndpointDestinationConfigurationProperty
        {secretsManagerConfiguration = Prelude.pure newValue, ..}