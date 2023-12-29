module Stratosphere.KinesisFirehose.DeliveryStream (
        module Exports, DeliveryStream(..), mkDeliveryStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DeliveryStreamEncryptionConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ExtendedS3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.KinesisStreamSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RedshiftDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SplunkDestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeliveryStream
  = DeliveryStream {amazonOpenSearchServerlessDestinationConfiguration :: (Prelude.Maybe AmazonOpenSearchServerlessDestinationConfigurationProperty),
                    amazonopensearchserviceDestinationConfiguration :: (Prelude.Maybe AmazonopensearchserviceDestinationConfigurationProperty),
                    deliveryStreamEncryptionConfigurationInput :: (Prelude.Maybe DeliveryStreamEncryptionConfigurationInputProperty),
                    deliveryStreamName :: (Prelude.Maybe (Value Prelude.Text)),
                    deliveryStreamType :: (Prelude.Maybe (Value Prelude.Text)),
                    elasticsearchDestinationConfiguration :: (Prelude.Maybe ElasticsearchDestinationConfigurationProperty),
                    extendedS3DestinationConfiguration :: (Prelude.Maybe ExtendedS3DestinationConfigurationProperty),
                    httpEndpointDestinationConfiguration :: (Prelude.Maybe HttpEndpointDestinationConfigurationProperty),
                    kinesisStreamSourceConfiguration :: (Prelude.Maybe KinesisStreamSourceConfigurationProperty),
                    redshiftDestinationConfiguration :: (Prelude.Maybe RedshiftDestinationConfigurationProperty),
                    s3DestinationConfiguration :: (Prelude.Maybe S3DestinationConfigurationProperty),
                    splunkDestinationConfiguration :: (Prelude.Maybe SplunkDestinationConfigurationProperty),
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryStream :: DeliveryStream
mkDeliveryStream
  = DeliveryStream
      {amazonOpenSearchServerlessDestinationConfiguration = Prelude.Nothing,
       amazonopensearchserviceDestinationConfiguration = Prelude.Nothing,
       deliveryStreamEncryptionConfigurationInput = Prelude.Nothing,
       deliveryStreamName = Prelude.Nothing,
       deliveryStreamType = Prelude.Nothing,
       elasticsearchDestinationConfiguration = Prelude.Nothing,
       extendedS3DestinationConfiguration = Prelude.Nothing,
       httpEndpointDestinationConfiguration = Prelude.Nothing,
       kinesisStreamSourceConfiguration = Prelude.Nothing,
       redshiftDestinationConfiguration = Prelude.Nothing,
       s3DestinationConfiguration = Prelude.Nothing,
       splunkDestinationConfiguration = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties DeliveryStream where
  toResourceProperties DeliveryStream {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AmazonOpenSearchServerlessDestinationConfiguration"
                              Prelude.<$> amazonOpenSearchServerlessDestinationConfiguration,
                            (JSON..=) "AmazonopensearchserviceDestinationConfiguration"
                              Prelude.<$> amazonopensearchserviceDestinationConfiguration,
                            (JSON..=) "DeliveryStreamEncryptionConfigurationInput"
                              Prelude.<$> deliveryStreamEncryptionConfigurationInput,
                            (JSON..=) "DeliveryStreamName" Prelude.<$> deliveryStreamName,
                            (JSON..=) "DeliveryStreamType" Prelude.<$> deliveryStreamType,
                            (JSON..=) "ElasticsearchDestinationConfiguration"
                              Prelude.<$> elasticsearchDestinationConfiguration,
                            (JSON..=) "ExtendedS3DestinationConfiguration"
                              Prelude.<$> extendedS3DestinationConfiguration,
                            (JSON..=) "HttpEndpointDestinationConfiguration"
                              Prelude.<$> httpEndpointDestinationConfiguration,
                            (JSON..=) "KinesisStreamSourceConfiguration"
                              Prelude.<$> kinesisStreamSourceConfiguration,
                            (JSON..=) "RedshiftDestinationConfiguration"
                              Prelude.<$> redshiftDestinationConfiguration,
                            (JSON..=) "S3DestinationConfiguration"
                              Prelude.<$> s3DestinationConfiguration,
                            (JSON..=) "SplunkDestinationConfiguration"
                              Prelude.<$> splunkDestinationConfiguration,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON DeliveryStream where
  toJSON DeliveryStream {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AmazonOpenSearchServerlessDestinationConfiguration"
                 Prelude.<$> amazonOpenSearchServerlessDestinationConfiguration,
               (JSON..=) "AmazonopensearchserviceDestinationConfiguration"
                 Prelude.<$> amazonopensearchserviceDestinationConfiguration,
               (JSON..=) "DeliveryStreamEncryptionConfigurationInput"
                 Prelude.<$> deliveryStreamEncryptionConfigurationInput,
               (JSON..=) "DeliveryStreamName" Prelude.<$> deliveryStreamName,
               (JSON..=) "DeliveryStreamType" Prelude.<$> deliveryStreamType,
               (JSON..=) "ElasticsearchDestinationConfiguration"
                 Prelude.<$> elasticsearchDestinationConfiguration,
               (JSON..=) "ExtendedS3DestinationConfiguration"
                 Prelude.<$> extendedS3DestinationConfiguration,
               (JSON..=) "HttpEndpointDestinationConfiguration"
                 Prelude.<$> httpEndpointDestinationConfiguration,
               (JSON..=) "KinesisStreamSourceConfiguration"
                 Prelude.<$> kinesisStreamSourceConfiguration,
               (JSON..=) "RedshiftDestinationConfiguration"
                 Prelude.<$> redshiftDestinationConfiguration,
               (JSON..=) "S3DestinationConfiguration"
                 Prelude.<$> s3DestinationConfiguration,
               (JSON..=) "SplunkDestinationConfiguration"
                 Prelude.<$> splunkDestinationConfiguration,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "AmazonOpenSearchServerlessDestinationConfiguration" DeliveryStream where
  type PropertyType "AmazonOpenSearchServerlessDestinationConfiguration" DeliveryStream = AmazonOpenSearchServerlessDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {amazonOpenSearchServerlessDestinationConfiguration = Prelude.pure
                                                                newValue,
         ..}
instance Property "AmazonopensearchserviceDestinationConfiguration" DeliveryStream where
  type PropertyType "AmazonopensearchserviceDestinationConfiguration" DeliveryStream = AmazonopensearchserviceDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {amazonopensearchserviceDestinationConfiguration = Prelude.pure
                                                             newValue,
         ..}
instance Property "DeliveryStreamEncryptionConfigurationInput" DeliveryStream where
  type PropertyType "DeliveryStreamEncryptionConfigurationInput" DeliveryStream = DeliveryStreamEncryptionConfigurationInputProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {deliveryStreamEncryptionConfigurationInput = Prelude.pure
                                                        newValue,
         ..}
instance Property "DeliveryStreamName" DeliveryStream where
  type PropertyType "DeliveryStreamName" DeliveryStream = Value Prelude.Text
  set newValue DeliveryStream {..}
    = DeliveryStream {deliveryStreamName = Prelude.pure newValue, ..}
instance Property "DeliveryStreamType" DeliveryStream where
  type PropertyType "DeliveryStreamType" DeliveryStream = Value Prelude.Text
  set newValue DeliveryStream {..}
    = DeliveryStream {deliveryStreamType = Prelude.pure newValue, ..}
instance Property "ElasticsearchDestinationConfiguration" DeliveryStream where
  type PropertyType "ElasticsearchDestinationConfiguration" DeliveryStream = ElasticsearchDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {elasticsearchDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "ExtendedS3DestinationConfiguration" DeliveryStream where
  type PropertyType "ExtendedS3DestinationConfiguration" DeliveryStream = ExtendedS3DestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {extendedS3DestinationConfiguration = Prelude.pure newValue, ..}
instance Property "HttpEndpointDestinationConfiguration" DeliveryStream where
  type PropertyType "HttpEndpointDestinationConfiguration" DeliveryStream = HttpEndpointDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {httpEndpointDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "KinesisStreamSourceConfiguration" DeliveryStream where
  type PropertyType "KinesisStreamSourceConfiguration" DeliveryStream = KinesisStreamSourceConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {kinesisStreamSourceConfiguration = Prelude.pure newValue, ..}
instance Property "RedshiftDestinationConfiguration" DeliveryStream where
  type PropertyType "RedshiftDestinationConfiguration" DeliveryStream = RedshiftDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {redshiftDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "S3DestinationConfiguration" DeliveryStream where
  type PropertyType "S3DestinationConfiguration" DeliveryStream = S3DestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {s3DestinationConfiguration = Prelude.pure newValue, ..}
instance Property "SplunkDestinationConfiguration" DeliveryStream where
  type PropertyType "SplunkDestinationConfiguration" DeliveryStream = SplunkDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {splunkDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DeliveryStream where
  type PropertyType "Tags" DeliveryStream = [Tag]
  set newValue DeliveryStream {..}
    = DeliveryStream {tags = Prelude.pure newValue, ..}