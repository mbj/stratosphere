module Stratosphere.ServiceDiscovery.PublicDnsNamespace.PropertiesProperty (
        module Exports, PropertiesProperty(..), mkPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PublicDnsNamespace.PublicDnsPropertiesMutableProperty as Exports
import Stratosphere.ResourceProperties
data PropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-publicdnsnamespace-properties.html>
    PropertiesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-publicdnsnamespace-properties.html#cfn-servicediscovery-publicdnsnamespace-properties-dnsproperties>
                        dnsProperties :: (Prelude.Maybe PublicDnsPropertiesMutableProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertiesProperty :: PropertiesProperty
mkPropertiesProperty
  = PropertiesProperty
      {haddock_workaround_ = (), dnsProperties = Prelude.Nothing}
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
  set newValue PropertiesProperty {..}
    = PropertiesProperty {dnsProperties = Prelude.pure newValue, ..}