module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingCustomizedLoadMetricProperty (
        module Exports, PredictiveScalingCustomizedLoadMetricProperty(..),
        mkPredictiveScalingCustomizedLoadMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.MetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedLoadMetricProperty
  = PredictiveScalingCustomizedLoadMetricProperty {metricDataQueries :: [MetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedLoadMetricProperty ::
  [MetricDataQueryProperty]
  -> PredictiveScalingCustomizedLoadMetricProperty
mkPredictiveScalingCustomizedLoadMetricProperty metricDataQueries
  = PredictiveScalingCustomizedLoadMetricProperty
      {metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedLoadMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedLoadMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingCustomizedLoadMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedLoadMetricProperty where
  toJSON PredictiveScalingCustomizedLoadMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedLoadMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedLoadMetricProperty = [MetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedLoadMetricProperty {}
    = PredictiveScalingCustomizedLoadMetricProperty
        {metricDataQueries = newValue, ..}