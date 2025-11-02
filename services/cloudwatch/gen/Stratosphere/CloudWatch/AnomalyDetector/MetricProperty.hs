module Stratosphere.CloudWatch.AnomalyDetector.MetricProperty (
        module Exports, MetricProperty(..), mkMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.DimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metric.html>
    MetricProperty {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metric.html#cfn-cloudwatch-anomalydetector-metric-dimensions>
                    dimensions :: (Prelude.Maybe [DimensionProperty]),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metric.html#cfn-cloudwatch-anomalydetector-metric-metricname>
                    metricName :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metric.html#cfn-cloudwatch-anomalydetector-metric-namespace>
                    namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricProperty ::
  Value Prelude.Text -> Value Prelude.Text -> MetricProperty
mkMetricProperty metricName namespace
  = MetricProperty
      {haddock_workaround_ = (), metricName = metricName,
       namespace = namespace, dimensions = Prelude.Nothing}
instance ToResourceProperties MetricProperty where
  toResourceProperties MetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.Metric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace]
                           (Prelude.catMaybes
                              [(JSON..=) "Dimensions" Prelude.<$> dimensions]))}
instance JSON.ToJSON MetricProperty where
  toJSON MetricProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace]
              (Prelude.catMaybes
                 [(JSON..=) "Dimensions" Prelude.<$> dimensions])))
instance Property "Dimensions" MetricProperty where
  type PropertyType "Dimensions" MetricProperty = [DimensionProperty]
  set newValue MetricProperty {..}
    = MetricProperty {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" MetricProperty where
  type PropertyType "MetricName" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {metricName = newValue, ..}
instance Property "Namespace" MetricProperty where
  type PropertyType "Namespace" MetricProperty = Value Prelude.Text
  set newValue MetricProperty {..}
    = MetricProperty {namespace = newValue, ..}