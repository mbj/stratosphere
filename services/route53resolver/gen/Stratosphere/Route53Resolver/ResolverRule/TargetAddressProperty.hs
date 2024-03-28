module Stratosphere.Route53Resolver.ResolverRule.TargetAddressProperty (
        TargetAddressProperty(..), mkTargetAddressProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data TargetAddressProperty
  = TargetAddressProperty {ip :: (Prelude.Maybe (Value Prelude.Text)),
                           ipv6 :: (Prelude.Maybe (Value Prelude.Text)),
                           port :: (Prelude.Maybe (Value Prelude.Text)),
                           protocol :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTargetAddressProperty :: TargetAddressProperty
mkTargetAddressProperty
  = TargetAddressProperty
      {ip = Prelude.Nothing, ipv6 = Prelude.Nothing,
       port = Prelude.Nothing, protocol = Prelude.Nothing}
instance ToResourceProperties TargetAddressProperty where
  toResourceProperties TargetAddressProperty {..}
    = ResourceProperties
        {awsType = "AWS::Route53Resolver::ResolverRule.TargetAddress",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ip" Prelude.<$> ip, (JSON..=) "Ipv6" Prelude.<$> ipv6,
                            (JSON..=) "Port" Prelude.<$> port,
                            (JSON..=) "Protocol" Prelude.<$> protocol])}
instance JSON.ToJSON TargetAddressProperty where
  toJSON TargetAddressProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ip" Prelude.<$> ip, (JSON..=) "Ipv6" Prelude.<$> ipv6,
               (JSON..=) "Port" Prelude.<$> port,
               (JSON..=) "Protocol" Prelude.<$> protocol]))
instance Property "Ip" TargetAddressProperty where
  type PropertyType "Ip" TargetAddressProperty = Value Prelude.Text
  set newValue TargetAddressProperty {..}
    = TargetAddressProperty {ip = Prelude.pure newValue, ..}
instance Property "Ipv6" TargetAddressProperty where
  type PropertyType "Ipv6" TargetAddressProperty = Value Prelude.Text
  set newValue TargetAddressProperty {..}
    = TargetAddressProperty {ipv6 = Prelude.pure newValue, ..}
instance Property "Port" TargetAddressProperty where
  type PropertyType "Port" TargetAddressProperty = Value Prelude.Text
  set newValue TargetAddressProperty {..}
    = TargetAddressProperty {port = Prelude.pure newValue, ..}
instance Property "Protocol" TargetAddressProperty where
  type PropertyType "Protocol" TargetAddressProperty = Value Prelude.Text
  set newValue TargetAddressProperty {..}
    = TargetAddressProperty {protocol = Prelude.pure newValue, ..}