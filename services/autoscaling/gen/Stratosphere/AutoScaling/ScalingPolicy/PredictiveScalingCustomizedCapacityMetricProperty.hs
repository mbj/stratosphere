module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedCapacityMetricProperty (
        module Exports,
        PredictiveScalingCustomizedCapacityMetricProperty(..),
        mkPredictiveScalingCustomizedCapacityMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedCapacityMetricProperty
  = PredictiveScalingCustomizedCapacityMetricProperty {metricDataQueries :: [MetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedCapacityMetricProperty ::
  [MetricDataQueryProperty]
  -> PredictiveScalingCustomizedCapacityMetricProperty
mkPredictiveScalingCustomizedCapacityMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedCapacityMetricProperty
      {metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedCapacityMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedCapacityMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingCustomizedCapacityMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedCapacityMetricProperty where
  toJSON PredictiveScalingCustomizedCapacityMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedCapacityMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedCapacityMetricProperty = [MetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedCapacityMetricProperty {}
    = PredictiveScalingCustomizedCapacityMetricProperty
        {metricDataQueries = newValue, ..}