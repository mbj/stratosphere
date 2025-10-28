module Stratosphere.ECS.CapacityProvider.AutoScalingGroupProviderProperty (
        module Exports, AutoScalingGroupProviderProperty(..),
        mkAutoScalingGroupProviderProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ECS.CapacityProvider.ManagedScalingProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data AutoScalingGroupProviderProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html>
    AutoScalingGroupProviderProperty {haddock_workaround_ :: (),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-autoscalinggrouparn>
                                      autoScalingGroupArn :: (Value Prelude.Text),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-manageddraining>
                                      managedDraining :: (Prelude.Maybe (Value Prelude.Text)),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-managedscaling>
                                      managedScaling :: (Prelude.Maybe ManagedScalingProperty),
                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ecs-capacityprovider-autoscalinggroupprovider.html#cfn-ecs-capacityprovider-autoscalinggroupprovider-managedterminationprotection>
                                      managedTerminationProtection :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkAutoScalingGroupProviderProperty ::
  Value Prelude.Text -> AutoScalingGroupProviderProperty
mkAutoScalingGroupProviderProperty autoScalingGroupArn
  = AutoScalingGroupProviderProperty
      {haddock_workaround_ = (),
       autoScalingGroupArn = autoScalingGroupArn,
       managedDraining = Prelude.Nothing,
       managedScaling = Prelude.Nothing,
       managedTerminationProtection = Prelude.Nothing}
instance ToResourceProperties AutoScalingGroupProviderProperty where
  toResourceProperties AutoScalingGroupProviderProperty {..}
    = ResourceProperties
        {awsType = "AWS::ECS::CapacityProvider.AutoScalingGroupProvider",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AutoScalingGroupArn" JSON..= autoScalingGroupArn]
                           (Prelude.catMaybes
                              [(JSON..=) "ManagedDraining" Prelude.<$> managedDraining,
                               (JSON..=) "ManagedScaling" Prelude.<$> managedScaling,
                               (JSON..=) "ManagedTerminationProtection"
                                 Prelude.<$> managedTerminationProtection]))}
instance JSON.ToJSON AutoScalingGroupProviderProperty where
  toJSON AutoScalingGroupProviderProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AutoScalingGroupArn" JSON..= autoScalingGroupArn]
              (Prelude.catMaybes
                 [(JSON..=) "ManagedDraining" Prelude.<$> managedDraining,
                  (JSON..=) "ManagedScaling" Prelude.<$> managedScaling,
                  (JSON..=) "ManagedTerminationProtection"
                    Prelude.<$> managedTerminationProtection])))
instance Property "AutoScalingGroupArn" AutoScalingGroupProviderProperty where
  type PropertyType "AutoScalingGroupArn" AutoScalingGroupProviderProperty = Value Prelude.Text
  set newValue AutoScalingGroupProviderProperty {..}
    = AutoScalingGroupProviderProperty
        {autoScalingGroupArn = newValue, ..}
instance Property "ManagedDraining" AutoScalingGroupProviderProperty where
  type PropertyType "ManagedDraining" AutoScalingGroupProviderProperty = Value Prelude.Text
  set newValue AutoScalingGroupProviderProperty {..}
    = AutoScalingGroupProviderProperty
        {managedDraining = Prelude.pure newValue, ..}
instance Property "ManagedScaling" AutoScalingGroupProviderProperty where
  type PropertyType "ManagedScaling" AutoScalingGroupProviderProperty = ManagedScalingProperty
  set newValue AutoScalingGroupProviderProperty {..}
    = AutoScalingGroupProviderProperty
        {managedScaling = Prelude.pure newValue, ..}
instance Property "ManagedTerminationProtection" AutoScalingGroupProviderProperty where
  type PropertyType "ManagedTerminationProtection" AutoScalingGroupProviderProperty = Value Prelude.Text
  set newValue AutoScalingGroupProviderProperty {..}
    = AutoScalingGroupProviderProperty
        {managedTerminationProtection = Prelude.pure newValue, ..}