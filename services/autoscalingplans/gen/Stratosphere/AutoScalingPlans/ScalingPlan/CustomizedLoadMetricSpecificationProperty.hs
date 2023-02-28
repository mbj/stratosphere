module Stratosphere.AutoScalingPlans.ScalingPlan.CustomizedLoadMetricSpecificationProperty (
        module Exports, CustomizedLoadMetricSpecificationProperty(..),
        mkCustomizedLoadMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.MetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedLoadMetricSpecificationProperty
  = CustomizedLoadMetricSpecificationProperty {dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                               metricName :: (Value Prelude.Text),
                                               namespace :: (Value Prelude.Text),
                                               statistic :: (Value Prelude.Text),
                                               unit :: (Prelude.Maybe (Value Prelude.Text))}
mkCustomizedLoadMetricSpecificationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> CustomizedLoadMetricSpecificationProperty
mkCustomizedLoadMetricSpecificationProperty
  metricName
  namespace
  statistic
  = CustomizedLoadMetricSpecificationProperty
      {metricName = metricName, namespace = namespace,
       statistic = statistic, dimensions = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CustomizedLoadMetricSpecificationProperty where
  toResourceProperties CustomizedLoadMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.CustomizedLoadMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
                            "Statistic" JSON..= statistic]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON CustomizedLoadMetricSpecificationProperty where
  toJSON CustomizedLoadMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace,
               "Statistic" JSON..= statistic]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "Dimensions" CustomizedLoadMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedLoadMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedLoadMetricSpecificationProperty {..}
    = CustomizedLoadMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedLoadMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedLoadMetricSpecificationProperty {..}
    = CustomizedLoadMetricSpecificationProperty
        {metricName = newValue, ..}
instance Property "Namespace" CustomizedLoadMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedLoadMetricSpecificationProperty {..}
    = CustomizedLoadMetricSpecificationProperty
        {namespace = newValue, ..}
instance Property "Statistic" CustomizedLoadMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedLoadMetricSpecificationProperty {..}
    = CustomizedLoadMetricSpecificationProperty
        {statistic = newValue, ..}
instance Property "Unit" CustomizedLoadMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedLoadMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedLoadMetricSpecificationProperty {..}
    = CustomizedLoadMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}