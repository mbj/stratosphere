module Stratosphere.DynamoDB.GlobalTable.CapacityAutoScalingSettingsProperty (
        module Exports, CapacityAutoScalingSettingsProperty(..),
        mkCapacityAutoScalingSettingsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.DynamoDB.GlobalTable.TargetTrackingScalingPolicyConfigurationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityAutoScalingSettingsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html>
    CapacityAutoScalingSettingsProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-maxcapacity>
                                         maxCapacity :: (Value Prelude.Integer),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-mincapacity>
                                         minCapacity :: (Value Prelude.Integer),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-seedcapacity>
                                         seedCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-dynamodb-globaltable-capacityautoscalingsettings.html#cfn-dynamodb-globaltable-capacityautoscalingsettings-targettrackingscalingpolicyconfiguration>
                                         targetTrackingScalingPolicyConfiguration :: TargetTrackingScalingPolicyConfigurationProperty}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityAutoScalingSettingsProperty ::
  Value Prelude.Integer
  -> Value Prelude.Integer
     -> TargetTrackingScalingPolicyConfigurationProperty
        -> CapacityAutoScalingSettingsProperty
mkCapacityAutoScalingSettingsProperty
  maxCapacity
  minCapacity
  targetTrackingScalingPolicyConfiguration
  = CapacityAutoScalingSettingsProperty
      {haddock_workaround_ = (), maxCapacity = maxCapacity,
       minCapacity = minCapacity,
       targetTrackingScalingPolicyConfiguration = targetTrackingScalingPolicyConfiguration,
       seedCapacity = Prelude.Nothing}
instance ToResourceProperties CapacityAutoScalingSettingsProperty where
  toResourceProperties CapacityAutoScalingSettingsProperty {..}
    = ResourceProperties
        {awsType = "AWS::DynamoDB::GlobalTable.CapacityAutoScalingSettings",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["MaxCapacity" JSON..= maxCapacity,
                            "MinCapacity" JSON..= minCapacity,
                            "TargetTrackingScalingPolicyConfiguration"
                              JSON..= targetTrackingScalingPolicyConfiguration]
                           (Prelude.catMaybes
                              [(JSON..=) "SeedCapacity" Prelude.<$> seedCapacity]))}
instance JSON.ToJSON CapacityAutoScalingSettingsProperty where
  toJSON CapacityAutoScalingSettingsProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["MaxCapacity" JSON..= maxCapacity,
               "MinCapacity" JSON..= minCapacity,
               "TargetTrackingScalingPolicyConfiguration"
                 JSON..= targetTrackingScalingPolicyConfiguration]
              (Prelude.catMaybes
                 [(JSON..=) "SeedCapacity" Prelude.<$> seedCapacity])))
instance Property "MaxCapacity" CapacityAutoScalingSettingsProperty where
  type PropertyType "MaxCapacity" CapacityAutoScalingSettingsProperty = Value Prelude.Integer
  set newValue CapacityAutoScalingSettingsProperty {..}
    = CapacityAutoScalingSettingsProperty {maxCapacity = newValue, ..}
instance Property "MinCapacity" CapacityAutoScalingSettingsProperty where
  type PropertyType "MinCapacity" CapacityAutoScalingSettingsProperty = Value Prelude.Integer
  set newValue CapacityAutoScalingSettingsProperty {..}
    = CapacityAutoScalingSettingsProperty {minCapacity = newValue, ..}
instance Property "SeedCapacity" CapacityAutoScalingSettingsProperty where
  type PropertyType "SeedCapacity" CapacityAutoScalingSettingsProperty = Value Prelude.Integer
  set newValue CapacityAutoScalingSettingsProperty {..}
    = CapacityAutoScalingSettingsProperty
        {seedCapacity = Prelude.pure newValue, ..}
instance Property "TargetTrackingScalingPolicyConfiguration" CapacityAutoScalingSettingsProperty where
  type PropertyType "TargetTrackingScalingPolicyConfiguration" CapacityAutoScalingSettingsProperty = TargetTrackingScalingPolicyConfigurationProperty
  set newValue CapacityAutoScalingSettingsProperty {..}
    = CapacityAutoScalingSettingsProperty
        {targetTrackingScalingPolicyConfiguration = newValue, ..}