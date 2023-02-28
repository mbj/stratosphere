module Stratosphere.EC2.EC2Fleet.CapacityReservationOptionsRequestProperty (
        CapacityReservationOptionsRequestProperty(..),
        mkCapacityReservationOptionsRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CapacityReservationOptionsRequestProperty
  = CapacityReservationOptionsRequestProperty {usageStrategy :: (Prelude.Maybe (Value Prelude.Text))}
mkCapacityReservationOptionsRequestProperty ::
  CapacityReservationOptionsRequestProperty
mkCapacityReservationOptionsRequestProperty
  = CapacityReservationOptionsRequestProperty
      {usageStrategy = Prelude.Nothing}
instance ToResourceProperties CapacityReservationOptionsRequestProperty where
  toResourceProperties CapacityReservationOptionsRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::EC2Fleet.CapacityReservationOptionsRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "UsageStrategy" Prelude.<$> usageStrategy])}
instance JSON.ToJSON CapacityReservationOptionsRequestProperty where
  toJSON CapacityReservationOptionsRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "UsageStrategy" Prelude.<$> usageStrategy]))
instance Property "UsageStrategy" CapacityReservationOptionsRequestProperty where
  type PropertyType "UsageStrategy" CapacityReservationOptionsRequestProperty = Value Prelude.Text
  set newValue CapacityReservationOptionsRequestProperty {}
    = CapacityReservationOptionsRequestProperty
        {usageStrategy = Prelude.pure newValue, ..}