module Stratosphere.CloudWatch.AnomalyDetector.MetricMathAnomalyDetectorProperty (
        module Exports, MetricMathAnomalyDetectorProperty(..),
        mkMetricMathAnomalyDetectorProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.CloudWatch.AnomalyDetector.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data MetricMathAnomalyDetectorProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metricmathanomalydetector.html>
    MetricMathAnomalyDetectorProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-cloudwatch-anomalydetector-metricmathanomalydetector.html#cfn-cloudwatch-anomalydetector-metricmathanomalydetector-metricdataqueries>
                                       metricDataQueries :: (Prelude.Maybe [MetricDataQueryProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkMetricMathAnomalyDetectorProperty ::
  MetricMathAnomalyDetectorProperty
mkMetricMathAnomalyDetectorProperty
  = MetricMathAnomalyDetectorProperty
      {metricDataQueries = Prelude.Nothing}
instance ToResourceProperties MetricMathAnomalyDetectorProperty where
  toResourceProperties MetricMathAnomalyDetectorProperty {..}
    = ResourceProperties
        {awsType = "AWS::CloudWatch::AnomalyDetector.MetricMathAnomalyDetector",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "MetricDataQueries" Prelude.<$> metricDataQueries])}
instance JSON.ToJSON MetricMathAnomalyDetectorProperty where
  toJSON MetricMathAnomalyDetectorProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "MetricDataQueries" Prelude.<$> metricDataQueries]))
instance Property "MetricDataQueries" MetricMathAnomalyDetectorProperty where
  type PropertyType "MetricDataQueries" MetricMathAnomalyDetectorProperty = [MetricDataQueryProperty]
  set newValue MetricMathAnomalyDetectorProperty {}
    = MetricMathAnomalyDetectorProperty
        {metricDataQueries = Prelude.pure newValue, ..}