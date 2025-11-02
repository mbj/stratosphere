module Stratosphere.LookoutMetrics.AnomalyDetector.MetricProperty (
        MetricProperty(..), mkMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metric.html>
    MetricProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metric.html#cfn-lookoutmetrics-anomalydetector-metric-aggregationfunction>
                    aggregationFunction :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metric.html#cfn-lookoutmetrics-anomalydetector-metric-metricname>
                    metricName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-lookoutmetrics-anomalydetector-metric.html#cfn-lookoutmetrics-anomalydetector-metric-namespace>
                    namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricProperty
mkMetricProperty aggregationFunction metricName
  = MetricProperty
      {haddock_workaround_ = (),
       aggregationFunction = aggregationFunction, metricName = metricName,
       namespace = Prelude.Nothing}
instance ToResourceProperties MetricProperty where
  toResourceProperties MetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::LookoutMetrics::AnomalyDetector.Metric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AggregationFunction" JSON..= aggregationFunction,
                            "MetricName" JSON..= metricName]
                           (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace]))}
instance JSON.ToJSON MetricProperty where
  toJSON MetricProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AggregationFunction" JSON..= aggregationFunction,
               "MetricName" JSON..= metricName]
              (Prelude.catMaybes [(JSON..=) "Namespace" Prelude.<$> namespace])))
instance Property "AggregationFunction" MetricProperty where
  type PropertyType "AggregationFunction" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {aggregationFunction = newValue, ..}
instance Property "MetricName" MetricProperty where
  type PropertyType "MetricName" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {metricName = newValue, ..}
instance Property "Namespace" MetricProperty where
  type PropertyType "Namespace" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {namespace = Prelude.pure newValue, ..}