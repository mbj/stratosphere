module Stratosphere.ServiceDiscovery.PrivateDnsNamespace.PropertiesProperty (
        module Exports, PropertiesProperty(..), mkPropertiesProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PrivateDnsNamespace.PrivateDnsPropertiesMutableProperty as Exports
import Stratosphere.ResourceProperties
data PropertiesProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-properties.html>
    PropertiesProperty {haddock_workaround_ :: (),
                        -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-properties.html#cfn-servicediscovery-privatednsnamespace-properties-dnsproperties>
                        dnsProperties :: (Prelude.Maybe PrivateDnsPropertiesMutableProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPropertiesProperty :: PropertiesProperty
mkPropertiesProperty
  = PropertiesProperty
      {haddock_workaround_ = (), dnsProperties = Prelude.Nothing}
instance ToResourceProperties PropertiesProperty where
  toResourceProperties PropertiesProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PrivateDnsNamespace.Properties",
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
  type PropertyType "DnsProperties" PropertiesProperty = PrivateDnsPropertiesMutableProperty
  set newValue PropertiesProperty {..}
    = PropertiesProperty {dnsProperties = Prelude.pure newValue, ..}