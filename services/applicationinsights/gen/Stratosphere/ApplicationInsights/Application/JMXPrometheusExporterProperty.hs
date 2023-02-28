module Stratosphere.ApplicationInsights.Application.JMXPrometheusExporterProperty (
        JMXPrometheusExporterProperty(..), mkJMXPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JMXPrometheusExporterProperty
  = JMXPrometheusExporterProperty {hostPort :: (Prelude.Maybe (Value Prelude.Text)),
                                   jMXURL :: (Prelude.Maybe (Value Prelude.Text)),
                                   prometheusPort :: (Prelude.Maybe (Value Prelude.Text))}
mkJMXPrometheusExporterProperty :: JMXPrometheusExporterProperty
mkJMXPrometheusExporterProperty
  = JMXPrometheusExporterProperty
      {hostPort = Prelude.Nothing, jMXURL = Prelude.Nothing,
       prometheusPort = Prelude.Nothing}
instance ToResourceProperties JMXPrometheusExporterProperty where
  toResourceProperties JMXPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.JMXPrometheusExporter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "HostPort" Prelude.<$> hostPort,
                            (JSON..=) "JMXURL" Prelude.<$> jMXURL,
                            (JSON..=) "PrometheusPort" Prelude.<$> prometheusPort])}
instance JSON.ToJSON JMXPrometheusExporterProperty where
  toJSON JMXPrometheusExporterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "HostPort" Prelude.<$> hostPort,
               (JSON..=) "JMXURL" Prelude.<$> jMXURL,
               (JSON..=) "PrometheusPort" Prelude.<$> prometheusPort]))
instance Property "HostPort" JMXPrometheusExporterProperty where
  type PropertyType "HostPort" JMXPrometheusExporterProperty = Value Prelude.Text
  set newValue JMXPrometheusExporterProperty {..}
    = JMXPrometheusExporterProperty
        {hostPort = Prelude.pure newValue, ..}
instance Property "JMXURL" JMXPrometheusExporterProperty where
  type PropertyType "JMXURL" JMXPrometheusExporterProperty = Value Prelude.Text
  set newValue JMXPrometheusExporterProperty {..}
    = JMXPrometheusExporterProperty
        {jMXURL = Prelude.pure newValue, ..}
instance Property "PrometheusPort" JMXPrometheusExporterProperty where
  type PropertyType "PrometheusPort" JMXPrometheusExporterProperty = Value Prelude.Text
  set newValue JMXPrometheusExporterProperty {..}
    = JMXPrometheusExporterProperty
        {prometheusPort = Prelude.pure newValue, ..}