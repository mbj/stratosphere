module Stratosphere.S3.Bucket.LoggingConfigurationProperty (
        LoggingConfigurationProperty(..), mkLoggingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LoggingConfigurationProperty
  = LoggingConfigurationProperty {destinationBucketName :: (Prelude.Maybe (Value Prelude.Text)),
                                  logFilePrefix :: (Prelude.Maybe (Value Prelude.Text))}
mkLoggingConfigurationProperty :: LoggingConfigurationProperty
mkLoggingConfigurationProperty
  = LoggingConfigurationProperty
      {destinationBucketName = Prelude.Nothing,
       logFilePrefix = Prelude.Nothing}
instance ToResourceProperties LoggingConfigurationProperty where
  toResourceProperties LoggingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::S3::Bucket.LoggingConfiguration",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DestinationBucketName"
                              Prelude.<$> destinationBucketName,
                            (JSON..=) "LogFilePrefix" Prelude.<$> logFilePrefix])}
instance JSON.ToJSON LoggingConfigurationProperty where
  toJSON LoggingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DestinationBucketName"
                 Prelude.<$> destinationBucketName,
               (JSON..=) "LogFilePrefix" Prelude.<$> logFilePrefix]))
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