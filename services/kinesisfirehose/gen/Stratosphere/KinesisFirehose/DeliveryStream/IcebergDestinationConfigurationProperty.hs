module Stratosphere.KinesisFirehose.DeliveryStream.IcebergDestinationConfigurationProperty (
        module Exports, IcebergDestinationConfigurationProperty(..),
        mkIcebergDestinationConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.BufferingHintsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CatalogConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.CloudWatchLoggingOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.DestinationTableConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.ProcessingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.RetryOptionsProperty as Exports
import {-# SOURCE #-} Stratosphere.KinesisFirehose.DeliveryStream.S3DestinationConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IcebergDestinationConfigurationProperty
  = IcebergDestinationConfigurationProperty {bufferingHints :: (Prelude.Maybe BufferingHintsProperty),
                                             catalogConfiguration :: CatalogConfigurationProperty,
                                             cloudWatchLoggingOptions :: (Prelude.Maybe CloudWatchLoggingOptionsProperty),
                                             destinationTableConfigurationList :: (Prelude.Maybe [DestinationTableConfigurationProperty]),
                                             processingConfiguration :: (Prelude.Maybe ProcessingConfigurationProperty),
                                             retryOptions :: (Prelude.Maybe RetryOptionsProperty),
                                             roleARN :: (Value Prelude.Text),
                                             s3Configuration :: S3DestinationConfigurationProperty,
                                             s3BackupMode :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIcebergDestinationConfigurationProperty ::
  CatalogConfigurationProperty
  -> Value Prelude.Text
     -> S3DestinationConfigurationProperty
        -> IcebergDestinationConfigurationProperty
mkIcebergDestinationConfigurationProperty
  catalogConfiguration
  roleARN
  s3Configuration
  = IcebergDestinationConfigurationProperty
      {catalogConfiguration = catalogConfiguration, roleARN = roleARN,
       s3Configuration = s3Configuration,
       bufferingHints = Prelude.Nothing,
       cloudWatchLoggingOptions = Prelude.Nothing,
       destinationTableConfigurationList = Prelude.Nothing,
       processingConfiguration = Prelude.Nothing,
       retryOptions = Prelude.Nothing, s3BackupMode = Prelude.Nothing}
instance ToResourceProperties IcebergDestinationConfigurationProperty where
  toResourceProperties IcebergDestinationConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisFirehose::DeliveryStream.IcebergDestinationConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["CatalogConfiguration" JSON..= catalogConfiguration,
                            "RoleARN" JSON..= roleARN,
                            "S3Configuration" JSON..= s3Configuration]
                           (Prelude.catMaybes
                              [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                               (JSON..=) "CloudWatchLoggingOptions"
                                 Prelude.<$> cloudWatchLoggingOptions,
                               (JSON..=) "DestinationTableConfigurationList"
                                 Prelude.<$> destinationTableConfigurationList,
                               (JSON..=) "ProcessingConfiguration"
                                 Prelude.<$> processingConfiguration,
                               (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                               (JSON..=) "s3BackupMode" Prelude.<$> s3BackupMode]))}
instance JSON.ToJSON IcebergDestinationConfigurationProperty where
  toJSON IcebergDestinationConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["CatalogConfiguration" JSON..= catalogConfiguration,
               "RoleARN" JSON..= roleARN,
               "S3Configuration" JSON..= s3Configuration]
              (Prelude.catMaybes
                 [(JSON..=) "BufferingHints" Prelude.<$> bufferingHints,
                  (JSON..=) "CloudWatchLoggingOptions"
                    Prelude.<$> cloudWatchLoggingOptions,
                  (JSON..=) "DestinationTableConfigurationList"
                    Prelude.<$> destinationTableConfigurationList,
                  (JSON..=) "ProcessingConfiguration"
                    Prelude.<$> processingConfiguration,
                  (JSON..=) "RetryOptions" Prelude.<$> retryOptions,
                  (JSON..=) "s3BackupMode" Prelude.<$> s3BackupMode])))
instance Property "BufferingHints" IcebergDestinationConfigurationProperty where
  type PropertyType "BufferingHints" IcebergDestinationConfigurationProperty = BufferingHintsProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {bufferingHints = Prelude.pure newValue, ..}
instance Property "CatalogConfiguration" IcebergDestinationConfigurationProperty where
  type PropertyType "CatalogConfiguration" IcebergDestinationConfigurationProperty = CatalogConfigurationProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {catalogConfiguration = newValue, ..}
instance Property "CloudWatchLoggingOptions" IcebergDestinationConfigurationProperty where
  type PropertyType "CloudWatchLoggingOptions" IcebergDestinationConfigurationProperty = CloudWatchLoggingOptionsProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {cloudWatchLoggingOptions = Prelude.pure newValue, ..}
instance Property "DestinationTableConfigurationList" IcebergDestinationConfigurationProperty where
  type PropertyType "DestinationTableConfigurationList" IcebergDestinationConfigurationProperty = [DestinationTableConfigurationProperty]
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {destinationTableConfigurationList = Prelude.pure newValue, ..}
instance Property "ProcessingConfiguration" IcebergDestinationConfigurationProperty where
  type PropertyType "ProcessingConfiguration" IcebergDestinationConfigurationProperty = ProcessingConfigurationProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {processingConfiguration = Prelude.pure newValue, ..}
instance Property "RetryOptions" IcebergDestinationConfigurationProperty where
  type PropertyType "RetryOptions" IcebergDestinationConfigurationProperty = RetryOptionsProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {retryOptions = Prelude.pure newValue, ..}
instance Property "RoleARN" IcebergDestinationConfigurationProperty where
  type PropertyType "RoleARN" IcebergDestinationConfigurationProperty = Value Prelude.Text
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty {roleARN = newValue, ..}
instance Property "S3Configuration" IcebergDestinationConfigurationProperty where
  type PropertyType "S3Configuration" IcebergDestinationConfigurationProperty = S3DestinationConfigurationProperty
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {s3Configuration = newValue, ..}
instance Property "s3BackupMode" IcebergDestinationConfigurationProperty where
  type PropertyType "s3BackupMode" IcebergDestinationConfigurationProperty = Value Prelude.Text
  set newValue IcebergDestinationConfigurationProperty {..}
    = IcebergDestinationConfigurationProperty
        {s3BackupMode = Prelude.pure newValue, ..}