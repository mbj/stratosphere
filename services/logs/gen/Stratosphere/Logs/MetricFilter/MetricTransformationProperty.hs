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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html>
    MetricTransformationProperty {haddock_workaround_ :: (),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-defaultvalue>
                                  defaultValue :: (Prelude.Maybe (Value Prelude.Double)),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-dimensions>
                                  dimensions :: (Prelude.Maybe [DimensionProperty]),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-metricname>
                                  metricName :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-metricnamespace>
                                  metricNamespace :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-metricvalue>
                                  metricValue :: (Value Prelude.Text),
                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-logs-metricfilter-metrictransformation.html#cfn-logs-metricfilter-metrictransformation-unit>
                                  unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricTransformationProperty ::
  Value Prelude.Text
  -> Value Prelude.Text
     -> Value Prelude.Text -> MetricTransformationProperty
mkMetricTransformationProperty
  metricName
  metricNamespace
  metricValue
  = MetricTransformationProperty
      {haddock_workaround_ = (), metricName = metricName,
       metricNamespace = metricNamespace, metricValue = metricValue,
       defaultValue = Prelude.Nothing, dimensions = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties MetricTransformationProperty where
  toResourceProperties MetricTransformationProperty {..}
    = ResourceProperties
        {awsType = "AWS::Logs::MetricFilter.MetricTransformation",
         supportsTags = Prelude.False,
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