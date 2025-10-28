module Stratosphere.ApplicationInsights.Application.JMXPrometheusExporterProperty (
        JMXPrometheusExporterProperty(..), mkJMXPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data JMXPrometheusExporterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-jmxprometheusexporter.html>
    JMXPrometheusExporterProperty {haddock_workaround_ :: (),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-jmxprometheusexporter.html#cfn-applicationinsights-application-jmxprometheusexporter-hostport>
                                   hostPort :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-jmxprometheusexporter.html#cfn-applicationinsights-application-jmxprometheusexporter-jmxurl>
                                   jMXURL :: (Prelude.Maybe (Value Prelude.Text)),
                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-jmxprometheusexporter.html#cfn-applicationinsights-application-jmxprometheusexporter-prometheusport>
                                   prometheusPort :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkJMXPrometheusExporterProperty :: JMXPrometheusExporterProperty
mkJMXPrometheusExporterProperty
  = JMXPrometheusExporterProperty
      {haddock_workaround_ = (), hostPort = Prelude.Nothing,
       jMXURL = Prelude.Nothing, prometheusPort = Prelude.Nothing}
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