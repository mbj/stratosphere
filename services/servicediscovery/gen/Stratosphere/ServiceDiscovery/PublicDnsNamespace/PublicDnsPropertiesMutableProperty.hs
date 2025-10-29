module Stratosphere.ServiceDiscovery.PublicDnsNamespace.PublicDnsPropertiesMutableProperty (
        module Exports, PublicDnsPropertiesMutableProperty(..),
        mkPublicDnsPropertiesMutableProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.ServiceDiscovery.PublicDnsNamespace.SOAProperty as Exports
import Stratosphere.ResourceProperties
data PublicDnsPropertiesMutableProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-publicdnsnamespace-publicdnspropertiesmutable.html>
    PublicDnsPropertiesMutableProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-publicdnsnamespace-publicdnspropertiesmutable.html#cfn-servicediscovery-publicdnsnamespace-publicdnspropertiesmutable-soa>
                                        sOA :: (Prelude.Maybe SOAProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPublicDnsPropertiesMutableProperty ::
  PublicDnsPropertiesMutableProperty
mkPublicDnsPropertiesMutableProperty
  = PublicDnsPropertiesMutableProperty {sOA = Prelude.Nothing}
instance ToResourceProperties PublicDnsPropertiesMutableProperty where
  toResourceProperties PublicDnsPropertiesMutableProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PublicDnsNamespace.PublicDnsPropertiesMutable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA])}
instance JSON.ToJSON PublicDnsPropertiesMutableProperty where
  toJSON PublicDnsPropertiesMutableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA]))
instance Property "SOA" PublicDnsPropertiesMutableProperty where
  type PropertyType "SOA" PublicDnsPropertiesMutableProperty = SOAProperty
  set newValue PublicDnsPropertiesMutableProperty {}
    = PublicDnsPropertiesMutableProperty
        {sOA = Prelude.pure newValue, ..}