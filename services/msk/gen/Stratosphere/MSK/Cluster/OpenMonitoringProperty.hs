module Stratosphere.MSK.Cluster.OpenMonitoringProperty (
        module Exports, OpenMonitoringProperty(..),
        mkOpenMonitoringProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.PrometheusProperty as Exports
import Stratosphere.ResourceProperties
data OpenMonitoringProperty
  = OpenMonitoringProperty {prometheus :: PrometheusProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOpenMonitoringProperty ::
  PrometheusProperty -> OpenMonitoringProperty
mkOpenMonitoringProperty prometheus
  = OpenMonitoringProperty {prometheus = prometheus}
instance ToResourceProperties OpenMonitoringProperty where
  toResourceProperties OpenMonitoringProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.OpenMonitoring",
         supportsTags = Prelude.False,
         properties = ["Prometheus" JSON..= prometheus]}
instance JSON.ToJSON OpenMonitoringProperty where
  toJSON OpenMonitoringProperty {..}
    = JSON.object ["Prometheus" JSON..= prometheus]
instance Property "Prometheus" OpenMonitoringProperty where
  type PropertyType "Prometheus" OpenMonitoringProperty = PrometheusProperty
  set newValue OpenMonitoringProperty {}
    = OpenMonitoringProperty {prometheus = newValue, ..}