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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfiguration.html>
    LoggingConfigurationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfiguration.html#cfn-s3-bucket-loggingconfiguration-destinationbucketname>
                                  destinationBucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfiguration.html#cfn-s3-bucket-loggingconfiguration-logfileprefix>
                                  logFilePrefix :: (Prelude.Maybe (Value Prelude.Text)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-s3-bucket-loggingconfiguration.html#cfn-s3-bucket-loggingconfiguration-targetobjectkeyformat>
                                  targetObjectKeyFormat :: (Prelude.Maybe TargetObjectKeyFormatProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {haddock_workaround_ = (), destinationBucketName = Prelude.Nothing,
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