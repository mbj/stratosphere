module Stratosphere.KinesisFirehose.DeliveryStream.SplunkDestinationConfigurationProperty (
        module Exports, SplunkDestinationConfigurationProperty(..),
        mkSplunkDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SecretsManagerConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SplunkBufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SplunkRetryOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SplunkDestinationConfigurationProperty
  = SplunkDestinationConfigurationProperty {bufferingHints :: (Prelude.Maybe SplunkBufferingHintsProperty),
                                            cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                            hECAcknowledgmentTimeoutInSeconds :: (Prelude.Maybe (Value Prelude.Integer)),
                                            hECEndpoint :: (Value Prelude.Text),
                                            hECEndpointType :: (Value Prelude.Text),
                                            hECToken :: (Prelude.Maybe (Value Prelude.Text)),
                                            processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                            retryOptions :: (Prelude.Maybe SplunkRetryOptionsProperty),
                                            s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                            s3Configuration :: S3DestinationConfigurationProperty,
                                            secretsManagerConfiguration :: (Prelude.Maybe SecretsManagerConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSplunkDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> S3DestinationConfigurationProperty
        -> SplunkDestinationConfigurationProperty
mkSplunkDestinationConfigurationProperty
  hECEndpoint
  hECEndpointType
  s3Configuration
  = SplunkDestinationConfigurationProperty
      {hECEndpoint = hECEndpoint, hECEndpointType = hECEndpointType,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       hECAcknowledgmentTimeoutInSeconds = Prelude.Nothing,
       hECToken = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing,
       secretsManagerConfiguration = Prelude.Nothing}
instance ToResourceProperties SplunkDestinationConfigurationProperty where
  toResourceProperties SplunkDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.SplunkDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["HECEndpoint" JSON..= hECEndpoint,
                            "HECEndpointType" JSON..= hECEndpointType,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "HECAcknowledgmentTimeoutInSeconds"
                                 Prelude.<$> hECAcknowledgmentTimeoutInSeconds,
                               (JSON..=) "HECToken" Prelude.<$> hECToken,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "SecretsManagerConfiguration"
                                 Prelude.<$> secretsManagerConfiguration]))}
instance JSON.ToJSON SplunkDestinationConfigurationProperty where
  toJSON SplunkDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["HECEndpoint" JSON..= hECEndpoint,
               "HECEndpointType" JSON..= hECEndpointType,
               "S3Configuration" JSON..= s3Configuration]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "HECAcknowledgmentTimeoutInSeconds"
                    Prelude.<$> hECAcknowledgmentTimeoutInSeconds,
                  (JSON..=) "HECToken" Prelude.<$> hECToken,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "SecretsManagerConfiguration"
                    Prelude.<$> secretsManagerConfiguration])))
instance Property "BufferingHints" SplunkDestinationConfigurationProperty where
  type PropertyType "BufferingHints" SplunkDestinationConfigurationProperty = SplunkBufferingHintsProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" SplunkDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" SplunkDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "HECAcknowledgmentTimeoutInSeconds" SplunkDestinationConfigurationProperty where
  type PropertyType "HECAcknowledgmentTimeoutInSeconds" SplunkDestinationConfigurationProperty = Value Prelude.Integer
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {hECAcknowledgmentTimeoutInSeconds = Prelude.pure newValue, ..}
instance Property "HECEndpoint" SplunkDestinationConfigurationProperty where
  type PropertyType "HECEndpoint" SplunkDestinationConfigurationProperty = Value Prelude.Text
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {hECEndpoint = newValue, ..}
instance Property "HECEndpointType" SplunkDestinationConfigurationProperty where
  type PropertyType "HECEndpointType" SplunkDestinationConfigurationProperty = Value Prelude.Text
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {hECEndpointType = newValue, ..}
instance Property "HECToken" SplunkDestinationConfigurationProperty where
  type PropertyType "HECToken" SplunkDestinationConfigurationProperty = Value Prelude.Text
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {hECToken = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" SplunkDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" SplunkDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" SplunkDestinationConfigurationProperty where
  type PropertyType "RetryOptions" SplunkDestinationConfigurationProperty = SplunkRetryOptionsProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "S3BackupMode" SplunkDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" SplunkDestinationConfigurationProperty = Value Prelude.Text
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" SplunkDestinationConfigurationProperty where
  type PropertyType "S3Configuration" SplunkDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "SecretsManagerConfiguration" SplunkDestinationConfigurationProperty where
  type PropertyType "SecretsManagerConfiguration" SplunkDestinationConfigurationProperty = SecretsManagerConfigurationProperty
  set newValue SplunkDestinationConfigurationProperty {..}
    = SplunkDestinationConfigurationProperty
        {secretsManagerConfiguration = Prelude.pure newValue, ..}