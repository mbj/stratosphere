module Stratosphere.ImageBuilder.InfrastructureConfiguration.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.InfrastructureConfiguration.S3LogsProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = LoggingProperty {s3Logs :: (Prelude.Maybe S3LogsProperty)}
mkLoggingProperty :: LoggingProperty
mkLoggingProperty = LoggingProperty {s3Logs = Prelude.Nothing}
instance ToResourceProperties LoggingProperty where
  toResourceProperties LoggingProperty {..}
    = ResourceProperties
        {awsType = "AWS::ImageBuilder::InfrastructureConfiguration.Logging",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "S3Logs" Prelude.<$> s3Logs])}
instance JSON.ToJSON LoggingProperty where
  toJSON LoggingProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "S3Logs" Prelude.<$> s3Logs]))
instance Property "S3Logs" LoggingProperty where
  type PropertyType "S3Logs" LoggingProperty = S3LogsProperty
  set newValue LoggingProperty {}
    = LoggingProperty {s3Logs = Prelude.pure newValue, ..}