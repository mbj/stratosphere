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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric.html>
    PredictiveScalingCustomizedScalingMetricProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingcustomizedscalingmetric-metricdataqueries>
                                                      metricDataQueries :: [PredictiveScalingMetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedScalingMetricProperty ::
  [PredictiveScalingMetricDataQueryProperty]
  -> PredictiveScalingCustomizedScalingMetricProperty
mkPredictiveScalingCustomizedScalingMetricProperty
  metricDataQueries
  = PredictiveScalingCustomizedScalingMetricProperty
      {haddock_workaround_ = (), metricDataQueries = metricDataQueries}
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
  set newValue PredictiveScalingCustomizedScalingMetricProperty {..}
    = PredictiveScalingCustomizedScalingMetricProperty
        {metricDataQueries = newValue, ..}