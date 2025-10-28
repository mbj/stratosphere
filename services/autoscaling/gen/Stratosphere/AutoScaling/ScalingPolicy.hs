module Stratosphere.AutoScaling.ScalingPolicy (
        module Exports, ScalingPolicy(..), mkScalingPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.PredictiveScalingConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.StepAdjustmentProperty as Exports
import {-# SOURCE #-} Stratosphere.AutoScaling.ScalingPolicy.TargetTrackingConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html>
    ScalingPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-adjustmenttype>
                   adjustmentType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-autoscalinggroupname>
                   autoScalingGroupName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-cooldown>
                   cooldown :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-estimatedinstancewarmup>
                   estimatedInstanceWarmup :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-metricaggregationtype>
                   metricAggregationType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-minadjustmentmagnitude>
                   minAdjustmentMagnitude :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-policytype>
                   policyType :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-predictivescalingconfiguration>
                   predictiveScalingConfiguration :: (Prelude.Maybe PredictiveScalingConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-scalingadjustment>
                   scalingAdjustment :: (Prelude.Maybe (Value Prelude.Integer)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-stepadjustments>
                   stepAdjustments :: (Prelude.Maybe [StepAdjustmentProperty]),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-autoscaling-scalingpolicy.html#cfn-autoscaling-scalingpolicy-targettrackingconfiguration>
                   targetTrackingConfiguration :: (Prelude.Maybe TargetTrackingConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingPolicy :: Value Prelude.Text -> ScalingPolicy
mkScalingPolicy autoScalingGroupName
  = ScalingPolicy
      {haddock_workaround_ = (),
       autoScalingGroupName = autoScalingGroupName,
       adjustmentType = Prelude.Nothing, cooldown = Prelude.Nothing,
       estimatedInstanceWarmup = Prelude.Nothing,
       metricAggregationType = Prelude.Nothing,
       minAdjustmentMagnitude = Prelude.Nothing,
       policyType = Prelude.Nothing,
       predictiveScalingConfiguration = Prelude.Nothing,
       scalingAdjustment = Prelude.Nothing,
       stepAdjustments = Prelude.Nothing,
       targetTrackingConfiguration = Prelude.Nothing}
instance ToResourceProperties ScalingPolicy where
  toResourceProperties ScalingPolicy {..}
    = ResourceProperties
        {awsType = "AWS::AutoScaling::ScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupName" JSON..= autoScalingGroupName]
                           (Prelude.catMaybes
                              [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
                               (JSON..=) "Cooldown" Prelude.<$> cooldown,
                               (JSON..=) "EstimatedInstanceWarmup"
                                 Prelude.<$> estimatedInstanceWarmup,
                               (JSON..=) "MetricAggregationType"
                                 Prelude.<$> metricAggregationType,
                               (JSON..=) "MinAdjustmentMagnitude"
                                 Prelude.<$> minAdjustmentMagnitude,
                               (JSON..=) "PolicyType" Prelude.<$> policyType,
                               (JSON..=) "PredictiveScalingConfiguration"
                                 Prelude.<$> predictiveScalingConfiguration,
                               (JSON..=) "ScalingAdjustment" Prelude.<$> scalingAdjustment,
                               (JSON..=) "StepAdjustments" Prelude.<$> stepAdjustments,
                               (JSON..=) "TargetTrackingConfiguration"
                                 Prelude.<$> targetTrackingConfiguration]))}
instance JSON.ToJSON ScalingPolicy where
  toJSON ScalingPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupName" JSON..= autoScalingGroupName]
              (Prelude.catMaybes
                 [(JSON..=) "AdjustmentType" Prelude.<$> adjustmentType,
                  (JSON..=) "Cooldown" Prelude.<$> cooldown,
                  (JSON..=) "EstimatedInstanceWarmup"
                    Prelude.<$> estimatedInstanceWarmup,
                  (JSON..=) "MetricAggregationType"
                    Prelude.<$> metricAggregationType,
                  (JSON..=) "MinAdjustmentMagnitude"
                    Prelude.<$> minAdjustmentMagnitude,
                  (JSON..=) "PolicyType" Prelude.<$> policyType,
                  (JSON..=) "PredictiveScalingConfiguration"
                    Prelude.<$> predictiveScalingConfiguration,
                  (JSON..=) "ScalingAdjustment" Prelude.<$> scalingAdjustment,
                  (JSON..=) "StepAdjustments" Prelude.<$> stepAdjustments,
                  (JSON..=) "TargetTrackingConfiguration"
                    Prelude.<$> targetTrackingConfiguration])))
instance Property "AdjustmentType" ScalingPolicy where
  type PropertyType "AdjustmentType" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {adjustmentType = Prelude.pure newValue, ..}
instance Property "AutoScalingGroupName" ScalingPolicy where
  type PropertyType "AutoScalingGroupName" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {autoScalingGroupName = newValue, ..}
instance Property "Cooldown" ScalingPolicy where
  type PropertyType "Cooldown" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {cooldown = Prelude.pure newValue, ..}
instance Property "EstimatedInstanceWarmup" ScalingPolicy where
  type PropertyType "EstimatedInstanceWarmup" ScalingPolicy = Value Prelude.Integer
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {estimatedInstanceWarmup = Prelude.pure newValue, ..}
instance Property "MetricAggregationType" ScalingPolicy where
  type PropertyType "MetricAggregationType" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {metricAggregationType = Prelude.pure newValue, ..}
instance Property "MinAdjustmentMagnitude" ScalingPolicy where
  type PropertyType "MinAdjustmentMagnitude" ScalingPolicy = Value Prelude.Integer
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {minAdjustmentMagnitude = Prelude.pure newValue, ..}
instance Property "PolicyType" ScalingPolicy where
  type PropertyType "PolicyType" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {policyType = Prelude.pure newValue, ..}
instance Property "PredictiveScalingConfiguration" ScalingPolicy where
  type PropertyType "PredictiveScalingConfiguration" ScalingPolicy = PredictiveScalingConfigurationProperty
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {predictiveScalingConfiguration = Prelude.pure newValue, ..}
instance Property "ScalingAdjustment" ScalingPolicy where
  type PropertyType "ScalingAdjustment" ScalingPolicy = Value Prelude.Integer
  set newValue ScalingPolicy {..}
    = ScalingPolicy {scalingAdjustment = Prelude.pure newValue, ..}
instance Property "StepAdjustments" ScalingPolicy where
  type PropertyType "StepAdjustments" ScalingPolicy = [StepAdjustmentProperty]
  set newValue ScalingPolicy {..}
    = ScalingPolicy {stepAdjustments = Prelude.pure newValue, ..}
instance Property "TargetTrackingConfiguration" ScalingPolicy where
  type PropertyType "TargetTrackingConfiguration" ScalingPolicy = TargetTrackingConfigurationProperty
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {targetTrackingConfiguration = Prelude.pure newValue, ..}