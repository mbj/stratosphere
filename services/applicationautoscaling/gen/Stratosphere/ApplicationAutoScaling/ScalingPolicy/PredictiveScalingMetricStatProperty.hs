module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricStatProperty (
        module Exports, PredictiveScalingMetricStatProperty(..),
        mkPredictiveScalingMetricStatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingMetricStatProperty
  = PredictiveScalingMetricStatProperty {metric :: (Prelude.Maybe PredictiveScalingMetricProperty),
                                         stat :: (Prelude.Maybe (Value Prelude.Text)),
                                         unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingMetricStatProperty ::
  PredictiveScalingMetricStatProperty
mkPredictiveScalingMetricStatProperty
  = PredictiveScalingMetricStatProperty
      {metric = Prelude.Nothing, stat = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingMetricStatProperty where
  toResourceProperties PredictiveScalingMetricStatProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingMetricStat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Metric" Prelude.<$> metric,
                            (JSON..=) "Stat" Prelude.<$> stat,
                            (JSON..=) "Unit" Prelude.<$> unit])}
instance JSON.ToJSON PredictiveScalingMetricStatProperty where
  toJSON PredictiveScalingMetricStatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Metric" Prelude.<$> metric,
               (JSON..=) "Stat" Prelude.<$> stat,
               (JSON..=) "Unit" Prelude.<$> unit]))
instance Property "Metric" PredictiveScalingMetricStatProperty where
  type PropertyType "Metric" PredictiveScalingMetricStatProperty = PredictiveScalingMetricProperty
  set newValue PredictiveScalingMetricStatProperty {..}
    = PredictiveScalingMetricStatProperty
        {metric = Prelude.pure newValue, ..}
instance Property "Stat" PredictiveScalingMetricStatProperty where
  type PropertyType "Stat" PredictiveScalingMetricStatProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricStatProperty {..}
    = PredictiveScalingMetricStatProperty
        {stat = Prelude.pure newValue, ..}
instance Property "Unit" PredictiveScalingMetricStatProperty where
  type PropertyType "Unit" PredictiveScalingMetricStatProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricStatProperty {..}
    = PredictiveScalingMetricStatProperty
        {unit = Prelude.pure newValue, ..}