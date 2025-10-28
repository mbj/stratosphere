module Stratosphere.ServiceDiscovery.PrivateDnsNamespace.SOAProperty (
        SOAProperty(..), mkSOAProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SOAProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-soa.html>
    SOAProperty {haddock_workaround_ :: (),
                 -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-servicediscovery-privatednsnamespace-soa.html#cfn-servicediscovery-privatednsnamespace-soa-ttl>
                 tTL :: (Prelude.Maybe (Value Prelude.Double))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSOAProperty :: SOAProperty
mkSOAProperty
  = SOAProperty {haddock_workaround_ = (), tTL = Prelude.Nothing}
instance ToResourceProperties SOAProperty where
  toResourceProperties SOAProperty {..}
    = ResourceProperties
        {awsType = "AWS::ServiceDiscovery::PrivateDnsNamespace.SOA",
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
  set newValue SOAProperty {..}
    = SOAProperty {tTL = Prelude.pure newValue, ..}