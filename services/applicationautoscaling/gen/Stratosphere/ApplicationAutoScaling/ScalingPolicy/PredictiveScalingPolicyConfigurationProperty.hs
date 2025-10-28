module Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingPolicyConfigurationProperty (
        module Exports, PredictiveScalingPolicyConfigurationProperty(..),
        mkPredictiveScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingMetricSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PredictiveScalingPolicyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html>
    PredictiveScalingPolicyConfigurationProperty {haddock_workaround_ :: (),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration-maxcapacitybreachbehavior>
                                                  maxCapacityBreachBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration-maxcapacitybuffer>
                                                  maxCapacityBuffer :: (Prelude.Maybe (Value Prelude.Integer)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration-metricspecifications>
                                                  metricSpecifications :: [PredictiveScalingMetricSpecificationProperty],
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration-mode>
                                                  mode :: (Prelude.Maybe (Value Prelude.Text)),
                                                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration-schedulingbuffertime>
                                                  schedulingBufferTime :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPredictiveScalingPolicyConfigurationProperty ::
  [PredictiveScalingMetricSpecificationProperty]
  -> PredictiveScalingPolicyConfigurationProperty
mkPredictiveScalingPolicyConfigurationProperty metricSpecifications
  = PredictiveScalingPolicyConfigurationProperty
      {haddock_workaround_ = (),
       metricSpecifications = metricSpecifications,
       maxCapacityBreachBehavior = Prelude.Nothing,
       maxCapacityBuffer = Prelude.Nothing, mode = Prelude.Nothing,
       schedulingBufferTime = Prelude.Nothing}
instance ToResourceProperties PredictiveScalingPolicyConfigurationProperty where
  toResourceProperties
    PredictiveScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.PredictiveScalingPolicyConfiguration",
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
instance JSON.ToJSON PredictiveScalingPolicyConfigurationProperty where
  toJSON PredictiveScalingPolicyConfigurationProperty {..}
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
instance Property "MaxCapacityBreachBehavior" PredictiveScalingPolicyConfigurationProperty where
  type PropertyType "MaxCapacityBreachBehavior" PredictiveScalingPolicyConfigurationProperty = Value Prelude.Text
  set newValue PredictiveScalingPolicyConfigurationProperty {..}
    = PredictiveScalingPolicyConfigurationProperty
        {maxCapacityBreachBehavior = Prelude.pure newValue, ..}
instance Property "MaxCapacityBuffer" PredictiveScalingPolicyConfigurationProperty where
  type PropertyType "MaxCapacityBuffer" PredictiveScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue PredictiveScalingPolicyConfigurationProperty {..}
    = PredictiveScalingPolicyConfigurationProperty
        {maxCapacityBuffer = Prelude.pure newValue, ..}
instance Property "MetricSpecifications" PredictiveScalingPolicyConfigurationProperty where
  type PropertyType "MetricSpecifications" PredictiveScalingPolicyConfigurationProperty = [PredictiveScalingMetricSpecificationProperty]
  set newValue PredictiveScalingPolicyConfigurationProperty {..}
    = PredictiveScalingPolicyConfigurationProperty
        {metricSpecifications = newValue, ..}
instance Property "Mode" PredictiveScalingPolicyConfigurationProperty where
  type PropertyType "Mode" PredictiveScalingPolicyConfigurationProperty = Value Prelude.Text
  set newValue PredictiveScalingPolicyConfigurationProperty {..}
    = PredictiveScalingPolicyConfigurationProperty
        {mode = Prelude.pure newValue, ..}
instance Property "SchedulingBufferTime" PredictiveScalingPolicyConfigurationProperty where
  type PropertyType "SchedulingBufferTime" PredictiveScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue PredictiveScalingPolicyConfigurationProperty {..}
    = PredictiveScalingPolicyConfigurationProperty
        {schedulingBufferTime = Prelude.pure newValue, ..}