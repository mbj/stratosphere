module Stratosphere.Deadline.Fleet.FleetAmountCapabilityProperty (
        FleetAmountCapabilityProperty(..), mkFleetAmountCapabilityProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FleetAmountCapabilityProperty
  = FleetAmountCapabilityProperty {max :: (Prelude.Maybe (Value Prelude.Double)),
                                   min :: (Value Prelude.Double),
                                   name :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFleetAmountCapabilityProperty ::
  Value Prelude.Double
  -> Value Prelude.Text -> FleetAmountCapabilityProperty
mkFleetAmountCapabilityProperty min name
  = FleetAmountCapabilityProperty
      {min = min, name = name, max = Prelude.Nothing}
instance ToResourceProperties FleetAmountCapabilityProperty where
  toResourceProperties FleetAmountCapabilityProperty {..}
    = ResourceProperties
        {awsType = "AWS::Deadline::Fleet.FleetAmountCapability",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Min" JSON..= min, "Name" JSON..= name]
                           (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max]))}
instance JSON.ToJSON FleetAmountCapabilityProperty where
  toJSON FleetAmountCapabilityProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Min" JSON..= min, "Name" JSON..= name]
              (Prelude.catMaybes [(JSON..=) "Max" Prelude.<$> max])))
instance Property "Max" FleetAmountCapabilityProperty where
  type PropertyType "Max" FleetAmountCapabilityProperty = Value Prelude.Double
  set newValue FleetAmountCapabilityProperty {..}
    = FleetAmountCapabilityProperty {max = Prelude.pure newValue, ..}
instance Property "Min" FleetAmountCapabilityProperty where
  type PropertyType "Min" FleetAmountCapabilityProperty = Value Prelude.Double
  set newValue FleetAmountCapabilityProperty {..}
    = FleetAmountCapabilityProperty {min = newValue, ..}
instance Property "Name" FleetAmountCapabilityProperty where
  type PropertyType "Name" FleetAmountCapabilityProperty = Value Prelude.Text
  set newValue FleetAmountCapabilityProperty {..}
    = FleetAmountCapabilityProperty {name = newValue, ..}