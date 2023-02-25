module Stratosphere.MSK.Cluster.OpenMonitoringProperty (
        module Exports, OpenMonitoringProperty(..),
        mkOpenMonitoringProperty
    ) where
import qualified Data.Aeson as JSON
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.MSK.Cluster.PrometheusProperty as Exports
import Stratosphere.ResourceProperties
data OpenMonitoringProperty
  = OpenMonitoringProperty {prometheus :: PrometheusProperty}
mkOpenMonitoringProperty ::
  PrometheusProperty -> OpenMonitoringProperty
mkOpenMonitoringProperty prometheus
  = OpenMonitoringProperty {prometheus = prometheus}
instance ToResourceProperties OpenMonitoringProperty where
  toResourceProperties OpenMonitoringProperty {..}
    = ResourceProperties
        {awsType = "AWS::MSK::Cluster.OpenMonitoring",
         properties = ["Prometheus" JSON..= prometheus]}
instance JSON.ToJSON OpenMonitoringProperty where
  toJSON OpenMonitoringProperty {..}
    = JSON.object ["Prometheus" JSON..= prometheus]
instance Property "Prometheus" OpenMonitoringProperty where
  type PropertyType "Prometheus" OpenMonitoringProperty = PrometheusProperty
  set newValue OpenMonitoringProperty {}
    = OpenMonitoringProperty {prometheus = newValue, ..}