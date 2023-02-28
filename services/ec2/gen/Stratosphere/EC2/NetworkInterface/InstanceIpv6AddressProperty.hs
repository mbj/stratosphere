module Stratosphere.EC2.NetworkInterface.InstanceIpv6AddressProperty (
        InstanceIpv6AddressProperty(..), mkInstanceIpv6AddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceIpv6AddressProperty
  = InstanceIpv6AddressProperty {ipv6Address :: (Value Prelude.Text)}
mkInstanceIpv6AddressProperty ::
  Value Prelude.Text -> InstanceIpv6AddressProperty
mkInstanceIpv6AddressProperty ipv6Address
  = InstanceIpv6AddressProperty {ipv6Address = ipv6Address}
instance ToResourceProperties InstanceIpv6AddressProperty where
  toResourceProperties InstanceIpv6AddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterface.InstanceIpv6Address",
         supportsTags = Prelude.False,
         properties = ["Ipv6Address" JSON..= ipv6Address]}
instance JSON.ToJSON InstanceIpv6AddressProperty where
  toJSON InstanceIpv6AddressProperty {..}
    = JSON.object ["Ipv6Address" JSON..= ipv6Address]
instance Property "Ipv6Address" InstanceIpv6AddressProperty where
  type PropertyType "Ipv6Address" InstanceIpv6AddressProperty = Value Prelude.Text
  set newValue InstanceIpv6AddressProperty {}
    = InstanceIpv6AddressProperty {ipv6Address = newValue, ..}