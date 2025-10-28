module Stratosphere.EC2.NetworkInterface.Ipv4PrefixSpecificationProperty (
        Ipv4PrefixSpecificationProperty(..),
        mkIpv4PrefixSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ipv4PrefixSpecificationProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-ipv4prefixspecification.html>
    Ipv4PrefixSpecificationProperty {haddock_workaround_ :: (),
                                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-networkinterface-ipv4prefixspecification.html#cfn-ec2-networkinterface-ipv4prefixspecification-ipv4prefix>
                                     ipv4Prefix :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpv4PrefixSpecificationProperty ::
  Value Prelude.Text -> Ipv4PrefixSpecificationProperty
mkIpv4PrefixSpecificationProperty ipv4Prefix
  = Ipv4PrefixSpecificationProperty
      {haddock_workaround_ = (), ipv4Prefix = ipv4Prefix}
instance ToResourceProperties Ipv4PrefixSpecificationProperty where
  toResourceProperties Ipv4PrefixSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterface.Ipv4PrefixSpecification",
         supportsTags = Prelude.False,
         properties = ["Ipv4Prefix" JSON..= ipv4Prefix]}
instance JSON.ToJSON Ipv4PrefixSpecificationProperty where
  toJSON Ipv4PrefixSpecificationProperty {..}
    = JSON.object ["Ipv4Prefix" JSON..= ipv4Prefix]
instance Property "Ipv4Prefix" Ipv4PrefixSpecificationProperty where
  type PropertyType "Ipv4Prefix" Ipv4PrefixSpecificationProperty = Value Prelude.Text
  set newValue Ipv4PrefixSpecificationProperty {..}
    = Ipv4PrefixSpecificationProperty {ipv4Prefix = newValue, ..}