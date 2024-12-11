module Stratosphere.EC2.CapacityReservation (
        module Exports, CapacityReservation(..), mkCapacityReservation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.CapacityReservation.TagSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservation
  = CapacityReservation {availabilityZone :: (Value Prelude.Text),
                         ebsOptimized :: (Prelude.Maybe (Value Prelude.Bool)),
                         endDate :: (Prelude.Maybe (Value Prelude.Text)),
                         endDateType :: (Prelude.Maybe (Value Prelude.Text)),
                         ephemeralStorage :: (Prelude.Maybe (Value Prelude.Bool)),
                         instanceCount :: (Value Prelude.Integer),
                         instanceMatchCriteria :: (Prelude.Maybe (Value Prelude.Text)),
                         instancePlatform :: (Value Prelude.Text),
                         instanceType :: (Value Prelude.Text),
                         outPostArn :: (Prelude.Maybe (Value Prelude.Text)),
                         placementGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                         tagSpecifications :: (Prelude.Maybe [TagSpecificationProperty]),
                         tenancy :: (Prelude.Maybe (Value Prelude.Text)),
                         unusedReservationBillingOwnerId :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservation ::
  Value Prelude.Text
  -> Value Prelude.Integer
     -> Value Prelude.Text -> Value Prelude.Text -> CapacityReservation
mkCapacityReservation
  availabilityZone
  instanceCount
  instancePlatform
  instanceType
  = CapacityReservation
      {availabilityZone = availabilityZone,
       instanceCount = instanceCount, instancePlatform = instancePlatform,
       instanceType = instanceType, ebsOptimized = Prelude.Nothing,
       endDate = Prelude.Nothing, endDateType = Prelude.Nothing,
       ephemeralStorage = Prelude.Nothing,
       instanceMatchCriteria = Prelude.Nothing,
       outPostArn = Prelude.Nothing, placementGroupArn = Prelude.Nothing,
       tagSpecifications = Prelude.Nothing, tenancy = Prelude.Nothing,
       unusedReservationBillingOwnerId = Prelude.Nothing}
instance ToResourceProperties CapacityReservation where
  toResourceProperties CapacityReservation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::CapacityReservation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["AvailabilityZone" JSON..= availabilityZone,
                            "InstanceCount" JSON..= instanceCount,
                            "InstancePlatform" JSON..= instancePlatform,
                            "InstanceType" JSON..= instanceType]
                           (Prelude.catMaybes
                              [(JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                               (JSON..=) "EndDate" Prelude.<$> endDate,
                               (JSON..=) "EndDateType" Prelude.<$> endDateType,
                               (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                               (JSON..=) "InstanceMatchCriteria"
                                 Prelude.<$> instanceMatchCriteria,
                               (JSON..=) "OutPostArn" Prelude.<$> outPostArn,
                               (JSON..=) "PlacementGroupArn" Prelude.<$> placementGroupArn,
                               (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                               (JSON..=) "Tenancy" Prelude.<$> tenancy,
                               (JSON..=) "UnusedReservationBillingOwnerId"
                                 Prelude.<$> unusedReservationBillingOwnerId]))}
instance JSON.ToJSON CapacityReservation where
  toJSON CapacityReservation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["AvailabilityZone" JSON..= availabilityZone,
               "InstanceCount" JSON..= instanceCount,
               "InstancePlatform" JSON..= instancePlatform,
               "InstanceType" JSON..= instanceType]
              (Prelude.catMaybes
                 [(JSON..=) "EbsOptimized" Prelude.<$> ebsOptimized,
                  (JSON..=) "EndDate" Prelude.<$> endDate,
                  (JSON..=) "EndDateType" Prelude.<$> endDateType,
                  (JSON..=) "EphemeralStorage" Prelude.<$> ephemeralStorage,
                  (JSON..=) "InstanceMatchCriteria"
                    Prelude.<$> instanceMatchCriteria,
                  (JSON..=) "OutPostArn" Prelude.<$> outPostArn,
                  (JSON..=) "PlacementGroupArn" Prelude.<$> placementGroupArn,
                  (JSON..=) "TagSpecifications" Prelude.<$> tagSpecifications,
                  (JSON..=) "Tenancy" Prelude.<$> tenancy,
                  (JSON..=) "UnusedReservationBillingOwnerId"
                    Prelude.<$> unusedReservationBillingOwnerId])))
instance Property "AvailabilityZone" CapacityReservation where
  type PropertyType "AvailabilityZone" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {availabilityZone = newValue, ..}
instance Property "EbsOptimized" CapacityReservation where
  type PropertyType "EbsOptimized" CapacityReservation = Value Prelude.Bool
  set newValue CapacityReservation {..}
    = CapacityReservation {ebsOptimized = Prelude.pure newValue, ..}
instance Property "EndDate" CapacityReservation where
  type PropertyType "EndDate" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {endDate = Prelude.pure newValue, ..}
instance Property "EndDateType" CapacityReservation where
  type PropertyType "EndDateType" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {endDateType = Prelude.pure newValue, ..}
instance Property "EphemeralStorage" CapacityReservation where
  type PropertyType "EphemeralStorage" CapacityReservation = Value Prelude.Bool
  set newValue CapacityReservation {..}
    = CapacityReservation
        {ephemeralStorage = Prelude.pure newValue, ..}
instance Property "InstanceCount" CapacityReservation where
  type PropertyType "InstanceCount" CapacityReservation = Value Prelude.Integer
  set newValue CapacityReservation {..}
    = CapacityReservation {instanceCount = newValue, ..}
instance Property "InstanceMatchCriteria" CapacityReservation where
  type PropertyType "InstanceMatchCriteria" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {instanceMatchCriteria = Prelude.pure newValue, ..}
instance Property "InstancePlatform" CapacityReservation where
  type PropertyType "InstancePlatform" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {instancePlatform = newValue, ..}
instance Property "InstanceType" CapacityReservation where
  type PropertyType "InstanceType" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {instanceType = newValue, ..}
instance Property "OutPostArn" CapacityReservation where
  type PropertyType "OutPostArn" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {outPostArn = Prelude.pure newValue, ..}
instance Property "PlacementGroupArn" CapacityReservation where
  type PropertyType "PlacementGroupArn" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {placementGroupArn = Prelude.pure newValue, ..}
instance Property "TagSpecifications" CapacityReservation where
  type PropertyType "TagSpecifications" CapacityReservation = [TagSpecificationProperty]
  set newValue CapacityReservation {..}
    = CapacityReservation
        {tagSpecifications = Prelude.pure newValue, ..}
instance Property "Tenancy" CapacityReservation where
  type PropertyType "Tenancy" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation {tenancy = Prelude.pure newValue, ..}
instance Property "UnusedReservationBillingOwnerId" CapacityReservation where
  type PropertyType "UnusedReservationBillingOwnerId" CapacityReservation = Value Prelude.Text
  set newValue CapacityReservation {..}
    = CapacityReservation
        {unusedReservationBillingOwnerId = Prelude.pure newValue, ..}