module Stratosphere.AutoScaling.ScalingPolicy.CustomizedMetricSpecificationProperty (
        module Exports, CustomizedMetricSpecificationProperty(..),
        mkCustomizedMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedMetricSpecificationProperty
  = CustomizedMetricSpecificationProperty {dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                           metricName :: (Value Prelude.Text),
                                           namespace :: (Value Prelude.Text),
                                           statistic :: (Value Prelude.Text),
                                           unit :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomizedMetricSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CustomizedMetricSpecificationProperty
mkCustomizedMetricSpecificationProperty
  metricName
  namespace
  statistic
  = CustomizedMetricSpecificationProperty
      {metricName = metricName, namespace = namespace,
       statistic = statistic, dimensions = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CustomizedMetricSpecificationProperty where
  toResourceProperties CustomizedMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.CustomizedMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
                            "Statistic" JSON..= statistic]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON CustomizedMetricSpecificationProperty where
  toJSON CustomizedMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
               "Statistic" JSON..= statistic]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Dimensions" CustomizedMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty {metricName = newValue, ..}
instance Property "Namespace" CustomizedMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty {namespace = newValue, ..}
instance Property "Statistic" CustomizedMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty {statistic = newValue, ..}
instance Property "Unit" CustomizedMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}