module Stratosphere.AutoScaling.ScalingPolicy.CustomizedMetricSpecificationProperty (
        module Exports, CustomizedMetricSpecificationProperty(..),
        mkCustomizedMetricSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricDimensionProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingMetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CustomizedMetricSpecificationProperty
  = CustomizedMetricSpecificationProperty {dimensions :: (Prelude.Maybe [MetricDimensionProperty]),
                                           metricName :: (Prelude.Maybe (Value Prelude.Text)),
                                           metrics :: (Prelude.Maybe [TargetTrackingMetricDataQueryProperty]),
                                           namespace :: (Prelude.Maybe (Value Prelude.Text)),
                                           period :: (Prelude.Maybe (Value Prelude.Integer)),
                                           statistic :: (Prelude.Maybe (Value Prelude.Text)),
                                           unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCustomizedMetricSpecificationProperty ::
  CustomizedMetricSpecificationProperty
mkCustomizedMetricSpecificationProperty
  = CustomizedMetricSpecificationProperty
      {dimensions = Prelude.Nothing, metricName = Prelude.Nothing,
       metrics = Prelude.Nothing, namespace = Prelude.Nothing,
       period = Prelude.Nothing, statistic = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties CustomizedMetricSpecificationProperty where
  toResourceProperties CustomizedMetricSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.CustomizedMetricSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Metrics" Prelude.<$> metrics,
                            (JSON..=) "Namespace" Prelude.<$> namespace,
                            (JSON..=) "Period" Prelude.<$> period,
                            (JSON..=) "Statistic" Prelude.<$> statistic,
                            (JSON..=) "Unit" Prelude.<$> unit])}
instance JSON.ToJSON CustomizedMetricSpecificationProperty where
  toJSON CustomizedMetricSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Metrics" Prelude.<$> metrics,
               (JSON..=) "Namespace" Prelude.<$> namespace,
               (JSON..=) "Period" Prelude.<$> period,
               (JSON..=) "Statistic" Prelude.<$> statistic,
               (JSON..=) "Unit" Prelude.<$> unit]))
instance Property "Dimensions" CustomizedMetricSpecificationProperty where
  type PropertyType "Dimensions" CustomizedMetricSpecificationProperty = [MetricDimensionProperty]
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" CustomizedMetricSpecificationProperty where
  type PropertyType "MetricName" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {metricName = Prelude.pure newValue, ..}
instance Property "Metrics" CustomizedMetricSpecificationProperty where
  type PropertyType "Metrics" CustomizedMetricSpecificationProperty = [TargetTrackingMetricDataQueryProperty]
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {metrics = Prelude.pure newValue, ..}
instance Property "Namespace" CustomizedMetricSpecificationProperty where
  type PropertyType "Namespace" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {namespace = Prelude.pure newValue, ..}
instance Property "Period" CustomizedMetricSpecificationProperty where
  type PropertyType "Period" CustomizedMetricSpecificationProperty = Value Prelude.Integer
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {period = Prelude.pure newValue, ..}
instance Property "Statistic" CustomizedMetricSpecificationProperty where
  type PropertyType "Statistic" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {statistic = Prelude.pure newValue, ..}
instance Property "Unit" CustomizedMetricSpecificationProperty where
  type PropertyType "Unit" CustomizedMetricSpecificationProperty = Value Prelude.Text
  set newValue CustomizedMetricSpecificationProperty {..}
    = CustomizedMetricSpecificationProperty
        {unit = Prelude.pure newValue, ..}