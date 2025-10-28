module Stratosphere.DynamoDB.GlobalTable.TargetTrackingScalingPolicyConfigurationProperty (
        TargetTrackingScalingPolicyConfigurationProperty(..),
        mkTargetTrackingScalingPolicyConfigurationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetTrackingScalingPolicyConfigurationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-targettrackingscalingpolicyconfiguration.html>
    TargetTrackingScalingPolicyConfigurationProperty {haddock_workaround_ :: (),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-targettrackingscalingpolicyconfiguration.html#cfn-dynamodb-globaltable-targettrackingscalingpolicyconfiguration-disablescalein>
                                                      disableScaleIn :: (Prelude.Maybe (Value Prelude.Bool)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-targettrackingscalingpolicyconfiguration.html#cfn-dynamodb-globaltable-targettrackingscalingpolicyconfiguration-scaleincooldown>
                                                      scaleInCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-targettrackingscalingpolicyconfiguration.html#cfn-dynamodb-globaltable-targettrackingscalingpolicyconfiguration-scaleoutcooldown>
                                                      scaleOutCooldown :: (Prelude.Maybe (Value Prelude.Integer)),
                                                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-targettrackingscalingpolicyconfiguration.html#cfn-dynamodb-globaltable-targettrackingscalingpolicyconfiguration-targetvalue>
                                                      targetValue :: (Value Prelude.Double)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetTrackingScalingPolicyConfigurationProperty ::
  Value Prelude.Double
  -> TargetTrackingScalingPolicyConfigurationProperty
mkTargetTrackingScalingPolicyConfigurationProperty targetValue
  = TargetTrackingScalingPolicyConfigurationProperty
      {haddock_workaround_ = (), targetValue = targetValue,
       disableScaleIn = Prelude.Nothing,
       scaleInCooldown = Prelude.Nothing,
       scaleOutCooldown = Prelude.Nothing}
instance ToResourceProperties TargetTrackingScalingPolicyConfigurationProperty where
  toResourceProperties
    TargetTrackingScalingPolicyConfigurationProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.TargetTrackingScalingPolicyConfiguration",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["TargetValue" JSON..= targetValue]
                           (Prelude.catMaybes
                              [(JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                               (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                               (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown]))}
instance JSON.ToJSON TargetTrackingScalingPolicyConfigurationProperty where
  toJSON TargetTrackingScalingPolicyConfigurationProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["TargetValue" JSON..= targetValue]
              (Prelude.catMaybes
                 [(JSON..=) "DisableScaleIn" Prelude.<$> disableScaleIn,
                  (JSON..=) "ScaleInCooldown" Prelude.<$> scaleInCooldown,
                  (JSON..=) "ScaleOutCooldown" Prelude.<$> scaleOutCooldown])))
instance Property "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "DisableScaleIn" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Bool
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {disableScaleIn = Prelude.pure newValue, ..}
instance Property "ScaleInCooldown" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "ScaleInCooldown" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {scaleInCooldown = Prelude.pure newValue, ..}
instance Property "ScaleOutCooldown" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "ScaleOutCooldown" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Integer
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {scaleOutCooldown = Prelude.pure newValue, ..}
instance Property "TargetValue" TargetTrackingScalingPolicyConfigurationProperty where
  type PropertyType "TargetValue" TargetTrackingScalingPolicyConfigurationProperty = Value Prelude.Double
  set newValue TargetTrackingScalingPolicyConfigurationProperty {..}
    = TargetTrackingScalingPolicyConfigurationProperty
        {targetValue = newValue, ..}