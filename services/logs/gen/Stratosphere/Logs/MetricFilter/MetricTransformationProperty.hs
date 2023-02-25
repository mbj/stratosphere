module Stratosphere.Logs.MetricFilter.MetricTransformationProperty (
        module Exports, MetricTransformationProperty(..),
        mkMetricTransformationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.Logs.MetricFilter.DimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricTransformationProperty
  = MetricTransformationProperty {defaultValue :: (Prelude.Maybe (Value Prelude.Double)),
                                  dimensions :: (Prelude.Maybe [DimensionProperty]),
                                  metricName :: (Value Prelude.Text),
                                  metricNamespace :: (Value Prelude.Text),
                                  metricValue :: (Value Prelude.Text),
                                  unit :: (Prelude.Maybe (Value Prelude.Text))}
mkMetricTransformationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MetricTransformationProperty
mkMetricTransformationProperty
  metricName
  metricNamespace
  metricValue
  = MetricTransformationProperty
      {metricName = metricName, metricNamespace = metricNamespace,
       metricValue = metricValue, defaultValue = Prelude.Nothing,
       dimensions = Prelude.Nothing, unit = Prelude.Nothing}
instance ToResourceProperties MetricTransformationProperty where
  toResourceProperties MetricTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::MetricFilter.MetricTransformation",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName,
                            "MetricNamespace" JSON..= metricNamespace,
                            "MetricValue" JSON..= metricValue]
                           (Prelude.catMaybes
                              [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                               (JSON..=) "Dimensions" Prelude.<$> dimensions,
                               (JSON..=) "Unit" Prelude.<$> unit]))}
instance JSON.ToJSON MetricTransformationProperty where
  toJSON MetricTransformationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName,
               "MetricNamespace" JSON..= metricNamespace,
               "MetricValue" JSON..= metricValue]
              (Prelude.catMaybes
                 [(JSON..=) "DefaultValue" Prelude.<$> defaultValue,
                  (JSON..=) "Dimensions" Prelude.<$> dimensions,
                  (JSON..=) "Unit" Prelude.<$> unit])))
instance Property "DefaultValue" MetricTransformationProperty where
  type PropertyType "DefaultValue" MetricTransformationProperty = Value Prelude.Double
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty
        {defaultValue = Prelude.pure newValue, ..}
instance Property "Dimensions" MetricTransformationProperty where
  type PropertyType "Dimensions" MetricTransformationProperty = [DimensionProperty]
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" MetricTransformationProperty where
  type PropertyType "MetricName" MetricTransformationProperty = Value Prelude.Text
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty {metricName = newValue, ..}
instance Property "MetricNamespace" MetricTransformationProperty where
  type PropertyType "MetricNamespace" MetricTransformationProperty = Value Prelude.Text
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty {metricNamespace = newValue, ..}
instance Property "MetricValue" MetricTransformationProperty where
  type PropertyType "MetricValue" MetricTransformationProperty = Value Prelude.Text
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty {metricValue = newValue, ..}
instance Property "Unit" MetricTransformationProperty where
  type PropertyType "Unit" MetricTransformationProperty = Value Prelude.Text
  set newValue MetricTransformationProperty {..}
    = MetricTransformationProperty {unit = Prelude.pure newValue, ..}