module Stratosphere.S3.Bucket.LoggingConfigurationProperty (
        module Exports, LoggingConfigurationProperty(..),
        mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.S3.Bucket.TargetObjectKeyFormatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigurationProperty
  = LoggingConfigurationProperty {destinationBucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                  logFilePrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                  targetObjectKeyFormat :: (Prelude.Maybe TargetObjectKeyFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {destinationBucketName = Prelude.Nothing,
       logFilePrefix = Prelude.Nothing,
       targetObjectKeyFormat = Prelude.Nothing}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.LoggingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationBucketName"
                              Prelude.<$> destinationBucketName,
                            (JSON..=) "LogFilePrefix" Prelude.<$> logFilePrefix,
                            (JSON..=) "TargetObjectKeyFormat"
                              Prelude.<$> targetObjectKeyFormat])}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationBucketName"
                 Prelude.<$> destinationBucketName,
               (JSON..=) "LogFilePrefix" Prelude.<$> logFilePrefix,
               (JSON..=) "TargetObjectKeyFormat"
                 Prelude.<$> targetObjectKeyFormat]))
instance Property "DestinationBucketName" LoggingConfigurationProperty where
  type PropertyType "DestinationBucketName" LoggingConfigurationProperty = Value Prelude.Text
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {destinationBucketName = Prelude.pure newValue, ..}
instance Property "LogFilePrefix" LoggingConfigurationProperty where
  type PropertyType "LogFilePrefix" LoggingConfigurationProperty = Value Prelude.Text
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {logFilePrefix = Prelude.pure newValue, ..}
instance Property "TargetObjectKeyFormat" LoggingConfigurationProperty where
  type PropertyType "TargetObjectKeyFormat" LoggingConfigurationProperty = TargetObjectKeyFormatProperty
  set newValue LoggingConfigurationProperty {..}
    = LoggingConfigurationProperty
        {targetObjectKeyFormat = Prelude.pure newValue, ..}