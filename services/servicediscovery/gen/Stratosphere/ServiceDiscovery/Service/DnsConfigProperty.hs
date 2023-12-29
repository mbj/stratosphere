module Stratosphere.ServiceDiscovery.Service.DnsConfigProperty (
        module Exports, DnsConfigProperty(..), mkDnsConfigProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.Service.DnsRecordProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data DnsConfigProperty
  = DnsConfigProperty {dnsRecords :: [DnsRecordProperty],
                       namespaceId :: (Prelude.Maybe (Value Prelude.Text)),
                       routingPolicy :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkDnsConfigProperty :: [DnsRecordProperty] -> DnsConfigProperty
mkDnsConfigProperty dnsRecords
  = DnsConfigProperty
      {dnsRecords = dnsRecords, namespaceId = Prelude.Nothing,
       routingPolicy = Prelude.Nothing}
instance ToResourceProperties DnsConfigProperty where
  toResourceProperties DnsConfigProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service.DnsConfig",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DnsRecords" JSON..= dnsRecords]
                           (Prelude.catMaybes
                              [(JSON..=) "NamespaceId" Prelude.<$> namespaceId,
                               (JSON..=) "RoutingPolicy" Prelude.<$> routingPolicy]))}
instance JSON.ToJSON DnsConfigProperty where
  toJSON DnsConfigProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DnsRecords" JSON..= dnsRecords]
              (Prelude.catMaybes
                 [(JSON..=) "NamespaceId" Prelude.<$> namespaceId,
                  (JSON..=) "RoutingPolicy" Prelude.<$> routingPolicy])))
instance Property "DnsRecords" DnsConfigProperty where
  type PropertyType "DnsRecords" DnsConfigProperty = [DnsRecordProperty]
  set newValue DnsConfigProperty {..}
    = DnsConfigProperty {dnsRecords = newValue, ..}
instance Property "NamespaceId" DnsConfigProperty where
  type PropertyType "NamespaceId" DnsConfigProperty = Value Prelude.Text
  set newValue DnsConfigProperty {..}
    = DnsConfigProperty {namespaceId = Prelude.pure newValue, ..}
instance Property "RoutingPolicy" DnsConfigProperty where
  type PropertyType "RoutingPolicy" DnsConfigProperty = Value Prelude.Text
  set newValue DnsConfigProperty {..}
    = DnsConfigProperty {routingPolicy = Prelude.pure newValue, ..}