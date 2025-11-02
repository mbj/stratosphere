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
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-privatednspropertiesmutable.html>
    PrivateDnsPropertiesMutableProperty {haddock_workaround_ :: (),
                                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-privatednspropertiesmutable.html#cfn-servicediscovery-privatednsnamespace-privatednspropertiesmutable-soa>
                                         sOA :: (Prelude.Maybe SOAProperty)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkPrivateDnsPropertiesMutableProperty ::
  PrivateDnsPropertiesMutableProperty
mkPrivateDnsPropertiesMutableProperty
  = PrivateDnsPropertiesMutableProperty
      {haddock_workaround_ = (), sOA = Prelude.Nothing}
instance ToResourceProperties PrivateDnsPropertiesMutableProperty where
  toResourceProperties PrivateDnsPropertiesMutableProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PrivateDnsNamespace.PrivateDnsPropertiesMutable",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA])}
instance JSON.ToJSON PrivateDnsPropertiesMutableProperty where
  toJSON PrivateDnsPropertiesMutableProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "SOA" Prelude.<$> sOA]))
instance Property "SOA" PrivateDnsPropertiesMutableProperty where
  type PropertyType "SOA" PrivateDnsPropertiesMutableProperty = SOAProperty
  set newValue PrivateDnsPropertiesMutableProperty {..}
    = PrivateDnsPropertiesMutableProperty
        {sOA = Prelude.pure newValue, ..}