module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingCustomizedLoadMetricProperty (
        module Exports, PredictiveScalingCustomizedLoadMetricProperty(..),
        mkPredictiveScalingCustomizedLoadMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDataQueryProperty as Exports
import Stratosphere.ResourceProperties
data PredictiveScalingCustomizedLoadMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingcustomizedloadmetric.html>
    PredictiveScalingCustomizedLoadMetricProperty {haddock_workaround_ :: (),
                                                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingcustomizedloadmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingcustomizedloadmetric-metricdataqueries>
                                                   metricDataQueries :: [PredictiveScalingMetricDataQueryProperty]}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingCustomizedLoadMetricProperty ::
  [PredictiveScalingMetricDataQueryProperty]
  -> PredictiveScalingCustomizedLoadMetricProperty
mkPredictiveScalingCustomizedLoadMetricProperty metricDataQueries
  = PredictiveScalingCustomizedLoadMetricProperty
      {haddock_workaround_ = (), metricDataQueries = metricDataQueries}
instance ToResourceProperties PredictiveScalingCustomizedLoadMetricProperty where
  toResourceProperties
    PredictiveScalingCustomizedLoadMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingCustomizedLoadMetric",
         supportsTags = Prelude.False,
         properties = ["MetricDataQueries" JSON..= metricDataQueries]}
instance JSON.ToJSON PredictiveScalingCustomizedLoadMetricProperty where
  toJSON PredictiveScalingCustomizedLoadMetricProperty {..}
    = JSON.object ["MetricDataQueries" JSON..= metricDataQueries]
instance Property "MetricDataQueries" PredictiveScalingCustomizedLoadMetricProperty where
  type PropertyType "MetricDataQueries" PredictiveScalingCustomizedLoadMetricProperty = [PredictiveScalingMetricDataQueryProperty]
  set newValue PredictiveScalingCustomizedLoadMetricProperty {..}
    = PredictiveScalingCustomizedLoadMetricProperty
        {metricDataQueries = newValue, ..}