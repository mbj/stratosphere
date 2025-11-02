module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingPredefinedScalingMetricProperty (
        PredictiveScalingPredefinedScalingMetricProperty(..),
        mkPredictiveScalingPredefinedScalingMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingPredefinedScalingMetricProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedscalingmetric.html>
    PredictiveScalingPredefinedScalingMetricProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedscalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedscalingmetric-predefinedmetrictype>
                                                      predefinedMetricType :: (Value Prelude.Text),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedscalingmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedscalingmetric-resourcelabel>
                                                      resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingPredefinedScalingMetricProperty ::
  Value Prelude.Text
  -> PredictiveScalingPredefinedScalingMetricProperty
mkPredictiveScalingPredefinedScalingMetricProperty
  predefinedMetricType
  = PredictiveScalingPredefinedScalingMetricProperty
      {haddock_workaround_ = (),
       predefinedMetricType = predefinedMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingPredefinedScalingMetricProperty where
  toResourceProperties
    PredictiveScalingPredefinedScalingMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingPredefinedScalingMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedMetricType" JSON..= predefinedMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredictiveScalingPredefinedScalingMetricProperty where
  toJSON PredictiveScalingPredefinedScalingMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedMetricType" JSON..= predefinedMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedMetricType" PredictiveScalingPredefinedScalingMetricProperty where
  type PropertyType "PredefinedMetricType" PredictiveScalingPredefinedScalingMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedScalingMetricProperty {..}
    = PredictiveScalingPredefinedScalingMetricProperty
        {predefinedMetricType = newValue, ..}
instance Property "ResourceLabel" PredictiveScalingPredefinedScalingMetricProperty where
  type PropertyType "ResourceLabel" PredictiveScalingPredefinedScalingMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedScalingMetricProperty {..}
    = PredictiveScalingPredefinedScalingMetricProperty
        {resourceLabel = Prelude.pure newValue, ..}