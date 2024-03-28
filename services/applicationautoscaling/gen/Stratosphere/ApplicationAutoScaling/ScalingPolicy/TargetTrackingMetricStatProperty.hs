module Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricStatProperty (
        module Exports, TargetTrackingMetricStatProperty(..),
        mkTargetTrackingMetricStatProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingMetricProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingMetricStatProperty
  = TargetTrackingMetricStatProperty {metric :: (Prelude.Maybe TargetTrackingMetricProperty),
                                      stat :: (Prelude.Maybe (Value Prelude.Text)),
                                      unit :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingMetricStatProperty ::
  TargetTrackingMetricStatProperty
mkTargetTrackingMetricStatProperty
  = TargetTrackingMetricStatProperty
      {metric = Prelude.Nothing, stat = Prelude.Nothing,
       unit = Prelude.Nothing}
instance ToResourceProperties TargetTrackingMetricStatProperty where
  toResourceProperties TargetTrackingMetricStatProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.TargetTrackingMetricStat",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Metric" Prelude.<$> metric,
                            (JSON..=) "Stat" Prelude.<$> stat,
                            (JSON..=) "Unit" Prelude.<$> unit])}
instance JSON.ToJSON TargetTrackingMetricStatProperty where
  toJSON TargetTrackingMetricStatProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Metric" Prelude.<$> metric,
               (JSON..=) "Stat" Prelude.<$> stat,
               (JSON..=) "Unit" Prelude.<$> unit]))
instance Property "Metric" TargetTrackingMetricStatProperty where
  type PropertyType "Metric" TargetTrackingMetricStatProperty = TargetTrackingMetricProperty
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty
        {metric = Prelude.pure newValue, ..}
instance Property "Stat" TargetTrackingMetricStatProperty where
  type PropertyType "Stat" TargetTrackingMetricStatProperty = Value Prelude.Text
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty
        {stat = Prelude.pure newValue, ..}
instance Property "Unit" TargetTrackingMetricStatProperty where
  type PropertyType "Unit" TargetTrackingMetricStatProperty = Value Prelude.Text
  set newValue TargetTrackingMetricStatProperty {..}
    = TargetTrackingMetricStatProperty
        {unit = Prelude.pure newValue, ..}