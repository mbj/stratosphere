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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html>
    StepScalingPolicyConfigurationProperty {haddock_workaround_ :: (),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-adjustmenttype>
                                            adjustmentType :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-cooldown>
                                            cooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-metricaggregationtype>
                                            metricAggregationType :: (Prelude.Maybe (Value Prelude.Text)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-minadjustmentmagnitude>
                                            minAdjustmentMagnitude :: (Prelude.Maybe (Value Prelude.Integer)),
                                            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration-stepadjustments>
                                            stepAdjustments :: (Prelude.Maybe [StepAdjustmentProperty])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkStepScalingPolicyConfigurationProperty ::
  StepScalingPolicyConfigurationProperty
mkStepScalingPolicyConfigurationProperty
  = StepScalingPolicyConfigurationProperty
      {haddock_workaround_ = (), adjustmentType = Prelude.Nothing,
       cooldown = Prelude.Nothing,
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