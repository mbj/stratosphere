module Stratosphere.GroundStation.DataflowEndpointGroup.SocketAddressProperty (
        SocketAddressProperty(..), mkSocketAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SocketAddressProperty
  = SocketAddressProperty {name :: (Prelude.Maybe (Value Prelude.Text)),
                           port :: (Prelude.Maybe (Value Prelude.Integer))}
mkSocketAddressProperty :: SocketAddressProperty
mkSocketAddressProperty
  = SocketAddressProperty
      {name = Prelude.Nothing, port = Prelude.Nothing}
instance ToResourceProperties SocketAddressProperty where
  toResourceProperties SocketAddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.SocketAddress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "Port" Prelude.<$> port])}
instance JSON.ToJSON SocketAddressProperty where
  toJSON SocketAddressProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "Port" Prelude.<$> port]))
instance Property "Name" SocketAddressProperty where
  type PropertyType "Name" SocketAddressProperty = Value Prelude.Text
  set newValue SocketAddressProperty {..}
    = SocketAddressProperty {name = Prelude.pure newValue, ..}
instance Property "Port" SocketAddressProperty where
  type PropertyType "Port" SocketAddressProperty = Value Prelude.Integer
  set newValue SocketAddressProperty {..}
    = SocketAddressProperty {port = Prelude.pure newValue, ..}