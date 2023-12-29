module Stratosphere.ServiceDiscovery.PublicDnsNamespace.PropertiesProperty (
        module Exports, PropertiesProperty(..), mkPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PublicDnsNamespace.PublicDnsPropertiesMutableProperty as Exports
import Stratosphere.ResourceProperties
data PropertiesProperty
  = PropertiesProperty {dnsProperties :: (Prelude.Maybe PublicDnsPropertiesMutableProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertiesProperty :: PropertiesProperty
mkPropertiesProperty
  = PropertiesProperty {dnsProperties = Prelude.Nothing}
instance ToResourceProperties PropertiesProperty where
  toResourceProperties PropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PublicDnsNamespace.Properties",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "DnsProperties" Prelude.<$> dnsProperties])}
instance JSON.ToJSON PropertiesProperty where
  toJSON PropertiesProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "DnsProperties" Prelude.<$> dnsProperties]))
instance Property "DnsProperties" PropertiesProperty where
  type PropertyType "DnsProperties" PropertiesProperty = PublicDnsPropertiesMutableProperty
  set newValue PropertiesProperty {}
    = PropertiesProperty {dnsProperties = Prelude.pure newValue, ..}