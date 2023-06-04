module Stratosphere.GroundStation.DataflowEndpointGroup.RangedConnectionDetailsProperty (
        module Exports, RangedConnectionDetailsProperty(..),
        mkRangedConnectionDetailsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.RangedSocketAddressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data RangedConnectionDetailsProperty
  = RangedConnectionDetailsProperty {mtu :: (Prelude.Maybe (Value Prelude.Integer)),
                                     socketAddress :: (Prelude.Maybe RangedSocketAddressProperty)}
mkRangedConnectionDetailsProperty ::
  RangedConnectionDetailsProperty
mkRangedConnectionDetailsProperty
  = RangedConnectionDetailsProperty
      {mtu = Prelude.Nothing, socketAddress = Prelude.Nothing}
instance ToResourceProperties RangedConnectionDetailsProperty where
  toResourceProperties RangedConnectionDetailsProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.RangedConnectionDetails",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Mtu" Prelude.<$> mtu,
                            (JSON..=) "SocketAddress" Prelude.<$> socketAddress])}
instance JSON.ToJSON RangedConnectionDetailsProperty where
  toJSON RangedConnectionDetailsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Mtu" Prelude.<$> mtu,
               (JSON..=) "SocketAddress" Prelude.<$> socketAddress]))
instance Property "Mtu" RangedConnectionDetailsProperty where
  type PropertyType "Mtu" RangedConnectionDetailsProperty = Value Prelude.Integer
  set newValue RangedConnectionDetailsProperty {..}
    = RangedConnectionDetailsProperty {mtu = Prelude.pure newValue, ..}
instance Property "SocketAddress" RangedConnectionDetailsProperty where
  type PropertyType "SocketAddress" RangedConnectionDetailsProperty = RangedSocketAddressProperty
  set newValue RangedConnectionDetailsProperty {..}
    = RangedConnectionDetailsProperty
        {socketAddress = Prelude.pure newValue, ..}