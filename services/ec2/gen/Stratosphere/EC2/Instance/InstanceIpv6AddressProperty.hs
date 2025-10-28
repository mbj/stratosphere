module Stratosphere.EC2.Instance.InstanceIpv6AddressProperty (
        InstanceIpv6AddressProperty(..), mkInstanceIpv6AddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data InstanceIpv6AddressProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html>
    InstanceIpv6AddressProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html#cfn-ec2-instance-instanceipv6address-ipv6address>
                                 ipv6Address :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkInstanceIpv6AddressProperty ::
  Value Prelude.Text -> InstanceIpv6AddressProperty
mkInstanceIpv6AddressProperty ipv6Address
  = InstanceIpv6AddressProperty {ipv6Address = ipv6Address}
instance ToResourceProperties InstanceIpv6AddressProperty where
  toResourceProperties InstanceIpv6AddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.InstanceIpv6Address",
         supportsTags = Prelude.False,
         properties = ["Ipv6Address" JSON..= ipv6Address]}
instance JSON.ToJSON InstanceIpv6AddressProperty where
  toJSON InstanceIpv6AddressProperty {..}
    = JSON.object ["Ipv6Address" JSON..= ipv6Address]
instance Property "Ipv6Address" InstanceIpv6AddressProperty where
  type PropertyType "Ipv6Address" InstanceIpv6AddressProperty = Value Prelude.Text
  set newValue InstanceIpv6AddressProperty {}
    = InstanceIpv6AddressProperty {ipv6Address = newValue, ..}