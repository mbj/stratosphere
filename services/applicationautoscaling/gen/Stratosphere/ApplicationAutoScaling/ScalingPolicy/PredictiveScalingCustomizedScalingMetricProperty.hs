module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingCustomizedScalingMetricProperty (
        module Exports,
        PredictiveScalingCustomizedScalingMetricProperty(..),
        mkPredictiveScalingCustomizedScalingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedScalingMetricProperty
  = PredictiveScalingCustomizedScalingMetricProperty {metricDataQueries :: [PredictiveScalingMetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedScalingMetricProperty ::
  [PredictiveScalingMetricDataQueryProperty]
  -> PredictiveScalingCustomizedScalingMetricProperty
mkPredictiveScalingCustomizedScalingMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedScalingMetricProperty
      {metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedScalingMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedScalingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingCustomizedScalingMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedScalingMetricProperty where
  toJSON PredictiveScalingCustomizedScalingMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedScalingMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedScalingMetricProperty = [PredictiveScalingMetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedScalingMetricProperty {}
    = PredictiveScalingCustomizedScalingMetricProperty
        {metricDataQueries = newValue, ..}