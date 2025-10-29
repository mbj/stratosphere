module Stratosphere.Route53Resolver.ResolverEndpoint.IpAddressRequestProperty (
        IpAddressRequestProperty(..), mkIpAddressRequestProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IpAddressRequestProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html>
    IpAddressRequestProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ip>
                              ip :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-ipv6>
                              ipv6 :: (Prelude.Maybe (Value Prelude.Text)),
                              -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-route53resolver-resolverendpoint-ipaddressrequest.html#cfn-route53resolver-resolverendpoint-ipaddressrequest-subnetid>
                              subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpAddressRequestProperty ::
  Value Prelude.Text -> IpAddressRequestProperty
mkIpAddressRequestProperty subnetId
  = IpAddressRequestProperty
      {subnetId = subnetId, ip = Prelude.Nothing, ipv6 = Prelude.Nothing}
instance ToResourceProperties IpAddressRequestProperty where
  toResourceProperties IpAddressRequestProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverEndpoint.IpAddressRequest",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "Ip" Prelude.<$> ip,
                               (JSON..=) "Ipv6" Prelude.<$> ipv6]))}
instance JSON.ToJSON IpAddressRequestProperty where
  toJSON IpAddressRequestProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "Ip" Prelude.<$> ip,
                  (JSON..=) "Ipv6" Prelude.<$> ipv6])))
instance Property "Ip" IpAddressRequestProperty where
  type PropertyType "Ip" IpAddressRequestProperty = Value Prelude.Text
  set newValue IpAddressRequestProperty {..}
    = IpAddressRequestProperty {ip = Prelude.pure newValue, ..}
instance Property "Ipv6" IpAddressRequestProperty where
  type PropertyType "Ipv6" IpAddressRequestProperty = Value Prelude.Text
  set newValue IpAddressRequestProperty {..}
    = IpAddressRequestProperty {ipv6 = Prelude.pure newValue, ..}
instance Property "SubnetId" IpAddressRequestProperty where
  type PropertyType "SubnetId" IpAddressRequestProperty = Value Prelude.Text
  set newValue IpAddressRequestProperty {..}
    = IpAddressRequestProperty {subnetId = newValue, ..}