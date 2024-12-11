module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricDataQueryProperty (
        module Exports, PredictiveScalingMetricDataQueryProperty(..),
        mkPredictiveScalingMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingMetricDataQueryProperty
  = PredictiveScalingMetricDataQueryProperty {expression :: (Prelude.Maybe (Value Prelude.Text)),
                                              id :: (Prelude.Maybe (Value Prelude.Text)),
                                              label :: (Prelude.Maybe (Value Prelude.Text)),
                                              metricStat :: (Prelude.Maybe PredictiveScalingMetricStatProperty),
                                              returnData :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingMetricDataQueryProperty ::
  PredictiveScalingMetricDataQueryProperty
mkPredictiveScalingMetricDataQueryProperty
  = PredictiveScalingMetricDataQueryProperty
      {expression = Prelude.Nothing, id = Prelude.Nothing,
       label = Prelude.Nothing, metricStat = Prelude.Nothing,
       returnData = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingMetricDataQueryProperty where
  toResourceProperties PredictiveScalingMetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingMetricDataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "MetricStat" Prelude.<$> metricStat,
                            (JSON..=) "ReturnData" Prelude.<$> returnData])}
instance JSON.ToJSON PredictiveScalingMetricDataQueryProperty where
  toJSON PredictiveScalingMetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "MetricStat" Prelude.<$> metricStat,
               (JSON..=) "ReturnData" Prelude.<$> returnData]))
instance Property "Expression" PredictiveScalingMetricDataQueryProperty where
  type PropertyType "Expression" PredictiveScalingMetricDataQueryProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricDataQueryProperty {..}
    = PredictiveScalingMetricDataQueryProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Id" PredictiveScalingMetricDataQueryProperty where
  type PropertyType "Id" PredictiveScalingMetricDataQueryProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricDataQueryProperty {..}
    = PredictiveScalingMetricDataQueryProperty
        {id = Prelude.pure newValue, ..}
instance Property "Label" PredictiveScalingMetricDataQueryProperty where
  type PropertyType "Label" PredictiveScalingMetricDataQueryProperty = Value Prelude.Text
  set newValue PredictiveScalingMetricDataQueryProperty {..}
    = PredictiveScalingMetricDataQueryProperty
        {label = Prelude.pure newValue, ..}
instance Property "MetricStat" PredictiveScalingMetricDataQueryProperty where
  type PropertyType "MetricStat" PredictiveScalingMetricDataQueryProperty = PredictiveScalingMetricStatProperty
  set newValue PredictiveScalingMetricDataQueryProperty {..}
    = PredictiveScalingMetricDataQueryProperty
        {metricStat = Prelude.pure newValue, ..}
instance Property "ReturnData" PredictiveScalingMetricDataQueryProperty where
  type PropertyType "ReturnData" PredictiveScalingMetricDataQueryProperty = Value Prelude.Bool
  set newValue PredictiveScalingMetricDataQueryProperty {..}
    = PredictiveScalingMetricDataQueryProperty
        {returnData = Prelude.pure newValue, ..}