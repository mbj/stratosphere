module Stratosphere.ApplicationAutoScaling.ScalingPolicy (
        module Exports, ScalingPolicy(..), mkScalingPolicy
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.PredictiveScalingPolicyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.StepScalingPolicyConfigurationProperty as Exports
import {-# SOURCE #-} Stratosphere.ApplicationAutoScaling.ScalingPolicy.TargetTrackingScalingPolicyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ScalingPolicy
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html>
    ScalingPolicy {haddock_workaround_ :: (),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policyname>
                   policyName :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-policytype>
                   policyType :: (Value Prelude.Text),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-predictivescalingpolicyconfiguration>
                   predictiveScalingPolicyConfiguration :: (Prelude.Maybe PredictiveScalingPolicyConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-resourceid>
                   resourceId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalabledimension>
                   scalableDimension :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-scalingtargetid>
                   scalingTargetId :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-servicenamespace>
                   serviceNamespace :: (Prelude.Maybe (Value Prelude.Text)),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-stepscalingpolicyconfiguration>
                   stepScalingPolicyConfiguration :: (Prelude.Maybe StepScalingPolicyConfigurationProperty),
                   -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-applicationautoscaling-scalingpolicy.html#cfn-applicationautoscaling-scalingpolicy-targettrackingscalingpolicyconfiguration>
                   targetTrackingScalingPolicyConfiguration :: (Prelude.Maybe TargetTrackingScalingPolicyConfigurationProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkScalingPolicy ::
  Value Prelude.Text -> Value Prelude.Text -> ScalingPolicy
mkScalingPolicy policyName policyType
  = ScalingPolicy
      {haddock_workaround_ = (), policyName = policyName,
       policyType = policyType,
       predictiveScalingPolicyConfiguration = Prelude.Nothing,
       resourceId = Prelude.Nothing, scalableDimension = Prelude.Nothing,
       scalingTargetId = Prelude.Nothing,
       serviceNamespace = Prelude.Nothing,
       stepScalingPolicyConfiguration = Prelude.Nothing,
       targetTrackingScalingPolicyConfiguration = Prelude.Nothing}
instance ToResourceProperties ScalingPolicy where
  toResourceProperties ScalingPolicy {..}
    = ResourceProperties
        {awsType = "AWS::ApplicationAutoScaling::ScalingPolicy",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["PolicyName" JSON..= policyName, "PolicyType" JSON..= policyType]
                           (Prelude.catMaybes
                              [(JSON..=) "PredictiveScalingPolicyConfiguration"
                                 Prelude.<$> predictiveScalingPolicyConfiguration,
                               (JSON..=) "ResourceId" Prelude.<$> resourceId,
                               (JSON..=) "ScalableDimension" Prelude.<$> scalableDimension,
                               (JSON..=) "ScalingTargetId" Prelude.<$> scalingTargetId,
                               (JSON..=) "ServiceNamespace" Prelude.<$> serviceNamespace,
                               (JSON..=) "StepScalingPolicyConfiguration"
                                 Prelude.<$> stepScalingPolicyConfiguration,
                               (JSON..=) "TargetTrackingScalingPolicyConfiguration"
                                 Prelude.<$> targetTrackingScalingPolicyConfiguration]))}
instance JSON.ToJSON ScalingPolicy where
  toJSON ScalingPolicy {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["PolicyName" JSON..= policyName, "PolicyType" JSON..= policyType]
              (Prelude.catMaybes
                 [(JSON..=) "PredictiveScalingPolicyConfiguration"
                    Prelude.<$> predictiveScalingPolicyConfiguration,
                  (JSON..=) "ResourceId" Prelude.<$> resourceId,
                  (JSON..=) "ScalableDimension" Prelude.<$> scalableDimension,
                  (JSON..=) "ScalingTargetId" Prelude.<$> scalingTargetId,
                  (JSON..=) "ServiceNamespace" Prelude.<$> serviceNamespace,
                  (JSON..=) "StepScalingPolicyConfiguration"
                    Prelude.<$> stepScalingPolicyConfiguration,
                  (JSON..=) "TargetTrackingScalingPolicyConfiguration"
                    Prelude.<$> targetTrackingScalingPolicyConfiguration])))
instance Property "PolicyName" ScalingPolicy where
  type PropertyType "PolicyName" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {policyName = newValue, ..}
instance Property "PolicyType" ScalingPolicy where
  type PropertyType "PolicyType" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {policyType = newValue, ..}
instance Property "PredictiveScalingPolicyConfiguration" ScalingPolicy where
  type PropertyType "PredictiveScalingPolicyConfiguration" ScalingPolicy = PredictiveScalingPolicyConfigurationProperty
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {predictiveScalingPolicyConfiguration = Prelude.pure newValue, ..}
instance Property "ResourceId" ScalingPolicy where
  type PropertyType "ResourceId" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {resourceId = Prelude.pure newValue, ..}
instance Property "ScalableDimension" ScalingPolicy where
  type PropertyType "ScalableDimension" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {scalableDimension = Prelude.pure newValue, ..}
instance Property "ScalingTargetId" ScalingPolicy where
  type PropertyType "ScalingTargetId" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {scalingTargetId = Prelude.pure newValue, ..}
instance Property "ServiceNamespace" ScalingPolicy where
  type PropertyType "ServiceNamespace" ScalingPolicy = Value Prelude.Text
  set newValue ScalingPolicy {..}
    = ScalingPolicy {serviceNamespace = Prelude.pure newValue, ..}
instance Property "StepScalingPolicyConfiguration" ScalingPolicy where
  type PropertyType "StepScalingPolicyConfiguration" ScalingPolicy = StepScalingPolicyConfigurationProperty
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {stepScalingPolicyConfiguration = Prelude.pure newValue, ..}
instance Property "TargetTrackingScalingPolicyConfiguration" ScalingPolicy where
  type PropertyType "TargetTrackingScalingPolicyConfiguration" ScalingPolicy = TargetTrackingScalingPolicyConfigurationProperty
  set newValue ScalingPolicy {..}
    = ScalingPolicy
        {targetTrackingScalingPolicyConfiguration = Prelude.pure newValue,
         ..}