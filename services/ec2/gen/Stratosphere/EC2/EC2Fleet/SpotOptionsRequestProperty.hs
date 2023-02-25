module Stratosphere.EC2.EC2Fleet.SpotOptionsRequestProperty (
        module Exports, SpotOptionsRequestProperty(..),
        mkSpotOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.MaintenanceStrategiesProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SpotOptionsRequestProperty
  = SpotOptionsRequestProperty {allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                instanceInterruptionBehavior :: (Prelude.Maybe (Value Prelude.Text)),
                                instancePoolsToUseCount :: (Prelude.Maybe (Value Prelude.Integer)),
                                maintenanceStrategies :: (Prelude.Maybe MaintenanceStrategiesProperty),
                                maxTotalPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                minTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                singleAvailabilityZone :: (Prelude.Maybe (Value Prelude.Bool)),
                                singleInstanceType :: (Prelude.Maybe (Value Prelude.Bool))}
mkSpotOptionsRequestProperty :: SpotOptionsRequestProperty
mkSpotOptionsRequestProperty
  = SpotOptionsRequestProperty
      {allocationStrategy = Prelude.Nothing,
       instanceInterruptionBehavior = Prelude.Nothing,
       instancePoolsToUseCount = Prelude.Nothing,
       maintenanceStrategies = Prelude.Nothing,
       maxTotalPrice = Prelude.Nothing,
       minTargetCapacity = Prelude.Nothing,
       singleAvailabilityZone = Prelude.Nothing,
       singleInstanceType = Prelude.Nothing}
instance ToResourceProperties SpotOptionsRequestProperty where
  toResourceProperties SpotOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.SpotOptionsRequest",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                            (JSON..=) "InstanceInterruptionBehavior"
                              Prelude.<$> instanceInterruptionBehavior,
                            (JSON..=) "InstancePoolsToUseCount"
                              Prelude.<$> instancePoolsToUseCount,
                            (JSON..=) "MaintenanceStrategies"
                              Prelude.<$> maintenanceStrategies,
                            (JSON..=) "MaxTotalPrice" Prelude.<$> maxTotalPrice,
                            (JSON..=) "MinTargetCapacity" Prelude.<$> minTargetCapacity,
                            (JSON..=) "SingleAvailabilityZone"
                              Prelude.<$> singleAvailabilityZone,
                            (JSON..=) "SingleInstanceType" Prelude.<$> singleInstanceType])}
instance JSON.ToJSON SpotOptionsRequestProperty where
  toJSON SpotOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
               (JSON..=) "InstanceInterruptionBehavior"
                 Prelude.<$> instanceInterruptionBehavior,
               (JSON..=) "InstancePoolsToUseCount"
                 Prelude.<$> instancePoolsToUseCount,
               (JSON..=) "MaintenanceStrategies"
                 Prelude.<$> maintenanceStrategies,
               (JSON..=) "MaxTotalPrice" Prelude.<$> maxTotalPrice,
               (JSON..=) "MinTargetCapacity" Prelude.<$> minTargetCapacity,
               (JSON..=) "SingleAvailabilityZone"
                 Prelude.<$> singleAvailabilityZone,
               (JSON..=) "SingleInstanceType" Prelude.<$> singleInstanceType]))
instance Property "AllocationStrategy" SpotOptionsRequestProperty where
  type PropertyType "AllocationStrategy" SpotOptionsRequestProperty = Value Prelude.Text
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "InstanceInterruptionBehavior" SpotOptionsRequestProperty where
  type PropertyType "InstanceInterruptionBehavior" SpotOptionsRequestProperty = Value Prelude.Text
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {instanceInterruptionBehavior = Prelude.pure newValue, ..}
instance Property "InstancePoolsToUseCount" SpotOptionsRequestProperty where
  type PropertyType "InstancePoolsToUseCount" SpotOptionsRequestProperty = Value Prelude.Integer
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {instancePoolsToUseCount = Prelude.pure newValue, ..}
instance Property "MaintenanceStrategies" SpotOptionsRequestProperty where
  type PropertyType "MaintenanceStrategies" SpotOptionsRequestProperty = MaintenanceStrategiesProperty
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {maintenanceStrategies = Prelude.pure newValue, ..}
instance Property "MaxTotalPrice" SpotOptionsRequestProperty where
  type PropertyType "MaxTotalPrice" SpotOptionsRequestProperty = Value Prelude.Text
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {maxTotalPrice = Prelude.pure newValue, ..}
instance Property "MinTargetCapacity" SpotOptionsRequestProperty where
  type PropertyType "MinTargetCapacity" SpotOptionsRequestProperty = Value Prelude.Integer
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {minTargetCapacity = Prelude.pure newValue, ..}
instance Property "SingleAvailabilityZone" SpotOptionsRequestProperty where
  type PropertyType "SingleAvailabilityZone" SpotOptionsRequestProperty = Value Prelude.Bool
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {singleAvailabilityZone = Prelude.pure newValue, ..}
instance Property "SingleInstanceType" SpotOptionsRequestProperty where
  type PropertyType "SingleInstanceType" SpotOptionsRequestProperty = Value Prelude.Bool
  set newValue SpotOptionsRequestProperty {..}
    = SpotOptionsRequestProperty
        {singleInstanceType = Prelude.pure newValue, ..}