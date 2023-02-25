module Stratosphere.EC2.NetworkAclEntry.PortRangeProperty (
        PortRangeProperty(..), mkPortRangeProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data PortRangeProperty
  = PortRangeProperty {from :: (Prelude.Maybe (Value Prelude.Integer)),
                       to :: (Prelude.Maybe (Value Prelude.Integer))}
mkPortRangeProperty :: PortRangeProperty
mkPortRangeProperty
  = PortRangeProperty {from = Prelude.Nothing, to = Prelude.Nothing}
instance ToResourceProperties PortRangeProperty where
  toResourceProperties PortRangeProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkAclEntry.PortRange",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "From" Prelude.<$> from,
                            (JSON..=) "To" Prelude.<$> to])}
instance JSON.ToJSON PortRangeProperty where
  toJSON PortRangeProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "From" Prelude.<$> from,
               (JSON..=) "To" Prelude.<$> to]))
instance Property "From" PortRangeProperty where
  type PropertyType "From" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {from = Prelude.pure newValue, ..}
instance Property "To" PortRangeProperty where
  type PropertyType "To" PortRangeProperty = Value Prelude.Integer
  set newValue PortRangeProperty {..}
    = PortRangeProperty {to = Prelude.pure newValue, ..}