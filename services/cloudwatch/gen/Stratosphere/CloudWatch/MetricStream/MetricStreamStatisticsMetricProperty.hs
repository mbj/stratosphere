module Stratosphere.CloudWatch.MetricStream.MetricStreamStatisticsMetricProperty (
        MetricStreamStatisticsMetricProperty(..),
        mkMetricStreamStatisticsMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data MetricStreamStatisticsMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamstatisticsmetric.html>
    MetricStreamStatisticsMetricProperty {haddock_workaround_ :: (),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamstatisticsmetric.html#cfn-cloudwatch-metricstream-metricstreamstatisticsmetric-metricname>
                                          metricName :: (Value Prelude.Text),
                                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-metricstream-metricstreamstatisticsmetric.html#cfn-cloudwatch-metricstream-metricstreamstatisticsmetric-namespace>
                                          namespace :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricStreamStatisticsMetricProperty ::
  Value Prelude.Text
  -> Value Prelude.Text -> MetricStreamStatisticsMetricProperty
mkMetricStreamStatisticsMetricProperty metricName namespace
  = MetricStreamStatisticsMetricProperty
      {haddock_workaround_ = (), metricName = metricName,
       namespace = namespace}
instance ToResourceProperties MetricStreamStatisticsMetricProperty where
  toResourceProperties MetricStreamStatisticsMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::MetricStream.MetricStreamStatisticsMetric",
         supportsTags = Prelude.False,
         properties = ["MetricName" JSON..= metricName,
                       "Namespace" JSON..= namespace]}
instance JSON.ToJSON MetricStreamStatisticsMetricProperty where
  toJSON MetricStreamStatisticsMetricProperty {..}
    = JSON.object
        ["MetricName" JSON..= metricName, "Namespace" JSON..= namespace]
instance Property "MetricName" MetricStreamStatisticsMetricProperty where
  type PropertyType "MetricName" MetricStreamStatisticsMetricProperty = Value Prelude.Text
  set newValue MetricStreamStatisticsMetricProperty {..}
    = MetricStreamStatisticsMetricProperty {metricName = newValue, ..}
instance Property "Namespace" MetricStreamStatisticsMetricProperty where
  type PropertyType "Namespace" MetricStreamStatisticsMetricProperty = Value Prelude.Text
  set newValue MetricStreamStatisticsMetricProperty {..}
    = MetricStreamStatisticsMetricProperty {namespace = newValue, ..}