module Stratosphere.ServiceDiscovery.PublicDnsNamespace.SOAProperty (
        SOAProperty(..), mkSOAProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SOAProperty
  = SOAProperty {tTL :: (Prelude.Maybe (Value Prelude.Double))}
mkSOAProperty :: SOAProperty
mkSOAProperty = SOAProperty {tTL = Prelude.Nothing}
instance ToResourceProperties SOAProperty where
  toResourceProperties SOAProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PublicDnsNamespace.SOA",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes [(JSON..=) "TTL" Prelude.<$> tTL])}
instance JSON.ToJSON SOAProperty where
  toJSON SOAProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes [(JSON..=) "TTL" Prelude.<$> tTL]))
instance Property "TTL" SOAProperty where
  type PropertyType "TTL" SOAProperty = Value Prelude.Double
  set newValue SOAProperty {}
    = SOAProperty {tTL = Prelude.pure newValue, ..}