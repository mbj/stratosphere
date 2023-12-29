module Stratosphere.EC2.EC2Fleet.OnDemandOptionsRequestProperty (
        module Exports, OnDemandOptionsRequestProperty(..),
        mkOnDemandOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.EC2Fleet.CapacityReservationOptionsRequestProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandOptionsRequestProperty
  = OnDemandOptionsRequestProperty {allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                    capacityReservationOptions :: (Prelude.Maybe CapacityReservationOptionsRequestProperty),
                                    maxTotalPrice :: (Prelude.Maybe (Value Prelude.Text)),
                                    minTargetCapacity :: (Prelude.Maybe (Value Prelude.Integer)),
                                    singleAvailabilityZone :: (Prelude.Maybe (Value Prelude.Bool)),
                                    singleInstanceType :: (Prelude.Maybe (Value Prelude.Bool))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnDemandOptionsRequestProperty :: OnDemandOptionsRequestProperty
mkOnDemandOptionsRequestProperty
  = OnDemandOptionsRequestProperty
      {allocationStrategy = Prelude.Nothing,
       capacityReservationOptions = Prelude.Nothing,
       maxTotalPrice = Prelude.Nothing,
       minTargetCapacity = Prelude.Nothing,
       singleAvailabilityZone = Prelude.Nothing,
       singleInstanceType = Prelude.Nothing}
instance ToResourceProperties OnDemandOptionsRequestProperty where
  toResourceProperties OnDemandOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.OnDemandOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                            (JSON..=) "CapacityReservationOptions"
                              Prelude.<$> capacityReservationOptions,
                            (JSON..=) "MaxTotalPrice" Prelude.<$> maxTotalPrice,
                            (JSON..=) "MinTargetCapacity" Prelude.<$> minTargetCapacity,
                            (JSON..=) "SingleAvailabilityZone"
                              Prelude.<$> singleAvailabilityZone,
                            (JSON..=) "SingleInstanceType" Prelude.<$> singleInstanceType])}
instance JSON.ToJSON OnDemandOptionsRequestProperty where
  toJSON OnDemandOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
               (JSON..=) "CapacityReservationOptions"
                 Prelude.<$> capacityReservationOptions,
               (JSON..=) "MaxTotalPrice" Prelude.<$> maxTotalPrice,
               (JSON..=) "MinTargetCapacity" Prelude.<$> minTargetCapacity,
               (JSON..=) "SingleAvailabilityZone"
                 Prelude.<$> singleAvailabilityZone,
               (JSON..=) "SingleInstanceType" Prelude.<$> singleInstanceType]))
instance Property "AllocationStrategy" OnDemandOptionsRequestProperty where
  type PropertyType "AllocationStrategy" OnDemandOptionsRequestProperty = Value Prelude.Text
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "CapacityReservationOptions" OnDemandOptionsRequestProperty where
  type PropertyType "CapacityReservationOptions" OnDemandOptionsRequestProperty = CapacityReservationOptionsRequestProperty
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {capacityReservationOptions = Prelude.pure newValue, ..}
instance Property "MaxTotalPrice" OnDemandOptionsRequestProperty where
  type PropertyType "MaxTotalPrice" OnDemandOptionsRequestProperty = Value Prelude.Text
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {maxTotalPrice = Prelude.pure newValue, ..}
instance Property "MinTargetCapacity" OnDemandOptionsRequestProperty where
  type PropertyType "MinTargetCapacity" OnDemandOptionsRequestProperty = Value Prelude.Integer
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {minTargetCapacity = Prelude.pure newValue, ..}
instance Property "SingleAvailabilityZone" OnDemandOptionsRequestProperty where
  type PropertyType "SingleAvailabilityZone" OnDemandOptionsRequestProperty = Value Prelude.Bool
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {singleAvailabilityZone = Prelude.pure newValue, ..}
instance Property "SingleInstanceType" OnDemandOptionsRequestProperty where
  type PropertyType "SingleInstanceType" OnDemandOptionsRequestProperty = Value Prelude.Bool
  set newValue OnDemandOptionsRequestProperty {..}
    = OnDemandOptionsRequestProperty
        {singleInstanceType = Prelude.pure newValue, ..}