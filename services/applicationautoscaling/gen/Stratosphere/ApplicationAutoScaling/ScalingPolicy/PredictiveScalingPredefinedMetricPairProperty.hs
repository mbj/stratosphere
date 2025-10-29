module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingPredefinedMetricPairProperty (
        PredictiveScalingPredefinedMetricPairProperty(..),
        mkPredictiveScalingPredefinedMetricPairProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingPredefinedMetricPairProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedmetricpair.html>
    PredictiveScalingPredefinedMetricPairProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedmetricpair.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedmetricpair-predefinedmetrictype>
                                                   predefinedMetricType :: (Value Prelude.Text),
                                                   -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpredefinedmetricpair.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpredefinedmetricpair-resourcelabel>
                                                   resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingPredefinedMetricPairProperty ::
  Value Prelude.Text -> PredictiveScalingPredefinedMetricPairProperty
mkPredictiveScalingPredefinedMetricPairProperty
  predefinedMetricType
  = PredictiveScalingPredefinedMetricPairProperty
      {predefinedMetricType = predefinedMetricType,
       resourceLabel = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingPredefinedMetricPairProperty where
  toResourceProperties
    PredictiveScalingPredefinedMetricPairProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingPredefinedMetricPair",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PredefinedMetricType" JSON..= predefinedMetricType]
                           (Prelude.catMaybes
                              [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel]))}
instance JSON.ToJSON PredictiveScalingPredefinedMetricPairProperty where
  toJSON PredictiveScalingPredefinedMetricPairProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PredefinedMetricType" JSON..= predefinedMetricType]
              (Prelude.catMaybes
                 [(JSON..=) "ResourceLabel" Prelude.<$> resourceLabel])))
instance Property "PredefinedMetricType" PredictiveScalingPredefinedMetricPairProperty where
  type PropertyType "PredefinedMetricType" PredictiveScalingPredefinedMetricPairProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedMetricPairProperty {..}
    = PredictiveScalingPredefinedMetricPairProperty
        {predefinedMetricType = newValue, ..}
instance Property "ResourceLabel" PredictiveScalingPredefinedMetricPairProperty where
  type PropertyType "ResourceLabel" PredictiveScalingPredefinedMetricPairProperty = Value Prelude.Text
  set newValue PredictiveScalingPredefinedMetricPairProperty {..}
    = PredictiveScalingPredefinedMetricPairProperty
        {resourceLabel = Prelude.pure newValue, ..}