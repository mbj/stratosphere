module Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingConfigurationProperty (
        module Exports, PredictiveScalingConfigurationProperty(..),
        mkPredictiveScalingConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingMetricSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingConfigurationProperty
  = PredictiveScalingConfigurationProperty {maxCapacityBreachBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                            maxCapacityBuffer :: (Prelude.Maybe (Value Prelude.Integer)),
                                            metricSpecifications :: [PredictiveScalingMetricSpecificationProperty],
                                            mode :: (Prelude.Maybe (Value Prelude.Text)),
                                            schedulingBufferTime :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingConfigurationProperty ::
  [PredictiveScalingMetricSpecificationProperty]
  -> PredictiveScalingConfigurationProperty
mkPredictiveScalingConfigurationProperty metricSpecifications
  = PredictiveScalingConfigurationProperty
      {metricSpecifications = metricSpecifications,
       maxCapacityBreachBehavior = Prelude.Nothing,
       maxCapacityBuffer = Prelude.Nothing, mode = Prelude.Nothing,
       schedulingBufferTime = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingConfigurationProperty where
  toResourceProperties PredictiveScalingConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy.PredictiveScalingConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MetricSpecifications" JSON..= metricSpecifications]
                           (Prelude.catMaybes
                              [(JSON..=) "MaxCapacityBreachBehavior"
                                 Prelude.<$> maxCapacityBreachBehavior,
                               (JSON..=) "MaxCapacityBuffer" Prelude.<$> maxCapacityBuffer,
                               (JSON..=) "Mode" Prelude.<$> mode,
                               (JSON..=) "SchedulingBufferTime"
                                 Prelude.<$> schedulingBufferTime]))}
instance JSON.ToJSON PredictiveScalingConfigurationProperty where
  toJSON PredictiveScalingConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MetricSpecifications" JSON..= metricSpecifications]
              (Prelude.catMaybes
                 [(JSON..=) "MaxCapacityBreachBehavior"
                    Prelude.<$> maxCapacityBreachBehavior,
                  (JSON..=) "MaxCapacityBuffer" Prelude.<$> maxCapacityBuffer,
                  (JSON..=) "Mode" Prelude.<$> mode,
                  (JSON..=) "SchedulingBufferTime"
                    Prelude.<$> schedulingBufferTime])))
instance Property "MaxCapacityBreachBehavior" PredictiveScalingConfigurationProperty where
  type PropertyType "MaxCapacityBreachBehavior" PredictiveScalingConfigurationProperty = Value Prelude.Text
  set newValue PredictiveScalingConfigurationProperty {..}
    = PredictiveScalingConfigurationProperty
        {maxCapacityBreachBehavior = Prelude.pure newValue, ..}
instance Property "MaxCapacityBuffer" PredictiveScalingConfigurationProperty where
  type PropertyType "MaxCapacityBuffer" PredictiveScalingConfigurationProperty = Value Prelude.Integer
  set newValue PredictiveScalingConfigurationProperty {..}
    = PredictiveScalingConfigurationProperty
        {maxCapacityBuffer = Prelude.pure newValue, ..}
instance Property "MetricSpecifications" PredictiveScalingConfigurationProperty where
  type PropertyType "MetricSpecifications" PredictiveScalingConfigurationProperty = [PredictiveScalingMetricSpecificationProperty]
  set newValue PredictiveScalingConfigurationProperty {..}
    = PredictiveScalingConfigurationProperty
        {metricSpecifications = newValue, ..}
instance Property "Mode" PredictiveScalingConfigurationProperty where
  type PropertyType "Mode" PredictiveScalingConfigurationProperty = Value Prelude.Text
  set newValue PredictiveScalingConfigurationProperty {..}
    = PredictiveScalingConfigurationProperty
        {mode = Prelude.pure newValue, ..}
instance Property "SchedulingBufferTime" PredictiveScalingConfigurationProperty where
  type PropertyType "SchedulingBufferTime" PredictiveScalingConfigurationProperty = Value Prelude.Integer
  set newValue PredictiveScalingConfigurationProperty {..}
    = PredictiveScalingConfigurationProperty
        {schedulingBufferTime = Prelude.pure newValue, ..}