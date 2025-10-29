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
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.NetWeaverPrometheusExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.ProcessProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.SQLServerPrometheusExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationInsights.Application.WindowsEventProperty as Exports
import Stratosphere.ResourceProperties
data ConfigurationDetailsProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html>
    ConfigurationDetailsProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarmmetrics>
                                  alarmMetrics :: (Prelude.Maybe [AlarmMetricProperty]),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-alarms>
                                  alarms :: (Prelude.Maybe [AlarmProperty]),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-haclusterprometheusexporter>
                                  hAClusterPrometheusExporter :: (Prelude.Maybe HAClusterPrometheusExporterProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-hanaprometheusexporter>
                                  hANAPrometheusExporter :: (Prelude.Maybe HANAPrometheusExporterProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-jmxprometheusexporter>
                                  jMXPrometheusExporter :: (Prelude.Maybe JMXPrometheusExporterProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-logs>
                                  logs :: (Prelude.Maybe [LogProperty]),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-netweaverprometheusexporter>
                                  netWeaverPrometheusExporter :: (Prelude.Maybe NetWeaverPrometheusExporterProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-processes>
                                  processes :: (Prelude.Maybe [ProcessProperty]),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-sqlserverprometheusexporter>
                                  sQLServerPrometheusExporter :: (Prelude.Maybe SQLServerPrometheusExporterProperty),
                                  -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-configurationdetails.html#cfn-applicationinsights-application-configurationdetails-windowsevents>
                                  windowsEvents :: (Prelude.Maybe [WindowsEventProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConfigurationDetailsProperty :: ConfigurationDetailsProperty
mkConfigurationDetailsProperty
  = ConfigurationDetailsProperty
      {alarmMetrics = Prelude.Nothing, alarms = Prelude.Nothing,
       hAClusterPrometheusExporter = Prelude.Nothing,
       hANAPrometheusExporter = Prelude.Nothing,
       jMXPrometheusExporter = Prelude.Nothing, logs = Prelude.Nothing,
       netWeaverPrometheusExporter = Prelude.Nothing,
       processes = Prelude.Nothing,
       sQLServerPrometheusExporter = Prelude.Nothing,
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
                            (JSON..=) "NetWeaverPrometheusExporter"
                              Prelude.<$> netWeaverPrometheusExporter,
                            (JSON..=) "Processes" Prelude.<$> processes,
                            (JSON..=) "SQLServerPrometheusExporter"
                              Prelude.<$> sQLServerPrometheusExporter,
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
               (JSON..=) "NetWeaverPrometheusExporter"
                 Prelude.<$> netWeaverPrometheusExporter,
               (JSON..=) "Processes" Prelude.<$> processes,
               (JSON..=) "SQLServerPrometheusExporter"
                 Prelude.<$> sQLServerPrometheusExporter,
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
instance Property "NetWeaverPrometheusExporter" ConfigurationDetailsProperty where
  type PropertyType "NetWeaverPrometheusExporter" ConfigurationDetailsProperty = NetWeaverPrometheusExporterProperty
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {netWeaverPrometheusExporter = Prelude.pure newValue, ..}
instance Property "Processes" ConfigurationDetailsProperty where
  type PropertyType "Processes" ConfigurationDetailsProperty = [ProcessProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {processes = Prelude.pure newValue, ..}
instance Property "SQLServerPrometheusExporter" ConfigurationDetailsProperty where
  type PropertyType "SQLServerPrometheusExporter" ConfigurationDetailsProperty = SQLServerPrometheusExporterProperty
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {sQLServerPrometheusExporter = Prelude.pure newValue, ..}
instance Property "WindowsEvents" ConfigurationDetailsProperty where
  type PropertyType "WindowsEvents" ConfigurationDetailsProperty = [WindowsEventProperty]
  set newValue ConfigurationDetailsProperty {..}
    = ConfigurationDetailsProperty
        {windowsEvents = Prelude.pure newValue, ..}