module Stratosphere.EC2.LaunchTemplate.Ipv6AddProperty (
        Ipv6AddProperty(..), mkIpv6AddProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ipv6AddProperty
  = Ipv6AddProperty {ipv6Address :: (Prelude.Maybe (Value Prelude.Text))}
mkIpv6AddProperty :: Ipv6AddProperty
mkIpv6AddProperty = Ipv6AddProperty {ipv6Address = Prelude.Nothing}
instance ToResourceProperties Ipv6AddProperty where
  toResourceProperties Ipv6AddProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Ipv6Add",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ipv6Address" Prelude.<$> ipv6Address])}
instance JSON.ToJSON Ipv6AddProperty where
  toJSON Ipv6AddProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ipv6Address" Prelude.<$> ipv6Address]))
instance Property "Ipv6Address" Ipv6AddProperty where
  type PropertyType "Ipv6Address" Ipv6AddProperty = Value Prelude.Text
  set newValue Ipv6AddProperty {}
    = Ipv6AddProperty {ipv6Address = Prelude.pure newValue, ..}