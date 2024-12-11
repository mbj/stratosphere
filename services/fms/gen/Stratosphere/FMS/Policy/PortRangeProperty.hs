module Stratosphere.FMS.Policy.PortRangeProperty (
        PortRangeProperty(..), mkPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeProperty
  = PortRangeProperty {from :: (Value Prelude.Integer),
                       to :: (Value Prelude.Integer)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPortRangeProperty ::
  Value Prelude.Integer -> Value Prelude.Integer -> PortRangeProperty
mkPortRangeProperty from to
  = PortRangeProperty {from = from, to = to}
instance ToResourceProperties PortRangeProperty where
  toResourceProperties PortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.PortRange",
         supportsTags = Prelude.False,
         properties = ["From" JSON..= from, "To" JSON..= to]}
instance JSON.ToJSON PortRangeProperty where
  toJSON PortRangeProperty {..}
    = JSON.object ["From" JSON..= from, "To" JSON..= to]
instance Property "From" PortRangeProperty where
  type PropertyType "From" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {from = newValue, ..}
instance Property "To" PortRangeProperty where
  type PropertyType "To" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {to = newValue, ..}