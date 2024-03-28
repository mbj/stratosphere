module Stratosphere.Cognito.LogDeliveryConfiguration.LogConfigurationProperty (
        module Exports, LogConfigurationProperty(..),
        mkLogConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Cognito.LogDeliveryConfiguration.CloudWatchLogsConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data LogConfigurationProperty
  = LogConfigurationProperty {cloudWatchLogsConfiguration :: (Prelude.Maybe CloudWatchLogsConfigurationProperty),
                              eventSource :: (Prelude.Maybe (Value Prelude.Text)),
                              logLevel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkLogConfigurationProperty :: LogConfigurationProperty
mkLogConfigurationProperty
  = LogConfigurationProperty
      {cloudWatchLogsConfiguration = Prelude.Nothing,
       eventSource = Prelude.Nothing, logLevel = Prelude.Nothing}
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
                            (JSON..=) "LogLevel" Prelude.<$> logLevel])}
instance JSON.ToJSON LogConfigurationProperty where
  toJSON LogConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CloudWatchLogsConfiguration"
                 Prelude.<$> cloudWatchLogsConfiguration,
               (JSON..=) "EventSource" Prelude.<$> eventSource,
               (JSON..=) "LogLevel" Prelude.<$> logLevel]))
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
instance Property "LogLevel" LogConfigurationProperty where
  type PropertyType "LogLevel" LogConfigurationProperty = Value Prelude.Text
  set newValue LogConfigurationProperty {..}
    = LogConfigurationProperty {logLevel = Prelude.pure newValue, ..}