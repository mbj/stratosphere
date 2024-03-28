module Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricDataQueryProperty (
        module Exports, TargetTrackingMetricDataQueryProperty(..),
        mkTargetTrackingMetricDataQueryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricStatProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricDataQueryProperty
  = TargetTrackingMetricDataQueryProperty {expression :: (Prelude.Maybe (Value Prelude.Text)),
                                           id :: (Prelude.Maybe (Value Prelude.Text)),
                                           label :: (Prelude.Maybe (Value Prelude.Text)),
                                           metricStat :: (Prelude.Maybe TargetTrackingMetricStatProperty),
                                           returnData :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricDataQueryProperty ::
  TargetTrackingMetricDataQueryProperty
mkTargetTrackingMetricDataQueryProperty
  = TargetTrackingMetricDataQueryProperty
      {expression = Prelude.Nothing, id = Prelude.Nothing,
       label = Prelude.Nothing, metricStat = Prelude.Nothing,
       returnData = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricDataQueryProperty where
  toResourceProperties TargetTrackingMetricDataQueryProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetricDataQuery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Expression" Prelude.<$> expression,
                            (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Label" Prelude.<$> label,
                            (JSON..=) "MetricStat" Prelude.<$> metricStat,
                            (JSON..=) "ReturnData" Prelude.<$> returnData])}
instance JSON.ToJSON TargetTrackingMetricDataQueryProperty where
  toJSON TargetTrackingMetricDataQueryProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Expression" Prelude.<$> expression,
               (JSON..=) "Id" Prelude.<$> id, (JSON..=) "Label" Prelude.<$> label,
               (JSON..=) "MetricStat" Prelude.<$> metricStat,
               (JSON..=) "ReturnData" Prelude.<$> returnData]))
instance Property "Expression" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Expression" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {expression = Prelude.pure newValue, ..}
instance Property "Id" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Id" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {id = Prelude.pure newValue, ..}
instance Property "Label" TargetTrackingMetricDataQueryProperty where
  type PropertyType "Label" TargetTrackingMetricDataQueryProperty = Value Prelude.Text
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {label = Prelude.pure newValue, ..}
instance Property "MetricStat" TargetTrackingMetricDataQueryProperty where
  type PropertyType "MetricStat" TargetTrackingMetricDataQueryProperty = TargetTrackingMetricStatProperty
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {metricStat = Prelude.pure newValue, ..}
instance Property "ReturnData" TargetTrackingMetricDataQueryProperty where
  type PropertyType "ReturnData" TargetTrackingMetricDataQueryProperty = Value Prelude.Bool
  set newValue TargetTrackingMetricDataQueryProperty {..}
    = TargetTrackingMetricDataQueryProperty
        {returnData = Prelude.pure newValue, ..}