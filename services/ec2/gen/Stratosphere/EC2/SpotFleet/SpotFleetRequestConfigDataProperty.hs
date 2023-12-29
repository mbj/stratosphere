module Stratosphere.EC2.SpotFleet.SpotFleetRequestConfigDataProperty (
        module Exports, SpotFleetRequestConfigDataProperty(..),
        mkSpotFleetRequestConfigDataProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.LaunchTemplateConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.LoadBalancersConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetLaunchSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotFleetTagSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.SpotFleet.SpotMaintenanceStrategiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotFleetRequestConfigDataProperty
  = SpotFleetRequestConfigDataProperty {allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                        context :: (Prelude.Maybe (Value Prelude.Text)),
                                        excessCapacityTerminationPolicy :: (Prelude.Maybe (Value Prelude.Text)),
                                        iamFleetRole :: (Value Prelude.Text),
                                        instanceInterruptionBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                        instancePoolsToUseCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                        launchSpecifications :: (Prelude.Maybe [SpotFleetLaunchSpecificationProperty]),
                                        launchTemplateConfigs :: (Prelude.Maybe [LaunchTemplateConfigProperty]),
                                        loadBalancersConfig :: (Prelude.Maybe LoadBalancersConfigProperty),
                                        onDemandAllocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                        onDemandMaxTotalPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                        onDemandTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                        replaceUnhealthyInstances :: (Prelude.Maybe (Value Prelude.Bool)),
                                        spotMaintenanceStrategies :: (Prelude.Maybe SpotMaintenanceStrategiesProperty),
                                        spotMaxTotalPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                        spotPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                        tagSpecifications :: (Prelude.Maybe [SpotFleetTagSpecificationProperty]),
                                        targetCapacity :: (Value Prelude.Integer),
                                        targetCapacityUnitType :: (Prelude.Maybe (Value Prelude.Text)),
                                        terminateInstancesWithExpiration :: (Prelude.Maybe (Value Prelude.Bool)),
                                        type' :: (Prelude.Maybe (Value Prelude.Text)),
                                        validFrom :: (Prelude.Maybe (Value Prelude.Text)),
                                        validUntil :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSpotFleetRequestConfigDataProperty ::
  Value Prelude.Text
  -> Value Prelude.Integer -> SpotFleetRequestConfigDataProperty
mkSpotFleetRequestConfigDataProperty iamFleetRole targetCapacity
  = SpotFleetRequestConfigDataProperty
      {iamFleetRole = iamFleetRole, targetCapacity = targetCapacity,
       allocationStrategy = Prelude.Nothing, context = Prelude.Nothing,
       excessCapacityTerminationPolicy = Prelude.Nothing,
       instanceInterruptionBehavior = Prelude.Nothing,
       instancePoolsToUseCount = Prelude.Nothing,
       launchSpecifications = Prelude.Nothing,
       launchTemplateConfigs = Prelude.Nothing,
       loadBalancersConfig = Prelude.Nothing,
       onDemandAllocationStrategy = Prelude.Nothing,
       onDemandMaxTotalPrice = Prelude.Nothing,
       onDemandTargetCapacity = Prelude.Nothing,
       replaceUnhealthyInstances = Prelude.Nothing,
       spotMaintenanceStrategies = Prelude.Nothing,
       spotMaxTotalPrice = Prelude.Nothing, spotPrice = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing,
       targetCapacityUnitType = Prelude.Nothing,
       terminateInstancesWithExpiration = Prelude.Nothing,
       type' = Prelude.Nothing, validFrom = Prelude.Nothing,
       validUntil = Prelude.Nothing}
instance ToResourceProperties SpotFleetRequestConfigDataProperty where
  toResourceProperties SpotFleetRequestConfigDataProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SpotFleet.SpotFleetRequestConfigData",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IamFleetRole" JSON..= iamFleetRole,
                            "TargetCapacity" JSON..= targetCapacity]
                           (Prelude.catMaybes
                              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                               (JSON..=) "Context" Prelude.<$> context,
                               (JSON..=) "ExcessCapacityTerminationPolicy"
                                 Prelude.<$> excessCapacityTerminationPolicy,
                               (JSON..=) "InstanceInterruptionBehavior"
                                 Prelude.<$> instanceInterruptionBehavior,
                               (JSON..=) "InstancePoolsToUseCount"
                                 Prelude.<$> instancePoolsToUseCount,
                               (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
                               (JSON..=) "LaunchTemplateConfigs"
                                 Prelude.<$> launchTemplateConfigs,
                               (JSON..=) "LoadBalancersConfig" Prelude.<$> loadBalancersConfig,
                               (JSON..=) "OnDemandAllocationStrategy"
                                 Prelude.<$> onDemandAllocationStrategy,
                               (JSON..=) "OnDemandMaxTotalPrice"
                                 Prelude.<$> onDemandMaxTotalPrice,
                               (JSON..=) "OnDemandTargetCapacity"
                                 Prelude.<$> onDemandTargetCapacity,
                               (JSON..=) "ReplaceUnhealthyInstances"
                                 Prelude.<$> replaceUnhealthyInstances,
                               (JSON..=) "SpotMaintenanceStrategies"
                                 Prelude.<$> spotMaintenanceStrategies,
                               (JSON..=) "SpotMaxTotalPrice" Prelude.<$> spotMaxTotalPrice,
                               (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "TargetCapacityUnitType"
                                 Prelude.<$> targetCapacityUnitType,
                               (JSON..=) "TerminateInstancesWithExpiration"
                                 Prelude.<$> terminateInstancesWithExpiration,
                               (JSON..=) "Type" Prelude.<$> type',
                               (JSON..=) "ValidFrom" Prelude.<$> validFrom,
                               (JSON..=) "ValidUntil" Prelude.<$> validUntil]))}
instance JSON.ToJSON SpotFleetRequestConfigDataProperty where
  toJSON SpotFleetRequestConfigDataProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IamFleetRole" JSON..= iamFleetRole,
               "TargetCapacity" JSON..= targetCapacity]
              (Prelude.catMaybes
                 [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                  (JSON..=) "Context" Prelude.<$> context,
                  (JSON..=) "ExcessCapacityTerminationPolicy"
                    Prelude.<$> excessCapacityTerminationPolicy,
                  (JSON..=) "InstanceInterruptionBehavior"
                    Prelude.<$> instanceInterruptionBehavior,
                  (JSON..=) "InstancePoolsToUseCount"
                    Prelude.<$> instancePoolsToUseCount,
                  (JSON..=) "LaunchSpecifications" Prelude.<$> launchSpecifications,
                  (JSON..=) "LaunchTemplateConfigs"
                    Prelude.<$> launchTemplateConfigs,
                  (JSON..=) "LoadBalancersConfig" Prelude.<$> loadBalancersConfig,
                  (JSON..=) "OnDemandAllocationStrategy"
                    Prelude.<$> onDemandAllocationStrategy,
                  (JSON..=) "OnDemandMaxTotalPrice"
                    Prelude.<$> onDemandMaxTotalPrice,
                  (JSON..=) "OnDemandTargetCapacity"
                    Prelude.<$> onDemandTargetCapacity,
                  (JSON..=) "ReplaceUnhealthyInstances"
                    Prelude.<$> replaceUnhealthyInstances,
                  (JSON..=) "SpotMaintenanceStrategies"
                    Prelude.<$> spotMaintenanceStrategies,
                  (JSON..=) "SpotMaxTotalPrice" Prelude.<$> spotMaxTotalPrice,
                  (JSON..=) "SpotPrice" Prelude.<$> spotPrice,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "TargetCapacityUnitType"
                    Prelude.<$> targetCapacityUnitType,
                  (JSON..=) "TerminateInstancesWithExpiration"
                    Prelude.<$> terminateInstancesWithExpiration,
                  (JSON..=) "Type" Prelude.<$> type',
                  (JSON..=) "ValidFrom" Prelude.<$> validFrom,
                  (JSON..=) "ValidUntil" Prelude.<$> validUntil])))
instance Property "AllocationStrategy" SpotFleetRequestConfigDataProperty where
  type PropertyType "AllocationStrategy" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "Context" SpotFleetRequestConfigDataProperty where
  type PropertyType "Context" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {context = Prelude.pure newValue, ..}
instance Property "ExcessCapacityTerminationPolicy" SpotFleetRequestConfigDataProperty where
  type PropertyType "ExcessCapacityTerminationPolicy" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {excessCapacityTerminationPolicy = Prelude.pure newValue, ..}
instance Property "IamFleetRole" SpotFleetRequestConfigDataProperty where
  type PropertyType "IamFleetRole" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty {iamFleetRole = newValue, ..}
instance Property "InstanceInterruptionBehavior" SpotFleetRequestConfigDataProperty where
  type PropertyType "InstanceInterruptionBehavior" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {instanceInterruptionBehavior = Prelude.pure newValue, ..}
instance Property "InstancePoolsToUseCount" SpotFleetRequestConfigDataProperty where
  type PropertyType "InstancePoolsToUseCount" SpotFleetRequestConfigDataProperty = Value Prelude.Integer
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {instancePoolsToUseCount = Prelude.pure newValue, ..}
instance Property "LaunchSpecifications" SpotFleetRequestConfigDataProperty where
  type PropertyType "LaunchSpecifications" SpotFleetRequestConfigDataProperty = [SpotFleetLaunchSpecificationProperty]
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {launchSpecifications = Prelude.pure newValue, ..}
instance Property "LaunchTemplateConfigs" SpotFleetRequestConfigDataProperty where
  type PropertyType "LaunchTemplateConfigs" SpotFleetRequestConfigDataProperty = [LaunchTemplateConfigProperty]
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {launchTemplateConfigs = Prelude.pure newValue, ..}
instance Property "LoadBalancersConfig" SpotFleetRequestConfigDataProperty where
  type PropertyType "LoadBalancersConfig" SpotFleetRequestConfigDataProperty = LoadBalancersConfigProperty
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {loadBalancersConfig = Prelude.pure newValue, ..}
instance Property "OnDemandAllocationStrategy" SpotFleetRequestConfigDataProperty where
  type PropertyType "OnDemandAllocationStrategy" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {onDemandAllocationStrategy = Prelude.pure newValue, ..}
instance Property "OnDemandMaxTotalPrice" SpotFleetRequestConfigDataProperty where
  type PropertyType "OnDemandMaxTotalPrice" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {onDemandMaxTotalPrice = Prelude.pure newValue, ..}
instance Property "OnDemandTargetCapacity" SpotFleetRequestConfigDataProperty where
  type PropertyType "OnDemandTargetCapacity" SpotFleetRequestConfigDataProperty = Value Prelude.Integer
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {onDemandTargetCapacity = Prelude.pure newValue, ..}
instance Property "ReplaceUnhealthyInstances" SpotFleetRequestConfigDataProperty where
  type PropertyType "ReplaceUnhealthyInstances" SpotFleetRequestConfigDataProperty = Value Prelude.Bool
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {replaceUnhealthyInstances = Prelude.pure newValue, ..}
instance Property "SpotMaintenanceStrategies" SpotFleetRequestConfigDataProperty where
  type PropertyType "SpotMaintenanceStrategies" SpotFleetRequestConfigDataProperty = SpotMaintenanceStrategiesProperty
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {spotMaintenanceStrategies = Prelude.pure newValue, ..}
instance Property "SpotMaxTotalPrice" SpotFleetRequestConfigDataProperty where
  type PropertyType "SpotMaxTotalPrice" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {spotMaxTotalPrice = Prelude.pure newValue, ..}
instance Property "SpotPrice" SpotFleetRequestConfigDataProperty where
  type PropertyType "SpotPrice" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {spotPrice = Prelude.pure newValue, ..}
instance Property "TagSpecifications" SpotFleetRequestConfigDataProperty where
  type PropertyType "TagSpecifications" SpotFleetRequestConfigDataProperty = [SpotFleetTagSpecificationProperty]
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "TargetCapacity" SpotFleetRequestConfigDataProperty where
  type PropertyType "TargetCapacity" SpotFleetRequestConfigDataProperty = Value Prelude.Integer
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {targetCapacity = newValue, ..}
instance Property "TargetCapacityUnitType" SpotFleetRequestConfigDataProperty where
  type PropertyType "TargetCapacityUnitType" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {targetCapacityUnitType = Prelude.pure newValue, ..}
instance Property "TerminateInstancesWithExpiration" SpotFleetRequestConfigDataProperty where
  type PropertyType "TerminateInstancesWithExpiration" SpotFleetRequestConfigDataProperty = Value Prelude.Bool
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {terminateInstancesWithExpiration = Prelude.pure newValue, ..}
instance Property "Type" SpotFleetRequestConfigDataProperty where
  type PropertyType "Type" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {type' = Prelude.pure newValue, ..}
instance Property "ValidFrom" SpotFleetRequestConfigDataProperty where
  type PropertyType "ValidFrom" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {validFrom = Prelude.pure newValue, ..}
instance Property "ValidUntil" SpotFleetRequestConfigDataProperty where
  type PropertyType "ValidUntil" SpotFleetRequestConfigDataProperty = Value Prelude.Text
  set newValue SpotFleetRequestConfigDataProperty {..}
    = SpotFleetRequestConfigDataProperty
        {validUntil = Prelude.pure newValue, ..}