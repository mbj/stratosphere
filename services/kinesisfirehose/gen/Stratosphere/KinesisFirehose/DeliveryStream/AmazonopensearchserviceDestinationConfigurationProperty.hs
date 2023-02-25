module Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceDestinationConfigurationProperty (
        module Exports,
        AmazonopensearchserviceDestinationConfigurationProperty(..),
        mkAmazonopensearchserviceDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceBufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.AmazonopensearchserviceRetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.VpcConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AmazonopensearchserviceDestinationConfigurationProperty
  = AmazonopensearchserviceDestinationConfigurationProperty {bufferingHints :: (Prelude.Maybe AmazonopensearchserviceBufferingHintsProperty),
                                                             cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                                             clusterEndpoint :: (Prelude.Maybe (Value Prelude.Text)),
                                                             domainARN :: (Prelude.Maybe (Value Prelude.Text)),
                                                             indexName :: (Value Prelude.Text),
                                                             indexRotationPeriod :: (Prelude.Maybe (Value Prelude.Text)),
                                                             processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                                             retryOptions :: (Prelude.Maybe AmazonopensearchserviceRetryOptionsProperty),
                                                             roleARN :: (Value Prelude.Text),
                                                             s3BackupMode :: (Prelude.Maybe (Value Prelude.Text)),
                                                             s3Configuration :: S3DestinationConfigurationProperty,
                                                             typeName :: (Prelude.Maybe (Value Prelude.Text)),
                                                             vpcConfiguration :: (Prelude.Maybe VpcConfigurationProperty)}
mkAmazonopensearchserviceDestinationConfigurationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> S3DestinationConfigurationProperty
        -> AmazonopensearchserviceDestinationConfigurationProperty
mkAmazonopensearchserviceDestinationConfigurationProperty
  indexName
  roleARN
  s3Configuration
  = AmazonopensearchserviceDestinationConfigurationProperty
      {indexName = indexName, roleARN = roleARN,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       clusterEndpoint = Prelude.Nothing, domainARN = Prelude.Nothing,
       indexRotationPeriod = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing,
       typeName = Prelude.Nothing, vpcConfiguration = Prelude.Nothing}
instance ToResourceProperties AmazonopensearchserviceDestinationConfigurationProperty where
  toResourceProperties
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.AmazonopensearchserviceDestinationConfiguration",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IndexName" JSON..= indexName, "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "ClusterEndpoint" Prelude.<$> clusterEndpoint,
                               (JSON..=) "DomainARN" Prelude.<$> domainARN,
                               (JSON..=) "IndexRotationPeriod" Prelude.<$> indexRotationPeriod,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                               (JSON..=) "TypeName" Prelude.<$> typeName,
                               (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration]))}
instance JSON.ToJSON AmazonopensearchserviceDestinationConfigurationProperty where
  toJSON AmazonopensearchserviceDestinationConfigurationProperty {..}
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
                  (JSON..=) "DomainARN" Prelude.<$> domainARN,
                  (JSON..=) "IndexRotationPeriod" Prelude.<$> indexRotationPeriod,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "S3BackupMode" Prelude.<$> s3BackupMode,
                  (JSON..=) "TypeName" Prelude.<$> typeName,
                  (JSON..=) "VpcConfiguration" Prelude.<$> vpcConfiguration])))
instance Property "BufferingHints" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "BufferingHints" AmazonopensearchserviceDestinationConfigurationProperty = AmazonopensearchserviceBufferingHintsProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CloudWatchLoggingOptions" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" AmazonopensearchserviceDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "ClusterEndpoint" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "ClusterEndpoint" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {clusterEndpoint = Prelude.pure newValue, ..}
instance Property "DomainARN" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "DomainARN" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {domainARN = Prelude.pure newValue, ..}
instance Property "IndexName" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "IndexName" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {indexName = newValue, ..}
instance Property "IndexRotationPeriod" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "IndexRotationPeriod" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {indexRotationPeriod = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" AmazonopensearchserviceDestinationConfigurationProperty = ProcessingConfigurationProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "RetryOptions" AmazonopensearchserviceDestinationConfigurationProperty = AmazonopensearchserviceRetryOptionsProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "RoleARN" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {roleARN = newValue, ..}
instance Property "S3BackupMode" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "S3BackupMode" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}
instance Property "S3Configuration" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "S3Configuration" AmazonopensearchserviceDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "TypeName" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "TypeName" AmazonopensearchserviceDestinationConfigurationProperty = Value Prelude.Text
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {typeName = Prelude.pure newValue, ..}
instance Property "VpcConfiguration" AmazonopensearchserviceDestinationConfigurationProperty where
  type PropertyType "VpcConfiguration" AmazonopensearchserviceDestinationConfigurationProperty = VpcConfigurationProperty
  set
    newValue
    AmazonopensearchserviceDestinationConfigurationProperty {..}
    = AmazonopensearchserviceDestinationConfigurationProperty
        {vpcConfiguration = Prelude.pure newValue, ..}