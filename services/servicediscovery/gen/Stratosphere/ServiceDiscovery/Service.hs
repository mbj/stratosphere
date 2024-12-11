module Stratosphere.ServiceDiscovery.Service (
        module Exports, Service(..), mkService
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.Service.DnsConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.Service.HealthCheckConfigProperty as Exports
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.Service.HealthCheckCustomConfigProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Service
  = Service {description :: (Prelude.Maybe (Value Prelude.Text)),
             dnsConfig :: (Prelude.Maybe DnsConfigProperty),
             healthCheckConfig :: (Prelude.Maybe HealthCheckConfigProperty),
             healthCheckCustomConfig :: (Prelude.Maybe HealthCheckCustomConfigProperty),
             name :: (Prelude.Maybe (Value Prelude.Text)),
             namespaceId :: (Prelude.Maybe (Value Prelude.Text)),
             serviceAttributes :: (Prelude.Maybe JSON.Object),
             tags :: (Prelude.Maybe [Tag]),
             type' :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkService :: Service
mkService
  = Service
      {description = Prelude.Nothing, dnsConfig = Prelude.Nothing,
       healthCheckConfig = Prelude.Nothing,
       healthCheckCustomConfig = Prelude.Nothing, name = Prelude.Nothing,
       namespaceId = Prelude.Nothing, serviceAttributes = Prelude.Nothing,
       tags = Prelude.Nothing, type' = Prelude.Nothing}
instance ToResourceProperties Service where
  toResourceProperties Service {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::Service",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DnsConfig" Prelude.<$> dnsConfig,
                            (JSON..=) "HealthCheckConfig" Prelude.<$> healthCheckConfig,
                            (JSON..=) "HealthCheckCustomConfig"
                              Prelude.<$> healthCheckCustomConfig,
                            (JSON..=) "Name" Prelude.<$> name,
                            (JSON..=) "NamespaceId" Prelude.<$> namespaceId,
                            (JSON..=) "ServiceAttributes" Prelude.<$> serviceAttributes,
                            (JSON..=) "Tags" Prelude.<$> tags,
                            (JSON..=) "Type" Prelude.<$> type'])}
instance JSON.ToJSON Service where
  toJSON Service {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DnsConfig" Prelude.<$> dnsConfig,
               (JSON..=) "HealthCheckConfig" Prelude.<$> healthCheckConfig,
               (JSON..=) "HealthCheckCustomConfig"
                 Prelude.<$> healthCheckCustomConfig,
               (JSON..=) "Name" Prelude.<$> name,
               (JSON..=) "NamespaceId" Prelude.<$> namespaceId,
               (JSON..=) "ServiceAttributes" Prelude.<$> serviceAttributes,
               (JSON..=) "Tags" Prelude.<$> tags,
               (JSON..=) "Type" Prelude.<$> type']))
instance Property "Description" Service where
  type PropertyType "Description" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {description = Prelude.pure newValue, ..}
instance Property "DnsConfig" Service where
  type PropertyType "DnsConfig" Service = DnsConfigProperty
  set newValue Service {..}
    = Service {dnsConfig = Prelude.pure newValue, ..}
instance Property "HealthCheckConfig" Service where
  type PropertyType "HealthCheckConfig" Service = HealthCheckConfigProperty
  set newValue Service {..}
    = Service {healthCheckConfig = Prelude.pure newValue, ..}
instance Property "HealthCheckCustomConfig" Service where
  type PropertyType "HealthCheckCustomConfig" Service = HealthCheckCustomConfigProperty
  set newValue Service {..}
    = Service {healthCheckCustomConfig = Prelude.pure newValue, ..}
instance Property "Name" Service where
  type PropertyType "Name" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {name = Prelude.pure newValue, ..}
instance Property "NamespaceId" Service where
  type PropertyType "NamespaceId" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {namespaceId = Prelude.pure newValue, ..}
instance Property "ServiceAttributes" Service where
  type PropertyType "ServiceAttributes" Service = JSON.Object
  set newValue Service {..}
    = Service {serviceAttributes = Prelude.pure newValue, ..}
instance Property "Tags" Service where
  type PropertyType "Tags" Service = [Tag]
  set newValue Service {..}
    = Service {tags = Prelude.pure newValue, ..}
instance Property "Type" Service where
  type PropertyType "Type" Service = Value Prelude.Text
  set newValue Service {..}
    = Service {type' = Prelude.pure newValue, ..}