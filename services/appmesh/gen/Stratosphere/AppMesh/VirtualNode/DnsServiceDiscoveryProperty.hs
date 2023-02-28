module Stratosphere.AppMesh.VirtualNode.DnsServiceDiscoveryProperty (
        DnsServiceDiscoveryProperty(..), mkDnsServiceDiscoveryProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsServiceDiscoveryProperty
  = DnsServiceDiscoveryProperty {hostname :: (Value Prelude.Text),
                                 ipPreference :: (Prelude.Maybe (Value Prelude.Text)),
                                 responseType :: (Prelude.Maybe (Value Prelude.Text))}
mkDnsServiceDiscoveryProperty ::
  Value Prelude.Text -> DnsServiceDiscoveryProperty
mkDnsServiceDiscoveryProperty hostname
  = DnsServiceDiscoveryProperty
      {hostname = hostname, ipPreference = Prelude.Nothing,
       responseType = Prelude.Nothing}
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