module Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty (
        module Exports, S3DestinationConfigurationProperty(..),
        mkS3DestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.EncryptionConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data S3DestinationConfigurationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html>
    S3DestinationConfigurationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bucketarn>
                                        bucketARN :: (Value Prelude.Text),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-bufferinghints>
                                        bufferingHints :: (Prelude.Maybe BufferingHintsProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-cloudwatchloggingoptions>
                                        cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-compressionformat>
                                        compressionFormat :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-encryptionconfiguration>
                                        encryptionConfiguration :: (Prelude.Maybe EncryptionConfigurationProperty),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-erroroutputprefix>
                                        errorOutputPrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-prefix>
                                        prefix :: (Prelude.Maybe (Value Prelude.Text)),
                                        -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-kinesisfirehose-deliverystream-s3destinationconfiguration.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration-rolearn>
                                        roleARN :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkS3DestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> S3DestinationConfigurationProperty
mkS3DestinationConfigurationProperty bucketARN roleARN
  = S3DestinationConfigurationProperty
      {bucketARN = bucketARN, roleARN = roleARN,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       compressionFormat = Prelude.Nothing,
       encryptionConfiguration = Prelude.Nothing,
       errorOutputPrefix = Prelude.Nothing, prefix = Prelude.Nothing}
instance ToResourceProperties S3DestinationConfigurationProperty where
  toResourceProperties S3DestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.S3DestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["BucketARN" JSON..= bucketARN, "RoleARN" JSON..= roleARN]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                               (JSON..=) "EncryptionConfiguration"
                                 Prelude.<$> encryptionConfiguration,
                               (JSON..=) "ErrorOutputPrefix" Prelude.<$> errorOutputPrefix,
                               (JSON..=) "Prefix" Prelude.<$> prefix]))}
instance JSON.ToJSON S3DestinationConfigurationProperty where
  toJSON S3DestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["BucketARN" JSON..= bucketARN, "RoleARN" JSON..= roleARN]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "CompressionFormat" Prelude.<$> compressionFormat,
                  (JSON..=) "EncryptionConfiguration"
                    Prelude.<$> encryptionConfiguration,
                  (JSON..=) "ErrorOutputPrefix" Prelude.<$> errorOutputPrefix,
                  (JSON..=) "Prefix" Prelude.<$> prefix])))
instance Property "BucketARN" S3DestinationConfigurationProperty where
  type PropertyType "BucketARN" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {bucketARN = newValue, ..}
instance Property "BufferingHints" S3DestinationConfigurationProperty where
  type PropertyType "BufferingHints" S3DestinationConfigurationProperty = BufferingHintsProperty
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" S3DestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" S3DestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "CompressionFormat" S3DestinationConfigurationProperty where
  type PropertyType "CompressionFormat" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {compressionFormat = Prelude.pure newValue, ..}
instance Property "EncryptionConfiguration" S3DestinationConfigurationProperty where
  type PropertyType "EncryptionConfiguration" S3DestinationConfigurationProperty = EncryptionConfigurationProperty
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {encryptionConfiguration = Prelude.pure newValue, ..}
instance Property "ErrorOutputPrefix" S3DestinationConfigurationProperty where
  type PropertyType "ErrorOutputPrefix" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {errorOutputPrefix = Prelude.pure newValue, ..}
instance Property "Prefix" S3DestinationConfigurationProperty where
  type PropertyType "Prefix" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty
        {prefix = Prelude.pure newValue, ..}
instance Property "RoleARN" S3DestinationConfigurationProperty where
  type PropertyType "RoleARN" S3DestinationConfigurationProperty = Value Prelude.Text
  set newValue S3DestinationConfigurationProperty {..}
    = S3DestinationConfigurationProperty {roleARN = newValue, ..}