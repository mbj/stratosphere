module Stratosphere.KinesisFirehose.DeliveryStream (
        module Exports, DeliveryStream(..), mkDeliveryStream
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonOpenSearchServerlessDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DatabaseSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DeliveryStreamEncryptionConfigurationInputProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DirectPutSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ExtendedS3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.HttpEndpointDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.IcebergDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.KinesisStreamSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.MSKSourceConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RedshiftDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SnowflakeDestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.SplunkDestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data DeliveryStream
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html>
    DeliveryStream {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-amazonopensearchserverlessdestinationconfiguration>
                    amazonOpenSearchServerlessDestinationConfiguration :: (Prelude.Maybe AmazonOpenSearchServerlessDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-amazonopensearchservicedestinationconfiguration>
                    amazonopensearchserviceDestinationConfiguration :: (Prelude.Maybe AmazonopensearchserviceDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-databasesourceconfiguration>
                    databaseSourceConfiguration :: (Prelude.Maybe DatabaseSourceConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamencryptionconfigurationinput>
                    deliveryStreamEncryptionConfigurationInput :: (Prelude.Maybe DeliveryStreamEncryptionConfigurationInputProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamname>
                    deliveryStreamName :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-deliverystreamtype>
                    deliveryStreamType :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-directputsourceconfiguration>
                    directPutSourceConfiguration :: (Prelude.Maybe DirectPutSourceConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-elasticsearchdestinationconfiguration>
                    elasticsearchDestinationConfiguration :: (Prelude.Maybe ElasticsearchDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-extendeds3destinationconfiguration>
                    extendedS3DestinationConfiguration :: (Prelude.Maybe ExtendedS3DestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-httpendpointdestinationconfiguration>
                    httpEndpointDestinationConfiguration :: (Prelude.Maybe HttpEndpointDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-icebergdestinationconfiguration>
                    icebergDestinationConfiguration :: (Prelude.Maybe IcebergDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-kinesisstreamsourceconfiguration>
                    kinesisStreamSourceConfiguration :: (Prelude.Maybe KinesisStreamSourceConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-msksourceconfiguration>
                    mSKSourceConfiguration :: (Prelude.Maybe MSKSourceConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-redshiftdestinationconfiguration>
                    redshiftDestinationConfiguration :: (Prelude.Maybe RedshiftDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-s3destinationconfiguration>
                    s3DestinationConfiguration :: (Prelude.Maybe S3DestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-snowflakedestinationconfiguration>
                    snowflakeDestinationConfiguration :: (Prelude.Maybe SnowflakeDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-splunkdestinationconfiguration>
                    splunkDestinationConfiguration :: (Prelude.Maybe SplunkDestinationConfigurationProperty),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-kinesisfirehose-deliverystream.html#cfn-kinesisfirehose-deliverystream-tags>
                    tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDeliveryStream :: DeliveryStream
mkDeliveryStream
  = DeliveryStream
      {haddock_workaround_ = (),
       amazonOpenSearchServerlessDestinationConfiguration = Prelude.Nothing,
       amazonopensearchserviceDestinationConfiguration = Prelude.Nothing,
       databaseSourceConfiguration = Prelude.Nothing,
       deliveryStreamEncryptionConfigurationInput = Prelude.Nothing,
       deliveryStreamName = Prelude.Nothing,
       deliveryStreamType = Prelude.Nothing,
       directPutSourceConfiguration = Prelude.Nothing,
       elasticsearchDestinationConfiguration = Prelude.Nothing,
       extendedS3DestinationConfiguration = Prelude.Nothing,
       httpEndpointDestinationConfiguration = Prelude.Nothing,
       icebergDestinationConfiguration = Prelude.Nothing,
       kinesisStreamSourceConfiguration = Prelude.Nothing,
       mSKSourceConfiguration = Prelude.Nothing,
       redshiftDestinationConfiguration = Prelude.Nothing,
       s3DestinationConfiguration = Prelude.Nothing,
       snowflakeDestinationConfiguration = Prelude.Nothing,
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
                            (JSON..=) "DatabaseSourceConfiguration"
                              Prelude.<$> databaseSourceConfiguration,
                            (JSON..=) "DeliveryStreamEncryptionConfigurationInput"
                              Prelude.<$> deliveryStreamEncryptionConfigurationInput,
                            (JSON..=) "DeliveryStreamName" Prelude.<$> deliveryStreamName,
                            (JSON..=) "DeliveryStreamType" Prelude.<$> deliveryStreamType,
                            (JSON..=) "DirectPutSourceConfiguration"
                              Prelude.<$> directPutSourceConfiguration,
                            (JSON..=) "ElasticsearchDestinationConfiguration"
                              Prelude.<$> elasticsearchDestinationConfiguration,
                            (JSON..=) "ExtendedS3DestinationConfiguration"
                              Prelude.<$> extendedS3DestinationConfiguration,
                            (JSON..=) "HttpEndpointDestinationConfiguration"
                              Prelude.<$> httpEndpointDestinationConfiguration,
                            (JSON..=) "IcebergDestinationConfiguration"
                              Prelude.<$> icebergDestinationConfiguration,
                            (JSON..=) "KinesisStreamSourceConfiguration"
                              Prelude.<$> kinesisStreamSourceConfiguration,
                            (JSON..=) "MSKSourceConfiguration"
                              Prelude.<$> mSKSourceConfiguration,
                            (JSON..=) "RedshiftDestinationConfiguration"
                              Prelude.<$> redshiftDestinationConfiguration,
                            (JSON..=) "S3DestinationConfiguration"
                              Prelude.<$> s3DestinationConfiguration,
                            (JSON..=) "SnowflakeDestinationConfiguration"
                              Prelude.<$> snowflakeDestinationConfiguration,
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
               (JSON..=) "DatabaseSourceConfiguration"
                 Prelude.<$> databaseSourceConfiguration,
               (JSON..=) "DeliveryStreamEncryptionConfigurationInput"
                 Prelude.<$> deliveryStreamEncryptionConfigurationInput,
               (JSON..=) "DeliveryStreamName" Prelude.<$> deliveryStreamName,
               (JSON..=) "DeliveryStreamType" Prelude.<$> deliveryStreamType,
               (JSON..=) "DirectPutSourceConfiguration"
                 Prelude.<$> directPutSourceConfiguration,
               (JSON..=) "ElasticsearchDestinationConfiguration"
                 Prelude.<$> elasticsearchDestinationConfiguration,
               (JSON..=) "ExtendedS3DestinationConfiguration"
                 Prelude.<$> extendedS3DestinationConfiguration,
               (JSON..=) "HttpEndpointDestinationConfiguration"
                 Prelude.<$> httpEndpointDestinationConfiguration,
               (JSON..=) "IcebergDestinationConfiguration"
                 Prelude.<$> icebergDestinationConfiguration,
               (JSON..=) "KinesisStreamSourceConfiguration"
                 Prelude.<$> kinesisStreamSourceConfiguration,
               (JSON..=) "MSKSourceConfiguration"
                 Prelude.<$> mSKSourceConfiguration,
               (JSON..=) "RedshiftDestinationConfiguration"
                 Prelude.<$> redshiftDestinationConfiguration,
               (JSON..=) "S3DestinationConfiguration"
                 Prelude.<$> s3DestinationConfiguration,
               (JSON..=) "SnowflakeDestinationConfiguration"
                 Prelude.<$> snowflakeDestinationConfiguration,
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
instance Property "DatabaseSourceConfiguration" DeliveryStream where
  type PropertyType "DatabaseSourceConfiguration" DeliveryStream = DatabaseSourceConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {databaseSourceConfiguration = Prelude.pure newValue, ..}
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
instance Property "DirectPutSourceConfiguration" DeliveryStream where
  type PropertyType "DirectPutSourceConfiguration" DeliveryStream = DirectPutSourceConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {directPutSourceConfiguration = Prelude.pure newValue, ..}
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
instance Property "IcebergDestinationConfiguration" DeliveryStream where
  type PropertyType "IcebergDestinationConfiguration" DeliveryStream = IcebergDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {icebergDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "KinesisStreamSourceConfiguration" DeliveryStream where
  type PropertyType "KinesisStreamSourceConfiguration" DeliveryStream = KinesisStreamSourceConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {kinesisStreamSourceConfiguration = Prelude.pure newValue, ..}
instance Property "MSKSourceConfiguration" DeliveryStream where
  type PropertyType "MSKSourceConfiguration" DeliveryStream = MSKSourceConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {mSKSourceConfiguration = Prelude.pure newValue, ..}
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
instance Property "SnowflakeDestinationConfiguration" DeliveryStream where
  type PropertyType "SnowflakeDestinationConfiguration" DeliveryStream = SnowflakeDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {snowflakeDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "SplunkDestinationConfiguration" DeliveryStream where
  type PropertyType "SplunkDestinationConfiguration" DeliveryStream = SplunkDestinationConfigurationProperty
  set newValue DeliveryStream {..}
    = DeliveryStream
        {splunkDestinationConfiguration = Prelude.pure newValue, ..}
instance Property "Tags" DeliveryStream where
  type PropertyType "Tags" DeliveryStream = [Tag]
  set newValue DeliveryStream {..}
    = DeliveryStream {tags = Prelude.pure newValue, ..}