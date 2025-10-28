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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html>
    CapacityReservationOptionsRequestProperty {haddock_workaround_ :: (),
                                               -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-ec2fleet-capacityreservationoptionsrequest.html#cfn-ec2-ec2fleet-capacityreservationoptionsrequest-usagestrategy>
                                               usageStrategy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCapacityReservationOptionsRequestProperty ::
  CapacityReservationOptionsRequestProperty
mkCapacityReservationOptionsRequestProperty
  = CapacityReservationOptionsRequestProperty
      {haddock_workaround_ = (), usageStrategy = Prelude.Nothing}
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
  set newValue CapacityReservationOptionsRequestProperty {..}
    = CapacityReservationOptionsRequestProperty
        {usageStrategy = Prelude.pure newValue, ..}