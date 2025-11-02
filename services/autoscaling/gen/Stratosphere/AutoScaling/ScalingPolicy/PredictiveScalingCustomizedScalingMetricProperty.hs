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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric.html>
    PredictiveScalingCustomizedScalingMetricProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-autoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric.html#cfn-autoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric-metricdataqueries>
                                                      metricDataQueries :: [MetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedScalingMetricProperty ::
  [MetricDataQueryProperty]
  -> PredictiveScalingCustomizedScalingMetricProperty
mkPredictiveScalingCustomizedScalingMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedScalingMetricProperty
      {haddock_workaround_ = (), metricDataQueries = metricDataQueries}
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
  set newValue PredictiveScalingCustomizedScalingMetricProperty {..}
    = PredictiveScalingCustomizedScalingMetricProperty
        {metricDataQueries = newValue, ..}