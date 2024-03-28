module Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricProperty (
        module Exports, TargetTrackingMetricProperty(..),
        mkTargetTrackingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricProperty
  = TargetTrackingMetricProperty {dimensions :: (Prelude.Maybe [TargetTrackingMetricDimensionProperty]),
                                  metricName :: (Prelude.Maybe (Value Prelude.Text)),
                                  namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricProperty :: TargetTrackingMetricProperty
mkTargetTrackingMetricProperty
  = TargetTrackingMetricProperty
      {dimensions = Prelude.Nothing, metricName = Prelude.Nothing,
       namespace = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricProperty where
  toResourceProperties TargetTrackingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON TargetTrackingMetricProperty where
  toJSON TargetTrackingMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Dimensions" TargetTrackingMetricProperty where
  type PropertyType "Dimensions" TargetTrackingMetricProperty = [TargetTrackingMetricDimensionProperty]
  set newValue TargetTrackingMetricProperty {..}
    = TargetTrackingMetricProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" TargetTrackingMetricProperty where
  type PropertyType "MetricName" TargetTrackingMetricProperty = Value Prelude.Text
  set newValue TargetTrackingMetricProperty {..}
    = TargetTrackingMetricProperty
        {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" TargetTrackingMetricProperty where
  type PropertyType "Namespace" TargetTrackingMetricProperty = Value Prelude.Text
  set newValue TargetTrackingMetricProperty {..}
    = TargetTrackingMetricProperty
        {namespace = Prelude.pure newValue, ..}