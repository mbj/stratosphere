module Stratosphere.GroundStation.DataflowEndpointGroup.DataflowEndpointProperty (
        module Exports, DataflowEndpointProperty(..),
        mkDataflowEndpointProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.GroundStation.DataflowEndpointGroup.SocketAddressProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DataflowEndpointProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html>
    DataflowEndpointProperty {haddock_workaround_ :: (),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html#cfn-groundstation-dataflowendpointgroup-dataflowendpoint-address>
                              address :: (Prelude.Maybe SocketAddressProperty),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html#cfn-groundstation-dataflowendpointgroup-dataflowendpoint-mtu>
                              mtu :: (Prelude.Maybe (Value Prelude.Integer)),
                              -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-dataflowendpoint.html#cfn-groundstation-dataflowendpointgroup-dataflowendpoint-name>
                              name :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDataflowEndpointProperty :: DataflowEndpointProperty
mkDataflowEndpointProperty
  = DataflowEndpointProperty
      {haddock_workaround_ = (), address = Prelude.Nothing,
       mtu = Prelude.Nothing, name = Prelude.Nothing}
instance ToResourceProperties DataflowEndpointProperty where
  toResourceProperties DataflowEndpointProperty {..}
    = ResourceProperties
        {awsType = "AWS::GroundStation::DataflowEndpointGroup.DataflowEndpoint",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Address" Prelude.<$> address,
                            (JSON..=) "Mtu" Prelude.<$> mtu,
                            (JSON..=) "Name" Prelude.<$> name])}
instance JSON.ToJSON DataflowEndpointProperty where
  toJSON DataflowEndpointProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Address" Prelude.<$> address,
               (JSON..=) "Mtu" Prelude.<$> mtu,
               (JSON..=) "Name" Prelude.<$> name]))
instance Property "Address" DataflowEndpointProperty where
  type PropertyType "Address" DataflowEndpointProperty = SocketAddressProperty
  set newValue DataflowEndpointProperty {..}
    = DataflowEndpointProperty {address = Prelude.pure newValue, ..}
instance Property "Mtu" DataflowEndpointProperty where
  type PropertyType "Mtu" DataflowEndpointProperty = Value Prelude.Integer
  set newValue DataflowEndpointProperty {..}
    = DataflowEndpointProperty {mtu = Prelude.pure newValue, ..}
instance Property "Name" DataflowEndpointProperty where
  type PropertyType "Name" DataflowEndpointProperty = Value Prelude.Text
  set newValue DataflowEndpointProperty {..}
    = DataflowEndpointProperty {name = Prelude.pure newValue, ..}