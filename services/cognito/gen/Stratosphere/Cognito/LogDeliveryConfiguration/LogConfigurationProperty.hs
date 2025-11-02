module Stratosphere.Cognito.LogDeliveryConfiguration.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.LogDeliveryConfiguration.CloudWatchLogsConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.LogDeliveryConfiguration.FirehoseConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.Cognito.LogDeliveryConfiguration.S3ConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html>
    LogConfigurationProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html#cfn-cognito-logdeliveryconfiguration-logconfiguration-cloudwatchlogsconfiguration>
                              cloudWatchLogsConfiguration :: (Prelude.Maybe CloudWatchLogsConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html#cfn-cognito-logdeliveryconfiguration-logconfiguration-eventsource>
                              eventSource :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html#cfn-cognito-logdeliveryconfiguration-logconfiguration-firehoseconfiguration>
                              firehoseConfiguration :: (Prelude.Maybe FirehoseConfigurationProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html#cfn-cognito-logdeliveryconfiguration-logconfiguration-loglevel>
                              logLevel :: (Prelude.Maybe (Value Prelude.Text)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cognito-logdeliveryconfiguration-logconfiguration.html#cfn-cognito-logdeliveryconfiguration-logconfiguration-s3configuration>
                              s3Configuration :: (Prelude.Maybe S3ConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {haddock_workaround_ = (),
       cloudWatchLogsConfiguration = Prelude.Nothing,
       eventSource = Prelude.Nothing,
       firehoseConfiguration = Prelude.Nothing,
       logLevel = Prelude.Nothing, s3Configuration = Prelude.Nothing}
instance ToResourceProperties LogConfigurationProperty where
  toResourceProperties LogConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Cognito::LogDeliveryConfiguration.LogConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CloudWatchLogsConfiguration"
                              Prelude.<$> cloudWatchLogsConfiguration,
                            (JSON..=) "EventSource" Prelude.<$> eventSource,
                            (JSON..=) "FirehoseConfiguration"
                              Prelude.<$> firehoseConfiguration,
                            (JSON..=) "LogLevel" Prelude.<$> logLevel,
                            (JSON..=) "S3Configuration" Prelude.<$> s3Configuration])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsConfiguration"
                 Prelude.<$> cloudWatchLogsConfiguration,
               (JSON..=) "EventSource" Prelude.<$> eventSource,
               (JSON..=) "FirehoseConfiguration"
                 Prelude.<$> firehoseConfiguration,
               (JSON..=) "LogLevel" Prelude.<$> logLevel,
               (JSON..=) "S3Configuration" Prelude.<$> s3Configuration]))
instance Property "CloudWatchLogsConfiguration" LogConfigurationProperty where
  type PropertyType "CloudWatchLogsConfiguration" LogConfigurationProperty = CloudWatchLogsConfigurationProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {cloudWatchLogsConfiguration = Prelude.pure newValue, ..}
instance Property "EventSource" LogConfigurationProperty where
  type PropertyType "EventSource" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {eventSource = Prelude.pure newValue, ..}
instance Property "FirehoseConfiguration" LogConfigurationProperty where
  type PropertyType "FirehoseConfiguration" LogConfigurationProperty = FirehoseConfigurationProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {firehoseConfiguration = Prelude.pure newValue, ..}
instance Property "LogLevel" LogConfigurationProperty where
  type PropertyType "LogLevel" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {logLevel = Prelude.pure newValue, ..}
instance Property "S3Configuration" LogConfigurationProperty where
  type PropertyType "S3Configuration" LogConfigurationProperty = S3ConfigurationProperty
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty
        {s3Configuration = Prelude.pure newValue, ..}