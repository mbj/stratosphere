module Stratosphere.GroundStation.DataflowEndpointGroup.SocketAddressProperty (
        SocketAddressProperty(..), mkSocketAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SocketAddressProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-socketaddress.html>
    SocketAddressProperty {haddock_workaround_ :: (),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-socketaddress.html#cfn-groundstation-dataflowendpointgroup-socketaddress-name>
                           name :: (Prelude.Maybe (Value Prelude.Text)),
                           -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-groundstation-dataflowendpointgroup-socketaddress.html#cfn-groundstation-dataflowendpointgroup-socketaddress-port>
                           port :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSocketAddressProperty :: SocketAddressProperty
mkSocketAddressProperty
  = SocketAddressProperty
      {haddock_workaround_ = (), name = Prelude.Nothing,
       port = Prelude.Nothing}
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