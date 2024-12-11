module Stratosphere.EMR.InstanceFleetConfig.OnDemandCapacityReservationOptionsProperty (
        OnDemandCapacityReservationOptionsProperty(..),
        mkOnDemandCapacityReservationOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data OnDemandCapacityReservationOptionsProperty
  = OnDemandCapacityReservationOptionsProperty {capacityReservationPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                                capacityReservationResourceGroupArn :: (Prelude.Maybe (Value Prelude.Text)),
                                                usageStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkOnDemandCapacityReservationOptionsProperty ::
  OnDemandCapacityReservationOptionsProperty
mkOnDemandCapacityReservationOptionsProperty
  = OnDemandCapacityReservationOptionsProperty
      {capacityReservationPreference = Prelude.Nothing,
       capacityReservationResourceGroupArn = Prelude.Nothing,
       usageStrategy = Prelude.Nothing}
instance ToResourceProperties OnDemandCapacityReservationOptionsProperty where
  toResourceProperties
    OnDemandCapacityReservationOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EMR::InstanceFleetConfig.OnDemandCapacityReservationOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CapacityReservationPreference"
                              Prelude.<$> capacityReservationPreference,
                            (JSON..=) "CapacityReservationResourceGroupArn"
                              Prelude.<$> capacityReservationResourceGroupArn,
                            (JSON..=) "UsageStrategy" Prelude.<$> usageStrategy])}
instance JSON.ToJSON OnDemandCapacityReservationOptionsProperty where
  toJSON OnDemandCapacityReservationOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CapacityReservationPreference"
                 Prelude.<$> capacityReservationPreference,
               (JSON..=) "CapacityReservationResourceGroupArn"
                 Prelude.<$> capacityReservationResourceGroupArn,
               (JSON..=) "UsageStrategy" Prelude.<$> usageStrategy]))
instance Property "CapacityReservationPreference" OnDemandCapacityReservationOptionsProperty where
  type PropertyType "CapacityReservationPreference" OnDemandCapacityReservationOptionsProperty = Value Prelude.Text
  set newValue OnDemandCapacityReservationOptionsProperty {..}
    = OnDemandCapacityReservationOptionsProperty
        {capacityReservationPreference = Prelude.pure newValue, ..}
instance Property "CapacityReservationResourceGroupArn" OnDemandCapacityReservationOptionsProperty where
  type PropertyType "CapacityReservationResourceGroupArn" OnDemandCapacityReservationOptionsProperty = Value Prelude.Text
  set newValue OnDemandCapacityReservationOptionsProperty {..}
    = OnDemandCapacityReservationOptionsProperty
        {capacityReservationResourceGroupArn = Prelude.pure newValue, ..}
instance Property "UsageStrategy" OnDemandCapacityReservationOptionsProperty where
  type PropertyType "UsageStrategy" OnDemandCapacityReservationOptionsProperty = Value Prelude.Text
  set newValue OnDemandCapacityReservationOptionsProperty {..}
    = OnDemandCapacityReservationOptionsProperty
        {usageStrategy = Prelude.pure newValue, ..}