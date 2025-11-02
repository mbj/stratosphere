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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedconnectiondetails.html>
    RangedConnectionDetailsProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedconnectiondetails.html#cfn-groundstation-dataflowendpointgroup-rangedconnectiondetails-mtu>
                                     mtu :: (Prelude.Maybe (Value Prelude.Integer)),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-rangedconnectiondetails.html#cfn-groundstation-dataflowendpointgroup-rangedconnectiondetails-socketaddress>
                                     socketAddress :: (Prelude.Maybe RangedSocketAddressProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkRangedConnectionDetailsProperty ::
  RangedConnectionDetailsProperty
mkRangedConnectionDetailsProperty
  = RangedConnectionDetailsProperty
      {haddock_workaround_ = (), mtu = Prelude.Nothing,
       socketAddress = Prelude.Nothing}
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