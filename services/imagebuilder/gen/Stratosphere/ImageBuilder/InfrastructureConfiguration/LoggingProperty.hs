module Stratosphere.ImageBuilder.InfrastructureConfiguration.LoggingProperty (
        module Exports, LoggingProperty(..), mkLoggingProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ImageBuilder.InfrastructureConfiguration.S3LogsProperty as Exports
import Stratosphere.ResourceProperties
data LoggingProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html>
    LoggingProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-imagebuilder-infrastructureconfiguration-logging.html#cfn-imagebuilder-infrastructureconfiguration-logging-s3logs>
                     s3Logs :: (Prelude.Maybe S3LogsProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
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