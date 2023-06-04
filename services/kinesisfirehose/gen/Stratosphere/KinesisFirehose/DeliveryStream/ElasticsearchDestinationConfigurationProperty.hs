module Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchDestinationConfigurationProperty (
        module Exports, ElasticsearchDestinationConfigurationProperty(..),
        mkElasticsearchDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DocumentIdOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchBufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ElasticsearchRetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ElasticsearchDestinationConfigurationProperty
  = ElasticsearchDestinationConfigurationProperty {bufferingHints :: (Prelude.Maybe ElasticsearchBufferingHintsProperty),
                                                   cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                                   clusterEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                                   documentIdOptions :: (Prelude.Maybe DocumentIdOptionsProperty),
                                                   domainARN :: (Prelude.Maybe (Value Prelude.Text)),
                                                   indexName :: (Value Prelude.Text),
                                                   indexRotationPeriod :: (Prelude.Maybe (Value Prelude.Text)),
                                                   processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                                   retryOptions :: (Prelude.Maybe ElasticsearchRetryOptionsProperty),
                                                   roleARN :: (Value Prelude.Text),
                                                   s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                   s3Configuration :: S3DestinationConfigurationProperty,
                                                   typeName :: (Prelude.Maybe (Value Prelude.Text)),
                                                   vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
mkElasticsearchDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> S3DestinationConfigurationProperty
        -> ElasticsearchDestinationConfigurationProperty
mkElasticsearchDestinationConfigurationProperty
  indexName
  roleARN
  s3Configuration
  = ElasticsearchDestinationConfigurationProperty
      {indexName = indexName, roleARN = roleARN,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       clusterEndpoint = Prelude.Nothing,
       documentIdOptions = Prelude.Nothing, domainARN = Prelude.Nothing,
       indexRotationPeriod = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing,
       typeName = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties ElasticsearchDestinationConfigurationProperty where
  toResourceProperties
    ElasticsearchDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.ElasticsearchDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName, "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "ClusterEndpoint" Prelude.<$> clusterEndpoint,
                               (JSON..=) "DocumentIdOptions" Prelude.<$> documentIdOptions,
                               (JSON..=) "DomainARN" Prelude.<$> domainARN,
                               (JSON..=) "IndexRotationPeriod" Prelude.<$> indexRotationPeriod,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "TypeName" Prelude.<$> typeName,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON ElasticsearchDestinationConfigurationProperty where
  toJSON ElasticsearchDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IndexName" JSON..= indexName, "RoleARN" JSON..= roleARN,
               "S3Configuration" JSON..= s3Configuration]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "ClusterEndpoint" Prelude.<$> clusterEndpoint,
                  (JSON..=) "DocumentIdOptions" Prelude.<$> documentIdOptions,
                  (JSON..=) "DomainARN" Prelude.<$> domainARN,
                  (JSON..=) "IndexRotationPeriod" Prelude.<$> indexRotationPeriod,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "TypeName" Prelude.<$> typeName,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "BufferingHints" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "BufferingHints" ElasticsearchDestinationConfigurationProperty = ElasticsearchBufferingHintsProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" ElasticsearchDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "ClusterEndpoint" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "ClusterEndpoint" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {clusterEndpoint = Prelude.pure newValue, ..}
instance Property "DocumentIdOptions" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "DocumentIdOptions" ElasticsearchDestinationConfigurationProperty = DocumentIdOptionsProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {documentIdOptions = Prelude.pure newValue, ..}
instance Property "DomainARN" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "DomainARN" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {domainARN = Prelude.pure newValue, ..}
instance Property "IndexName" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "IndexName" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {indexName = newValue, ..}
instance Property "IndexRotationPeriod" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "IndexRotationPeriod" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {indexRotationPeriod = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" ElasticsearchDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "RetryOptions" ElasticsearchDestinationConfigurationProperty = ElasticsearchRetryOptionsProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "RoleARN" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {roleARN = newValue, ..}
instance Property "S3BackupMode" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "S3Configuration" ElasticsearchDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "TypeName" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "TypeName" ElasticsearchDestinationConfigurationProperty = Value Prelude.Text
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {typeName = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" ElasticsearchDestinationConfigurationProperty where
  type PropertyType "VpcConfiguration" ElasticsearchDestinationConfigurationProperty = VpcConfigurationProperty
  set newValue ElasticsearchDestinationConfigurationProperty {..}
    = ElasticsearchDestinationConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}