module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingCustomizedCapacityMetricProperty (
        module Exports,
        PredictiveScalingCustomizedCapacityMetricProperty(..),
        mkPredictiveScalingCustomizedCapacityMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedCapacityMetricProperty
  = PredictiveScalingCustomizedCapacityMetricProperty {metricDataQueries :: [PredictiveScalingMetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedCapacityMetricProperty ::
  [PredictiveScalingMetricDataQueryProperty]
  -> PredictiveScalingCustomizedCapacityMetricProperty
mkPredictiveScalingCustomizedCapacityMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedCapacityMetricProperty
      {metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedCapacityMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedCapacityMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingCustomizedCapacityMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedCapacityMetricProperty where
  toJSON PredictiveScalingCustomizedCapacityMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedCapacityMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedCapacityMetricProperty = [PredictiveScalingMetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedCapacityMetricProperty {}
    = PredictiveScalingCustomizedCapacityMetricProperty
        {metricDataQueries = newValue, ..}