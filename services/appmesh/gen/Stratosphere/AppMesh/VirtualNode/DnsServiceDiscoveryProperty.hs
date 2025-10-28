module Stratosphere.AppMesh.VirtualNode.DnsServiceDiscoveryProperty (
        DnsServiceDiscoveryProperty(..), mkDnsServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsServiceDiscoveryProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html>
    DnsServiceDiscoveryProperty {haddock_workaround_ :: (),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html#cfn-appmesh-virtualnode-dnsservicediscovery-hostname>
                                 hostname :: (Value Prelude.Text),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html#cfn-appmesh-virtualnode-dnsservicediscovery-ippreference>
                                 ipPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-appmesh-virtualnode-dnsservicediscovery.html#cfn-appmesh-virtualnode-dnsservicediscovery-responsetype>
                                 responseType :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsServiceDiscoveryProperty ::
  Value Prelude.Text -> DnsServiceDiscoveryProperty
mkDnsServiceDiscoveryProperty hostname
  = DnsServiceDiscoveryProperty
      {haddock_workaround_ = (), hostname = hostname,
       ipPreference = Prelude.Nothing, responseType = Prelude.Nothing}
instance ToResourceProperties DnsServiceDiscoveryProperty where
  toResourceProperties DnsServiceDiscoveryProperty {..}
    = ResourceProperties
        {awsType = "AWS::AppMesh::VirtualNode.DnsServiceDiscovery",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["Hostname" JSON..= hostname]
                           (Prelude.catMaybes
                              [(JSON..=) "IpPreference" Prelude.<$> ipPreference,
                               (JSON..=) "ResponseType" Prelude.<$> responseType]))}
instance JSON.ToJSON DnsServiceDiscoveryProperty where
  toJSON DnsServiceDiscoveryProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["Hostname" JSON..= hostname]
              (Prelude.catMaybes
                 [(JSON..=) "IpPreference" Prelude.<$> ipPreference,
                  (JSON..=) "ResponseType" Prelude.<$> responseType])))
instance Property "Hostname" DnsServiceDiscoveryProperty where
  type PropertyType "Hostname" DnsServiceDiscoveryProperty = Value Prelude.Text
  set newValue DnsServiceDiscoveryProperty {..}
    = DnsServiceDiscoveryProperty {hostname = newValue, ..}
instance Property "IpPreference" DnsServiceDiscoveryProperty where
  type PropertyType "IpPreference" DnsServiceDiscoveryProperty = Value Prelude.Text
  set newValue DnsServiceDiscoveryProperty {..}
    = DnsServiceDiscoveryProperty
        {ipPreference = Prelude.pure newValue, ..}
instance Property "ResponseType" DnsServiceDiscoveryProperty where
  type PropertyType "ResponseType" DnsServiceDiscoveryProperty = Value Prelude.Text
  set newValue DnsServiceDiscoveryProperty {..}
    = DnsServiceDiscoveryProperty
        {responseType = Prelude.pure newValue, ..}