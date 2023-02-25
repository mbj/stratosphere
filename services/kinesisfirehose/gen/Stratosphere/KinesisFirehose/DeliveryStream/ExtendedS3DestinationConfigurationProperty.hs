module Stratosphere.KinesisFirehose.DeliveryStream.ExtendedS3DestinationConfigurationProperty (
        module Exports, ExtendedS3DestinationConfigurationProperty(..),
        mkExtendedS3DestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DataFormatConversionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DynamicPartitioningConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.EncryptionConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ExtendedS3DestinationConfigurationProperty
  = ExtendedS3DestinationConfigurationProperty {bucketARN :: (Value Prelude.Text),
                                                bufferingHints :: (Prelude.Maybe BufferingHintsProperty),
                                                cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                                compressionFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                                dataFormatConversionConfiguration :: (Prelude.Maybe DataFormatConversionConfigurationProperty),
                                                dynamicPartitioningConfiguration :: (Prelude.Maybe DynamicPartitioningConfigurationProperty),
                                                encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                                errorOutputPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                                processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                                roleARN :: (Value Prelude.Text),
                                                s3BackupConfiguration :: (Prelude.Maybe S3DestinationConfigurationProperty),
                                                s3BackupMode :: (Prelude.Maybe (Value Prelude.Text))}
mkExtendedS3DestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> ExtendedS3DestinationConfigurationProperty
mkExtendedS3DestinationConfigurationProperty bucketARN roleARN
  = ExtendedS3DestinationConfigurationProperty
      {bucketARN = bucketARN, roleARN = roleARN,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       compressionFormat = Prelude.Nothing,
       dataFormatConversionConfiguration = Prelude.Nothing,
       dynamicPartitioningConfiguration = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       errorOutputPrefix = Prelude.Nothing, prefix = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       s3BackupConfiguration = Prelude.Nothing,
       s3BackupMode = Prelude.Nothing}
instance ToResourceProperties ExtendedS3DestinationConfigurationProperty where
  toResourceProperties
    ExtendedS3DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ExtendedS3DestinationConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketARN" JSON..= bucketARN, "RoleARN" JSON..= roleARN]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                               (JSON..=) "DataFormatConversionConfiguration"
                                 Prelude.<$> dataFormatConversionConfiguration,
                               (JSON..=) "DynamicPartitioningConfiguration"
                                 Prelude.<$> dynamicPartitioningConfiguration,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "ErrorOutputPrefix" Prelude.<$> errorOutputPrefix,
                               (JSON..=) "Prefix" Prelude.<$> prefix,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "S3BackupConfiguration"
                                 Prelude.<$> s3BackupConfiguration,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode]))}
instance JSON.ToJSON ExtendedS3DestinationConfigurationProperty where
  toJSON ExtendedS3DestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketARN" JSON..= bucketARN, "RoleARN" JSON..= roleARN]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                  (JSON..=) "DataFormatConversionConfiguration"
                    Prelude.<$> dataFormatConversionConfiguration,
                  (JSON..=) "DynamicPartitioningConfiguration"
                    Prelude.<$> dynamicPartitioningConfiguration,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "ErrorOutputPrefix" Prelude.<$> errorOutputPrefix,
                  (JSON..=) "Prefix" Prelude.<$> prefix,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "S3BackupConfiguration"
                    Prelude.<$> s3BackupConfiguration,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode])))
instance Property "BucketARN" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "BucketARN" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {bucketARN = newValue, ..}
instance Property "BufferingHints" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "BufferingHints" ExtendedS3DestinationConfigurationProperty = BufferingHintsProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" ExtendedS3DestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "CompressionFormat" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "CompressionFormat" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {compressionFormat = Prelude.pure newValue, ..}
instance Property "DataFormatConversionConfiguration" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "DataFormatConversionConfiguration" ExtendedS3DestinationConfigurationProperty = DataFormatConversionConfigurationProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {dataFormatConversionConfiguration = Prelude.pure newValue, ..}
instance Property "DynamicPartitioningConfiguration" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "DynamicPartitioningConfiguration" ExtendedS3DestinationConfigurationProperty = DynamicPartitioningConfigurationProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {dynamicPartitioningConfiguration = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "EncryptionConfiguration" ExtendedS3DestinationConfigurationProperty = EncryptionConfigurationProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "ErrorOutputPrefix" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "ErrorOutputPrefix" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {errorOutputPrefix = Prelude.pure newValue, ..}
instance Property "Prefix" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "Prefix" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" ExtendedS3DestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RoleARN" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "RoleARN" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {roleARN = newValue, ..}
instance Property "S3BackupConfiguration" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "S3BackupConfiguration" ExtendedS3DestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {s3BackupConfiguration = Prelude.pure newValue, ..}
instance Property "S3BackupMode" ExtendedS3DestinationConfigurationProperty where
  type PropertyType "S3BackupMode" ExtendedS3DestinationConfigurationProperty = Value Prelude.Text
  set newValue ExtendedS3DestinationConfigurationProperty {..}
    = ExtendedS3DestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}