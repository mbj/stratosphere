module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingPredefinedLoadMetricProperty (
        PredictiveScalingPredefinedLoadMetricProperty(..),
        mkPredictiveScalingPredefinedLoadMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingPredefinedLoadMetricProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedloadmetric.html>
    PredictiveScalingPredefinedLoadMetricProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedloadmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedloadmetric-predefinedmetrictype>
                                                   predefinedMetricType :: (Value Prelude.Text),
                                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedloadmetric.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedloadmetric-resourcelabel>
                                                   resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingPredefinedLoadMetricProperty ::
  Value Prelude.Text -> PredictiveScalingPredefinedLoadMetricProperty
mkPredictiveScalingPredefinedLoadMetricProperty
  predefinedMetricType
  = PredictiveScalingPredefinedLoadMetricProperty
      {predefinedMetricType = predefinedMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingPredefinedLoadMetricProperty where
  toResourceProperties
    PredictiveScalingPredefinedLoadMetricProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingPredefinedLoadMetric",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedMetricType" JSON..= predefinedMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredictiveScalingPredefinedLoadMetricProperty where
  toJSON PredictiveScalingPredefinedLoadMetricProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedMetricType" JSON..= predefinedMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedMetricType" PredictiveScalingPredefinedLoadMetricProperty where
  type PropertyType "PredefinedMetricType" PredictiveScalingPredefinedLoadMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedLoadMetricProperty {..}
    = PredictiveScalingPredefinedLoadMetricProperty
        {predefinedMetricType = newValue, ..}
instance Property "ResourceLabel" PredictiveScalingPredefinedLoadMetricProperty where
  type PropertyType "ResourceLabel" PredictiveScalingPredefinedLoadMetricProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedLoadMetricProperty {..}
    = PredictiveScalingPredefinedLoadMetricProperty
        {resourceLabel = Prelude.pure newValue, ..}