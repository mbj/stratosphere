module Stratosphere.ApplicationInsights.Application.HAClusterPrometheusExporterProperty (
        HAClusterPrometheusExporterProperty(..),
        mkHAClusterPrometheusExporterProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data HAClusterPrometheusExporterProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-haclusterprometheusexporter.html>
    HAClusterPrometheusExporterProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationinsights-application-haclusterprometheusexporter.html#cfn-applicationinsights-application-haclusterprometheusexporter-prometheusport>
                                         prometheusPort :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkHAClusterPrometheusExporterProperty ::
  HAClusterPrometheusExporterProperty
mkHAClusterPrometheusExporterProperty
  = HAClusterPrometheusExporterProperty
      {haddock_workaround_ = (), prometheusPort = Prelude.Nothing}
instance ToResourceProperties HAClusterPrometheusExporterProperty where
  toResourceProperties HAClusterPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.HAClusterPrometheusExporter",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort])}
instance JSON.ToJSON HAClusterPrometheusExporterProperty where
  toJSON HAClusterPrometheusExporterProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "PrometheusPort" Prelude.<$> prometheusPort]))
instance Property "PrometheusPort" HAClusterPrometheusExporterProperty where
  type PropertyType "PrometheusPort" HAClusterPrometheusExporterProperty = Value Prelude.Text
  set newValue HAClusterPrometheusExporterProperty {..}
    = HAClusterPrometheusExporterProperty
        {prometheusPort = Prelude.pure newValue, ..}