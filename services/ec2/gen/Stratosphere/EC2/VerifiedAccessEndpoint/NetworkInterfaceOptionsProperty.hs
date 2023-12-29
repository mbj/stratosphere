module Stratosphere.EC2.VerifiedAccessEndpoint.NetworkInterfaceOptionsProperty (
        NetworkInterfaceOptionsProperty(..),
        mkNetworkInterfaceOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceOptionsProperty
  = NetworkInterfaceOptionsProperty {networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                                     port :: (Prelude.Maybe (Value Prelude.Integer)),
                                     protocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterfaceOptionsProperty ::
  NetworkInterfaceOptionsProperty
mkNetworkInterfaceOptionsProperty
  = NetworkInterfaceOptionsProperty
      {networkInterfaceId = Prelude.Nothing, port = Prelude.Nothing,
       protocol = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceOptionsProperty where
  toResourceProperties NetworkInterfaceOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.NetworkInterfaceOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON NetworkInterfaceOptionsProperty where
  toJSON NetworkInterfaceOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "NetworkInterfaceId" NetworkInterfaceOptionsProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceOptionsProperty = Value Prelude.Text
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "Port" NetworkInterfaceOptionsProperty where
  type PropertyType "Port" NetworkInterfaceOptionsProperty = Value Prelude.Integer
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {port = Prelude.pure newValue, ..}
instance Property "Protocol" NetworkInterfaceOptionsProperty where
  type PropertyType "Protocol" NetworkInterfaceOptionsProperty = Value Prelude.Text
  set newValue NetworkInterfaceOptionsProperty {..}
    = NetworkInterfaceOptionsProperty
        {protocol = Prelude.pure newValue, ..}