module Stratosphere.AutoScalingPlans.ScalingPlan.ScalingInstructionProperty (
        module Exports, ScalingInstructionProperty(..),
        mkScalingInstructionProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.CustomizedLoadMetricSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.PredefinedLoadMetricSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScalingPlans.ScalingPlan.TargetTrackingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingInstructionProperty
  = ScalingInstructionProperty {customizedLoadMetricSpecification :: (Prelude.Maybe CustomizedLoadMetricSpecificationProperty),
                                disableDynamicScaling :: (Prelude.Maybe (Value Prelude.Bool)),
                                maxCapacity :: (Value Prelude.Integer),
                                minCapacity :: (Value Prelude.Integer),
                                predefinedLoadMetricSpecification :: (Prelude.Maybe PredefinedLoadMetricSpecificationProperty),
                                predictiveScalingMaxCapacityBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                predictiveScalingMaxCapacityBuffer :: (Prelude.Maybe (Value Prelude.Integer)),
                                predictiveScalingMode :: (Prelude.Maybe (Value Prelude.Text)),
                                resourceId :: (Value Prelude.Text),
                                scalableDimension :: (Value Prelude.Text),
                                scalingPolicyUpdateBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                scheduledActionBufferTime :: (Prelude.Maybe (Value Prelude.Integer)),
                                serviceNamespace :: (Value Prelude.Text),
                                targetTrackingConfigurations :: [TargetTrackingConfigurationProperty]}
mkScalingInstructionProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> Value Prelude.Text
        -> Value Prelude.Text
           -> Value Prelude.Text
              -> [TargetTrackingConfigurationProperty]
                 -> ScalingInstructionProperty
mkScalingInstructionProperty
  maxCapacity
  minCapacity
  resourceId
  scalableDimension
  serviceNamespace
  targetTrackingConfigurations
  = ScalingInstructionProperty
      {maxCapacity = maxCapacity, minCapacity = minCapacity,
       resourceId = resourceId, scalableDimension = scalableDimension,
       serviceNamespace = serviceNamespace,
       targetTrackingConfigurations = targetTrackingConfigurations,
       customizedLoadMetricSpecification = Prelude.Nothing,
       disableDynamicScaling = Prelude.Nothing,
       predefinedLoadMetricSpecification = Prelude.Nothing,
       predictiveScalingMaxCapacityBehavior = Prelude.Nothing,
       predictiveScalingMaxCapacityBuffer = Prelude.Nothing,
       predictiveScalingMode = Prelude.Nothing,
       scalingPolicyUpdateBehavior = Prelude.Nothing,
       scheduledActionBufferTime = Prelude.Nothing}
instance ToResourceProperties ScalingInstructionProperty where
  toResourceProperties ScalingInstructionProperty {..}
    = ResourceProperties
        {awsType = "AWS::AutoScalingPlans::ScalingPlan.ScalingInstruction",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxCapacity" JSON..= maxCapacity,
                            "MinCapacity" JSON..= minCapacity, "ResourceId" JSON..= resourceId,
                            "ScalableDimension" JSON..= scalableDimension,
                            "ServiceNamespace" JSON..= serviceNamespace,
                            "TargetTrackingConfigurations"
                              JSON..= targetTrackingConfigurations]
                           (Prelude.catMaybes
                              [(JSON..=) "CustomizedLoadMetricSpecification"
                                 Prelude.<$> customizedLoadMetricSpecification,
                               (JSON..=) "DisableDynamicScaling"
                                 Prelude.<$> disableDynamicScaling,
                               (JSON..=) "PredefinedLoadMetricSpecification"
                                 Prelude.<$> predefinedLoadMetricSpecification,
                               (JSON..=) "PredictiveScalingMaxCapacityBehavior"
                                 Prelude.<$> predictiveScalingMaxCapacityBehavior,
                               (JSON..=) "PredictiveScalingMaxCapacityBuffer"
                                 Prelude.<$> predictiveScalingMaxCapacityBuffer,
                               (JSON..=) "PredictiveScalingMode"
                                 Prelude.<$> predictiveScalingMode,
                               (JSON..=) "ScalingPolicyUpdateBehavior"
                                 Prelude.<$> scalingPolicyUpdateBehavior,
                               (JSON..=) "ScheduledActionBufferTime"
                                 Prelude.<$> scheduledActionBufferTime]))}
instance JSON.ToJSON ScalingInstructionProperty where
  toJSON ScalingInstructionProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxCapacity" JSON..= maxCapacity,
               "MinCapacity" JSON..= minCapacity, "ResourceId" JSON..= resourceId,
               "ScalableDimension" JSON..= scalableDimension,
               "ServiceNamespace" JSON..= serviceNamespace,
               "TargetTrackingConfigurations"
                 JSON..= targetTrackingConfigurations]
              (Prelude.catMaybes
                 [(JSON..=) "CustomizedLoadMetricSpecification"
                    Prelude.<$> customizedLoadMetricSpecification,
                  (JSON..=) "DisableDynamicScaling"
                    Prelude.<$> disableDynamicScaling,
                  (JSON..=) "PredefinedLoadMetricSpecification"
                    Prelude.<$> predefinedLoadMetricSpecification,
                  (JSON..=) "PredictiveScalingMaxCapacityBehavior"
                    Prelude.<$> predictiveScalingMaxCapacityBehavior,
                  (JSON..=) "PredictiveScalingMaxCapacityBuffer"
                    Prelude.<$> predictiveScalingMaxCapacityBuffer,
                  (JSON..=) "PredictiveScalingMode"
                    Prelude.<$> predictiveScalingMode,
                  (JSON..=) "ScalingPolicyUpdateBehavior"
                    Prelude.<$> scalingPolicyUpdateBehavior,
                  (JSON..=) "ScheduledActionBufferTime"
                    Prelude.<$> scheduledActionBufferTime])))
instance Property "CustomizedLoadMetricSpecification" ScalingInstructionProperty where
  type PropertyType "CustomizedLoadMetricSpecification" ScalingInstructionProperty = CustomizedLoadMetricSpecificationProperty
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {customizedLoadMetricSpecification = Prelude.pure newValue, ..}
instance Property "DisableDynamicScaling" ScalingInstructionProperty where
  type PropertyType "DisableDynamicScaling" ScalingInstructionProperty = Value Prelude.Bool
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {disableDynamicScaling = Prelude.pure newValue, ..}
instance Property "MaxCapacity" ScalingInstructionProperty where
  type PropertyType "MaxCapacity" ScalingInstructionProperty = Value Prelude.Integer
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty {maxCapacity = newValue, ..}
instance Property "MinCapacity" ScalingInstructionProperty where
  type PropertyType "MinCapacity" ScalingInstructionProperty = Value Prelude.Integer
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty {minCapacity = newValue, ..}
instance Property "PredefinedLoadMetricSpecification" ScalingInstructionProperty where
  type PropertyType "PredefinedLoadMetricSpecification" ScalingInstructionProperty = PredefinedLoadMetricSpecificationProperty
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {predefinedLoadMetricSpecification = Prelude.pure newValue, ..}
instance Property "PredictiveScalingMaxCapacityBehavior" ScalingInstructionProperty where
  type PropertyType "PredictiveScalingMaxCapacityBehavior" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {predictiveScalingMaxCapacityBehavior = Prelude.pure newValue, ..}
instance Property "PredictiveScalingMaxCapacityBuffer" ScalingInstructionProperty where
  type PropertyType "PredictiveScalingMaxCapacityBuffer" ScalingInstructionProperty = Value Prelude.Integer
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {predictiveScalingMaxCapacityBuffer = Prelude.pure newValue, ..}
instance Property "PredictiveScalingMode" ScalingInstructionProperty where
  type PropertyType "PredictiveScalingMode" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {predictiveScalingMode = Prelude.pure newValue, ..}
instance Property "ResourceId" ScalingInstructionProperty where
  type PropertyType "ResourceId" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty {resourceId = newValue, ..}
instance Property "ScalableDimension" ScalingInstructionProperty where
  type PropertyType "ScalableDimension" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty {scalableDimension = newValue, ..}
instance Property "ScalingPolicyUpdateBehavior" ScalingInstructionProperty where
  type PropertyType "ScalingPolicyUpdateBehavior" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {scalingPolicyUpdateBehavior = Prelude.pure newValue, ..}
instance Property "ScheduledActionBufferTime" ScalingInstructionProperty where
  type PropertyType "ScheduledActionBufferTime" ScalingInstructionProperty = Value Prelude.Integer
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {scheduledActionBufferTime = Prelude.pure newValue, ..}
instance Property "ServiceNamespace" ScalingInstructionProperty where
  type PropertyType "ServiceNamespace" ScalingInstructionProperty = Value Prelude.Text
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty {serviceNamespace = newValue, ..}
instance Property "TargetTrackingConfigurations" ScalingInstructionProperty where
  type PropertyType "TargetTrackingConfigurations" ScalingInstructionProperty = [TargetTrackingConfigurationProperty]
  set newValue ScalingInstructionProperty {..}
    = ScalingInstructionProperty
        {targetTrackingConfigurations = newValue, ..}