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
  = HAClusterPrometheusExporterProperty {prometheusPort :: (Prelude.Maybe (Value Prelude.Text))}
mkHAClusterPrometheusExporterProperty ::
  HAClusterPrometheusExporterProperty
mkHAClusterPrometheusExporterProperty
  = HAClusterPrometheusExporterProperty
      {prometheusPort = Prelude.Nothing}
instance ToResourceProperties HAClusterPrometheusExporterProperty where
  toResourceProperties HAClusterPrometheusExporterProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationInsights::Application.HAClusterPrometheusExporter",
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
  set newValue HAClusterPrometheusExporterProperty {}
    = HAClusterPrometheusExporterProperty
        {prometheusPort = Prelude.pure newValue, ..}