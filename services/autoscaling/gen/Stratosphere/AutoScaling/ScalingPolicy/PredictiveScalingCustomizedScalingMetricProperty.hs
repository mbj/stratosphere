module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedScalingMetricProperty (
        module Exports,
        PredictiveScalingCustomizedScalingMetricProperty(..),
        mkPredictiveScalingCustomizedScalingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedScalingMetricProperty
  = PredictiveScalingCustomizedScalingMetricProperty {metricDataQueries :: [MetricDataQueryProperty]}
mkPredictiveScalingCustomizedScalingMetricProperty ::
  [MetricDataQueryProperty]
  -> PredictiveScalingCustomizedScalingMetricProperty
mkPredictiveScalingCustomizedScalingMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedScalingMetricProperty
      {metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedScalingMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedScalingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingCustomizedScalingMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedScalingMetricProperty where
  toJSON PredictiveScalingCustomizedScalingMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedScalingMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedScalingMetricProperty = [MetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedScalingMetricProperty {}
    = PredictiveScalingCustomizedScalingMetricProperty
        {metricDataQueries = newValue, ..}