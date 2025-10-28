module Stratosphere.EC2.NetworkInterface.Ipv6PrefixSpecificationProperty (
        Ipv6PrefixSpecificationProperty(..),
        mkIpv6PrefixSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ipv6PrefixSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-ipv6prefixspecification.html>
    Ipv6PrefixSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-ipv6prefixspecification.html#cfn-ec2-networkinterface-ipv6prefixspecification-ipv6prefix>
                                     ipv6Prefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpv6PrefixSpecificationProperty ::
  Value Prelude.Text -> Ipv6PrefixSpecificationProperty
mkIpv6PrefixSpecificationProperty ipv6Prefix
  = Ipv6PrefixSpecificationProperty
      {haddock_workaround_ = (), ipv6Prefix = ipv6Prefix}
instance ToResourceProperties Ipv6PrefixSpecificationProperty where
  toResourceProperties Ipv6PrefixSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterface.Ipv6PrefixSpecification",
         supportsTags = Prelude.False,
         properties = ["Ipv6Prefix" JSON..= ipv6Prefix]}
instance JSON.ToJSON Ipv6PrefixSpecificationProperty where
  toJSON Ipv6PrefixSpecificationProperty {..}
    = JSON.object ["Ipv6Prefix" JSON..= ipv6Prefix]
instance Property "Ipv6Prefix" Ipv6PrefixSpecificationProperty where
  type PropertyType "Ipv6Prefix" Ipv6PrefixSpecificationProperty = Value Prelude.Text
  set newValue Ipv6PrefixSpecificationProperty {..}
    = Ipv6PrefixSpecificationProperty {ipv6Prefix = newValue, ..}