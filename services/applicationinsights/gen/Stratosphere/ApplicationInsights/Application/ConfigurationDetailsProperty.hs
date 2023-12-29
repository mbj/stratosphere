module Stratosphere.ApplicationInsights.Application.ConfigurationDetailsProperty (
        module Exports, ConfigurationDetailsProperty(..),
        mkConfigurationDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.AlarmProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.AlarmMetricProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.HAClusterPrometheusExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.HANAPrometheusExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.JMXPrometheusExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.LogProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.WindowsEventProperty as Exports
import Stratosphere.ResourceProperties
data ConfigurationDetailsProperty
  = ConfigurationDetailsProperty {alarmMetrics :: (Prelude.Maybe [AlarmMetricProperty]),
                                  alarms :: (Prelude.Maybe [AlarmProperty]),
                                  hAClusterPrometheusExporter :: (Prelude.Maybe HAClusterPrometheusExporterProperty),
                                  hANAPrometheusExporter :: (Prelude.Maybe HANAPrometheusExporterProperty),
                                  jMXPrometheusExporter :: (Prelude.Maybe JMXPrometheusExporterProperty),
                                  logs :: (Prelude.Maybe [LogProperty]),
                                  windowsEvents :: (Prelude.Maybe [WindowsEventProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationDetailsProperty :: ConfigurationDetailsProperty
mkConfigurationDetailsProperty
  = ConfigurationDetailsProperty
      {alarmMetrics = Prelude.Nothing, alarms = Prelude.Nothing,
       hAClusterPrometheusExporter = Prelude.Nothing,
       hANAPrometheusExporter = Prelude.Nothing,
       jMXPrometheusExporter = Prelude.Nothing, logs = Prelude.Nothing,
       windowsEvents = Prelude.Nothing}
instance ToResourceProperties ConfigurationDetailsProperty where
  toResourceProperties ConfigurationDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.ConfigurationDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AlarmMetrics" Prelude.<$> alarmMetrics,
                            (JSON..=) "Alarms" Prelude.<$> alarms,
                            (JSON..=) "HAClusterPrometheusExporter"
                              Prelude.<$> hAClusterPrometheusExporter,
                            (JSON..=) "HANAPrometheusExporter"
                              Prelude.<$> hANAPrometheusExporter,
                            (JSON..=) "JMXPrometheusExporter"
                              Prelude.<$> jMXPrometheusExporter,
                            (JSON..=) "Logs" Prelude.<$> logs,
                            (JSON..=) "WindowsEvents" Prelude.<$> windowsEvents])}
instance JSON.ToJSON ConfigurationDetailsProperty where
  toJSON ConfigurationDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AlarmMetrics" Prelude.<$> alarmMetrics,
               (JSON..=) "Alarms" Prelude.<$> alarms,
               (JSON..=) "HAClusterPrometheusExporter"
                 Prelude.<$> hAClusterPrometheusExporter,
               (JSON..=) "HANAPrometheusExporter"
                 Prelude.<$> hANAPrometheusExporter,
               (JSON..=) "JMXPrometheusExporter"
                 Prelude.<$> jMXPrometheusExporter,
               (JSON..=) "Logs" Prelude.<$> logs,
               (JSON..=) "WindowsEvents" Prelude.<$> windowsEvents]))
instance Property "AlarmMetrics" ConfigurationDetailsProperty where
  type PropertyType "AlarmMetrics" ConfigurationDetailsProperty = [AlarmMetricProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {alarmMetrics = Prelude.pure newValue, ..}
instance Property "Alarms" ConfigurationDetailsProperty where
  type PropertyType "Alarms" ConfigurationDetailsProperty = [AlarmProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty {alarms = Prelude.pure newValue, ..}
instance Property "HAClusterPrometheusExporter" ConfigurationDetailsProperty where
  type PropertyType "HAClusterPrometheusExporter" ConfigurationDetailsProperty = HAClusterPrometheusExporterProperty
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {hAClusterPrometheusExporter = Prelude.pure newValue, ..}
instance Property "HANAPrometheusExporter" ConfigurationDetailsProperty where
  type PropertyType "HANAPrometheusExporter" ConfigurationDetailsProperty = HANAPrometheusExporterProperty
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {hANAPrometheusExporter = Prelude.pure newValue, ..}
instance Property "JMXPrometheusExporter" ConfigurationDetailsProperty where
  type PropertyType "JMXPrometheusExporter" ConfigurationDetailsProperty = JMXPrometheusExporterProperty
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {jMXPrometheusExporter = Prelude.pure newValue, ..}
instance Property "Logs" ConfigurationDetailsProperty where
  type PropertyType "Logs" ConfigurationDetailsProperty = [LogProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty {logs = Prelude.pure newValue, ..}
instance Property "WindowsEvents" ConfigurationDetailsProperty where
  type PropertyType "WindowsEvents" ConfigurationDetailsProperty = [WindowsEventProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {windowsEvents = Prelude.pure newValue, ..}