module Stratosphere.ServiceDiscovery.PrivateDnsNamespace.PrivateDnsPropertiesMutableProperty (
        module Exports, PrivateDnsPropertiesMutableProperty(..),
        mkPrivateDnsPropertiesMutableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PrivateDnsNamespace.SOAProperty as Exports
import Stratosphere.ResourceProperties
data PrivateDnsPropertiesMutableProperty
  = PrivateDnsPropertiesMutableProperty {sOA :: (Prelude.Maybe SOAProperty)}
mkPrivateDnsPropertiesMutableProperty ::
  PrivateDnsPropertiesMutableProperty
mkPrivateDnsPropertiesMutableProperty
  = PrivateDnsPropertiesMutableProperty {sOA = Prelude.Nothing}
instance ToResourceProperties PrivateDnsPropertiesMutableProperty where
  toResourceProperties PrivateDnsPropertiesMutableProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PrivateDnsNamespace.PrivateDnsPropertiesMutable",
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA])}
instance JSON.ToJSON PrivateDnsPropertiesMutableProperty where
  toJSON PrivateDnsPropertiesMutableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA]))
instance Property "SOA" PrivateDnsPropertiesMutableProperty where
  type PropertyType "SOA" PrivateDnsPropertiesMutableProperty = SOAProperty
  set newValue PrivateDnsPropertiesMutableProperty {}
    = PrivateDnsPropertiesMutableProperty
        {sOA = Prelude.pure newValue, ..}