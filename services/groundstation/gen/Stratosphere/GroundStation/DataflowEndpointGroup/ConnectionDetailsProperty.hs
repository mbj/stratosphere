module Stratosphere.GroundStation.DataflowEndpointGroup.ConnectionDetailsProperty (
        module Exports, ConnectionDetailsProperty(..),
        mkConnectionDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.SocketAddressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data ConnectionDetailsProperty
  = ConnectionDetailsProperty {mtu :: (Prelude.Maybe (Value Prelude.Integer)),
                               socketAddress :: (Prelude.Maybe SocketAddressProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkConnectionDetailsProperty :: ConnectionDetailsProperty
mkConnectionDetailsProperty
  = ConnectionDetailsProperty
      {mtu = Prelude.Nothing, socketAddress = Prelude.Nothing}
instance ToResourceProperties ConnectionDetailsProperty where
  toResourceProperties ConnectionDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.ConnectionDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Mtu" Prelude.<$> mtu,
                            (JSON..=) "SocketAddress" Prelude.<$> socketAddress])}
instance JSON.ToJSON ConnectionDetailsProperty where
  toJSON ConnectionDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Mtu" Prelude.<$> mtu,
               (JSON..=) "SocketAddress" Prelude.<$> socketAddress]))
instance Property "Mtu" ConnectionDetailsProperty where
  type PropertyType "Mtu" ConnectionDetailsProperty = Value Prelude.Integer
  set newValue ConnectionDetailsProperty {..}
    = ConnectionDetailsProperty {mtu = Prelude.pure newValue, ..}
instance Property "SocketAddress" ConnectionDetailsProperty where
  type PropertyType "SocketAddress" ConnectionDetailsProperty = SocketAddressProperty
  set newValue ConnectionDetailsProperty {..}
    = ConnectionDetailsProperty
        {socketAddress = Prelude.pure newValue, ..}