module Stratosphere.ApplicationAutoScaling.ScalingPolicy.StepScalingPolicyConfigurationProperty (
        module Exports, StepScalingPolicyConfigurationProperty(..),
        mkStepScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.StepAdjustmentProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data StepScalingPolicyConfigurationProperty
  = StepScalingPolicyConfigurationProperty {adjustmentType :: (Prelude.Maybe (Value Prelude.Text)),
                                            cooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                            metricAggregationType :: (Prelude.Maybe (Value Prelude.Text)),
                                            minAdjustmentMagnitude :: (Prelude.Maybe (Value Prelude.Integer)),
                                            stepAdjustments :: (Prelude.Maybe [StepAdjustmentProperty])}
mkStepScalingPolicyConfigurationProperty ::
  StepScalingPolicyConfigurationProperty
mkStepScalingPolicyConfigurationProperty
  = StepScalingPolicyConfigurationProperty
      {adjustmentType = Prelude.Nothing, cooldown = Prelude.Nothing,
       metricAggregationType = Prelude.Nothing,
       minAdjustmentMagnitude = Prelude.Nothing,
       stepAdjustments = Prelude.Nothing}
instance ToResourceProperties StepScalingPolicyConfigurationProperty where
  toResourceProperties StepScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy.StepScalingPolicyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
                            (JSON..=) "Cooldown" Prelude.<$> cooldown,
                            (JSON..=) "MetricAggregationType"
                              Prelude.<$> metricAggregationType,
                            (JSON..=) "MinAdjustmentMagnitude"
                              Prelude.<$> minAdjustmentMagnitude,
                            (JSON..=) "StepAdjustments" Prelude.<$> stepAdjustments])}
instance JSON.ToJSON StepScalingPolicyConfigurationProperty where
  toJSON StepScalingPolicyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
               (JSON..=) "Cooldown" Prelude.<$> cooldown,
               (JSON..=) "MetricAggregationType"
                 Prelude.<$> metricAggregationType,
               (JSON..=) "MinAdjustmentMagnitude"
                 Prelude.<$> minAdjustmentMagnitude,
               (JSON..=) "StepAdjustments" Prelude.<$> stepAdjustments]))
instance Property "AdjustmentType" StepScalingPolicyConfigurationProperty where
  type PropertyType "AdjustmentType" StepScalingPolicyConfigurationProperty = Value Prelude.Text
  set newValue StepScalingPolicyConfigurationProperty {..}
    = StepScalingPolicyConfigurationProperty
        {adjustmentType = Prelude.pure newValue, ..}
instance Property "Cooldown" StepScalingPolicyConfigurationProperty where
  type PropertyType "Cooldown" StepScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue StepScalingPolicyConfigurationProperty {..}
    = StepScalingPolicyConfigurationProperty
        {cooldown = Prelude.pure newValue, ..}
instance Property "MetricAggregationType" StepScalingPolicyConfigurationProperty where
  type PropertyType "MetricAggregationType" StepScalingPolicyConfigurationProperty = Value Prelude.Text
  set newValue StepScalingPolicyConfigurationProperty {..}
    = StepScalingPolicyConfigurationProperty
        {metricAggregationType = Prelude.pure newValue, ..}
instance Property "MinAdjustmentMagnitude" StepScalingPolicyConfigurationProperty where
  type PropertyType "MinAdjustmentMagnitude" StepScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue StepScalingPolicyConfigurationProperty {..}
    = StepScalingPolicyConfigurationProperty
        {minAdjustmentMagnitude = Prelude.pure newValue, ..}
instance Property "StepAdjustments" StepScalingPolicyConfigurationProperty where
  type PropertyType "StepAdjustments" StepScalingPolicyConfigurationProperty = [StepAdjustmentProperty]
  set newValue StepScalingPolicyConfigurationProperty {..}
    = StepScalingPolicyConfigurationProperty
        {stepAdjustments = Prelude.pure newValue, ..}