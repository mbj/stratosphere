module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDimensionProperty (
        PredictiveScalingMetricDimensionProperty(..),
        mkPredictiveScalingMetricDimensionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingMetricDimensionProperty
  = PredictiveScalingMetricDimensionProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                                              value :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingMetricDimensionProperty ::
  PredictiveScalingMetricDimensionProperty
mkPredictiveScalingMetricDimensionProperty
  = PredictiveScalingMetricDimensionProperty
      {name = Prelude.Nothing, value = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingMetricDimensionProperty where
  toResourceProperties PredictiveScalingMetricDimensionProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingMetricDimension",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Value" Prelude.<$> value])}
instance JSON.ToJSON PredictiveScalingMetricDimensionProperty where
  toJSON PredictiveScalingMetricDimensionProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Value" Prelude.<$> value]))
instance Property "Name" PredictiveScalingMetricDimensionProperty where
  type PropertyType "Name" PredictiveScalingMetricDimensionProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricDimensionProperty {..}
    = PredictiveScalingMetricDimensionProperty
        {name = Prelude.pure newValue, ..}
instance Property "Value" PredictiveScalingMetricDimensionProperty where
  type PropertyType "Value" PredictiveScalingMetricDimensionProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricDimensionProperty {..}
    = PredictiveScalingMetricDimensionProperty
        {value = Prelude.pure newValue, ..}