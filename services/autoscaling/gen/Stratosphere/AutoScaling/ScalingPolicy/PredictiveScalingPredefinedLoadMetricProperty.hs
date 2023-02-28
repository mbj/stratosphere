module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingPredefinedLoadMetricProperty (
        PredictiveScalingPredefinedLoadMetricProperty(..),
        mkPredictiveScalingPredefinedLoadMetricProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingPredefinedLoadMetricProperty
  = PredictiveScalingPredefinedLoadMetricProperty {predefinedMetricType :: (Value Prelude.Text),
                                                   resourceLabel :: (Prelude.Maybe (Value Prelude.Text))}
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
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingPredefinedLoadMetric",
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