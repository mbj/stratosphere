module Stratosphere.MSK.Cluster.PrometheusProperty (
        module Exports, PrometheusProperty(..), mkPrometheusProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.JmxExporterProperty as Exports
import {-# SOURCE #-} Stratosphere.MSK.Cluster.NodeExporterProperty as Exports
import Stratosphere.ResourceProperties
data PrometheusProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html>
    PrometheusProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-jmxexporter>
                        jmxExporter :: (Prelude.Maybe JmxExporterProperty),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-msk-cluster-prometheus.html#cfn-msk-cluster-prometheus-nodeexporter>
                        nodeExporter :: (Prelude.Maybe NodeExporterProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrometheusProperty :: PrometheusProperty
mkPrometheusProperty
  = PrometheusProperty
      {haddock_workaround_ = (), jmxExporter = Prelude.Nothing,
       nodeExporter = Prelude.Nothing}
instance ToResourceProperties PrometheusProperty where
  toResourceProperties PrometheusProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.Prometheus",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "JmxExporter" Prelude.<$> jmxExporter,
                            (JSON..=) "NodeExporter" Prelude.<$> nodeExporter])}
instance JSON.ToJSON PrometheusProperty where
  toJSON PrometheusProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "JmxExporter" Prelude.<$> jmxExporter,
               (JSON..=) "NodeExporter" Prelude.<$> nodeExporter]))
instance Property "JmxExporter" PrometheusProperty where
  type PropertyType "JmxExporter" PrometheusProperty = JmxExporterProperty
  set newValue PrometheusProperty {..}
    = PrometheusProperty {jmxExporter = Prelude.pure newValue, ..}
instance Property "NodeExporter" PrometheusProperty where
  type PropertyType "NodeExporter" PrometheusProperty = NodeExporterProperty
  set newValue PrometheusProperty {..}
    = PrometheusProperty {nodeExporter = Prelude.pure newValue, ..}