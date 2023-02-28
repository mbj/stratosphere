module Stratosphere.KinesisAnalyticsV2.Application.MonitoringConfigurationProperty (
        MonitoringConfigurationProperty(..),
        mkMonitoringConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MonitoringConfigurationProperty
  = MonitoringConfigurationProperty {configurationType :: (Value Prelude.Text),
                                     logLevel :: (Prelude.Maybe (Value Prelude.Text)),
                                     metricsLevel :: (Prelude.Maybe (Value Prelude.Text))}
mkMonitoringConfigurationProperty ::
  Value Prelude.Text -> MonitoringConfigurationProperty
mkMonitoringConfigurationProperty configurationType
  = MonitoringConfigurationProperty
      {configurationType = configurationType, logLevel = Prelude.Nothing,
       metricsLevel = Prelude.Nothing}
instance ToResourceProperties MonitoringConfigurationProperty where
  toResourceProperties MonitoringConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::KinesisAnalyticsV2::Application.MonitoringConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["ConfigurationType" JSON..= configurationType]
                           (Prelude.catMaybes
                              [(JSON..=) "LogLevel" Prelude.<$> logLevel,
                               (JSON..=) "MetricsLevel" Prelude.<$> metricsLevel]))}
instance JSON.ToJSON MonitoringConfigurationProperty where
  toJSON MonitoringConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["ConfigurationType" JSON..= configurationType]
              (Prelude.catMaybes
                 [(JSON..=) "LogLevel" Prelude.<$> logLevel,
                  (JSON..=) "MetricsLevel" Prelude.<$> metricsLevel])))
instance Property "ConfigurationType" MonitoringConfigurationProperty where
  type PropertyType "ConfigurationType" MonitoringConfigurationProperty = Value Prelude.Text
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {configurationType = newValue, ..}
instance Property "LogLevel" MonitoringConfigurationProperty where
  type PropertyType "LogLevel" MonitoringConfigurationProperty = Value Prelude.Text
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {logLevel = Prelude.pure newValue, ..}
instance Property "MetricsLevel" MonitoringConfigurationProperty where
  type PropertyType "MetricsLevel" MonitoringConfigurationProperty = Value Prelude.Text
  set newValue MonitoringConfigurationProperty {..}
    = MonitoringConfigurationProperty
        {metricsLevel = Prelude.pure newValue, ..}