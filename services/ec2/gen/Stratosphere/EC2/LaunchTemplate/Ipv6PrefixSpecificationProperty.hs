module Stratosphere.EC2.LaunchTemplate.Ipv6PrefixSpecificationProperty (
        Ipv6PrefixSpecificationProperty(..),
        mkIpv6PrefixSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ipv6PrefixSpecificationProperty
  = Ipv6PrefixSpecificationProperty {ipv6Prefix :: (Prelude.Maybe (Value Prelude.Text))}
mkIpv6PrefixSpecificationProperty ::
  Ipv6PrefixSpecificationProperty
mkIpv6PrefixSpecificationProperty
  = Ipv6PrefixSpecificationProperty {ipv6Prefix = Prelude.Nothing}
instance ToResourceProperties Ipv6PrefixSpecificationProperty where
  toResourceProperties Ipv6PrefixSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Ipv6PrefixSpecification",
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ipv6Prefix" Prelude.<$> ipv6Prefix])}
instance JSON.ToJSON Ipv6PrefixSpecificationProperty where
  toJSON Ipv6PrefixSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ipv6Prefix" Prelude.<$> ipv6Prefix]))
instance Property "Ipv6Prefix" Ipv6PrefixSpecificationProperty where
  type PropertyType "Ipv6Prefix" Ipv6PrefixSpecificationProperty = Value Prelude.Text
  set newValue Ipv6PrefixSpecificationProperty {}
    = Ipv6PrefixSpecificationProperty
        {ipv6Prefix = Prelude.pure newValue, ..}