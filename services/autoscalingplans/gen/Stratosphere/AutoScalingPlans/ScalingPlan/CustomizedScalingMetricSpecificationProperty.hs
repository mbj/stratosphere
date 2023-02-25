module Stratosphere.AutoScalingPlans.ScalingPlan.CustomizedScalingMetricSpecificationProperty (
        module Exports, CustomizedScalingMetricSpecificationProperty(..),
        mkCustomizedScalingMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedScalingMetricSpecificationProperty
  = CustomizedScalingMetricSpecificationProperty {dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                                  metricName :: (Value Prelude.Text),
                                                  namespace :: (Value Prelude.Text),
                                                  statistic :: (Value Prelude.Text),
                                                  unit :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomizedScalingMetricSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text
        -> CustomizedScalingMetricSpecificationProperty
mkCustomizedScalingMetricSpecificationProperty
  metricName
  namespace
  statistic
  = CustomizedScalingMetricSpecificationProperty
      {metricName = metricName, namespace = namespace,
       statistic = statistic, dimensions = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CustomizedScalingMetricSpecificationProperty where
  toResourceProperties
    CustomizedScalingMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.CustomizedScalingMetricSpecification",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
                            "Statistic" JSON..= statistic]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON CustomizedScalingMetricSpecificationProperty where
  toJSON CustomizedScalingMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
               "Statistic" JSON..= statistic]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Dimensions" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedScalingMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {metricName = newValue, ..}
instance Property "Namespace" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {namespace = newValue, ..}
instance Property "Statistic" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {statistic = newValue, ..}
instance Property "Unit" CustomizedScalingMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedScalingMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedScalingMetricSpecificationProperty {..}
    = CustomizedScalingMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}