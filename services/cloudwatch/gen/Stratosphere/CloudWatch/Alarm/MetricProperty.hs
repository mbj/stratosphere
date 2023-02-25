module Stratosphere.CloudWatch.Alarm.MetricProperty (
        module Exports, MetricProperty(..), mkMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.Alarm.DimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricProperty
  = MetricProperty {dimensions :: (Prelude.Maybe [DimensionProperty]),
                    metricName :: (Prelude.Maybe (Value Prelude.Text)),
                    namespace :: (Prelude.Maybe (Value Prelude.Text))}
mkMetricProperty :: MetricProperty
mkMetricProperty
  = MetricProperty
      {dimensions = Prelude.Nothing, metricName = Prelude.Nothing,
       namespace = Prelude.Nothing}
instance ToResourceProperties MetricProperty where
  toResourceProperties MetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::Alarm.Metric",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON MetricProperty where
  toJSON MetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Dimensions" MetricProperty where
  type PropertyType "Dimensions" MetricProperty = [DimensionProperty]
  set newValue MetricProperty {..}
    = MetricProperty {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" MetricProperty where
  type PropertyType "MetricName" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" MetricProperty where
  type PropertyType "Namespace" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {namespace = Prelude.pure newValue, ..}