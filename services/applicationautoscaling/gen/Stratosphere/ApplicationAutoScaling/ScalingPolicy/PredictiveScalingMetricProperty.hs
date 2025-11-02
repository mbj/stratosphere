module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricProperty (
        module Exports, PredictiveScalingMetricProperty(..),
        mkPredictiveScalingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDimensionProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingmetric.html>
    PredictiveScalingMetricProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingmetric-dimensions>
                                     dimensions :: (Prelude.Maybe [PredictiveScalingMetricDimensionProperty]),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingmetric-metricname>
                                     metricName :: (Prelude.Maybe (Value Prelude.Text)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingmetric-namespace>
                                     namespace :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingMetricProperty ::
  PredictiveScalingMetricProperty
mkPredictiveScalingMetricProperty
  = PredictiveScalingMetricProperty
      {haddock_workaround_ = (), dimensions = Prelude.Nothing,
       metricName = Prelude.Nothing, namespace = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingMetricProperty where
  toResourceProperties PredictiveScalingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Dimensions" Prelude.<$> dimensions,
                            (JSON..=) "MetricName" Prelude.<$> metricName,
                            (JSON..=) "Namespace" Prelude.<$> namespace])}
instance JSON.ToJSON PredictiveScalingMetricProperty where
  toJSON PredictiveScalingMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Dimensions" Prelude.<$> dimensions,
               (JSON..=) "MetricName" Prelude.<$> metricName,
               (JSON..=) "Namespace" Prelude.<$> namespace]))
instance Property "Dimensions" PredictiveScalingMetricProperty where
  type PropertyType "Dimensions" PredictiveScalingMetricProperty = [PredictiveScalingMetricDimensionProperty]
  set newValue PredictiveScalingMetricProperty {..}
    = PredictiveScalingMetricProperty
        {dimensions = Prelude.pure newValue, ..}
instance Property "MetricName" PredictiveScalingMetricProperty where
  type PropertyType "MetricName" PredictiveScalingMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricProperty {..}
    = PredictiveScalingMetricProperty
        {metricName = Prelude.pure newValue, ..}
instance Property "Namespace" PredictiveScalingMetricProperty where
  type PropertyType "Namespace" PredictiveScalingMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricProperty {..}
    = PredictiveScalingMetricProperty
        {namespace = Prelude.pure newValue, ..}