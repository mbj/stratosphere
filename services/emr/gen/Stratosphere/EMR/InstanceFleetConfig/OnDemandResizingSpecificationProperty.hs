module Stratosphere.EMR.InstanceFleetConfig.OnDemandResizingSpecificationProperty (
        module Exports, OnDemandResizingSpecificationProperty(..),
        mkOnDemandResizingSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EMR.InstanceFleetConfig.OnDemandCapacityReservationOptionsProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandResizingSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ondemandresizingspecification.html>
    OnDemandResizingSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ondemandresizingspecification.html#cfn-elasticmapreduce-instancefleetconfig-ondemandresizingspecification-allocationstrategy>
                                           allocationStrategy :: (Prelude.Maybe (Value Prelude.Text)),
                                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ondemandresizingspecification.html#cfn-elasticmapreduce-instancefleetconfig-ondemandresizingspecification-capacityreservationoptions>
                                           capacityReservationOptions :: (Prelude.Maybe OnDemandCapacityReservationOptionsProperty),
                                           -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-elasticmapreduce-instancefleetconfig-ondemandresizingspecification.html#cfn-elasticmapreduce-instancefleetconfig-ondemandresizingspecification-timeoutdurationminutes>
                                           timeoutDurationMinutes :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnDemandResizingSpecificationProperty ::
  OnDemandResizingSpecificationProperty
mkOnDemandResizingSpecificationProperty
  = OnDemandResizingSpecificationProperty
      {allocationStrategy = Prelude.Nothing,
       capacityReservationOptions = Prelude.Nothing,
       timeoutDurationMinutes = Prelude.Nothing}
instance ToResourceProperties OnDemandResizingSpecificationProperty where
  toResourceProperties OnDemandResizingSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.OnDemandResizingSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
                            (JSON..=) "CapacityReservationOptions"
                              Prelude.<$> capacityReservationOptions,
                            (JSON..=) "TimeoutDurationMinutes"
                              Prelude.<$> timeoutDurationMinutes])}
instance JSON.ToJSON OnDemandResizingSpecificationProperty where
  toJSON OnDemandResizingSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AllocationStrategy" Prelude.<$> allocationStrategy,
               (JSON..=) "CapacityReservationOptions"
                 Prelude.<$> capacityReservationOptions,
               (JSON..=) "TimeoutDurationMinutes"
                 Prelude.<$> timeoutDurationMinutes]))
instance Property "AllocationStrategy" OnDemandResizingSpecificationProperty where
  type PropertyType "AllocationStrategy" OnDemandResizingSpecificationProperty = Value Prelude.Text
  set newValue OnDemandResizingSpecificationProperty {..}
    = OnDemandResizingSpecificationProperty
        {allocationStrategy = Prelude.pure newValue, ..}
instance Property "CapacityReservationOptions" OnDemandResizingSpecificationProperty where
  type PropertyType "CapacityReservationOptions" OnDemandResizingSpecificationProperty = OnDemandCapacityReservationOptionsProperty
  set newValue OnDemandResizingSpecificationProperty {..}
    = OnDemandResizingSpecificationProperty
        {capacityReservationOptions = Prelude.pure newValue, ..}
instance Property "TimeoutDurationMinutes" OnDemandResizingSpecificationProperty where
  type PropertyType "TimeoutDurationMinutes" OnDemandResizingSpecificationProperty = Value Prelude.Integer
  set newValue OnDemandResizingSpecificationProperty {..}
    = OnDemandResizingSpecificationProperty
        {timeoutDurationMinutes = Prelude.pure newValue, ..}