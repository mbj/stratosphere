module Stratosphere.EC2.LaunchTemplate.Ipv4PrefixSpecificationProperty (
        Ipv4PrefixSpecificationProperty(..),
        mkIpv4PrefixSpecificationProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data Ipv4PrefixSpecificationProperty
  = -- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv4prefixspecification.html>
    Ipv4PrefixSpecificationProperty {-- |See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-ipv4prefixspecification.html#cfn-ec2-launchtemplate-ipv4prefixspecification-ipv4prefix>
                                     ipv4Prefix :: (Prelude.Maybe (Value Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIpv4PrefixSpecificationProperty ::
  Ipv4PrefixSpecificationProperty
mkIpv4PrefixSpecificationProperty
  = Ipv4PrefixSpecificationProperty {ipv4Prefix = Prelude.Nothing}
instance ToResourceProperties Ipv4PrefixSpecificationProperty where
  toResourceProperties Ipv4PrefixSpecificationProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.Ipv4PrefixSpecification",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Ipv4Prefix" Prelude.<$> ipv4Prefix])}
instance JSON.ToJSON Ipv4PrefixSpecificationProperty where
  toJSON Ipv4PrefixSpecificationProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Ipv4Prefix" Prelude.<$> ipv4Prefix]))
instance Property "Ipv4Prefix" Ipv4PrefixSpecificationProperty where
  type PropertyType "Ipv4Prefix" Ipv4PrefixSpecificationProperty = Value Prelude.Text
  set newValue Ipv4PrefixSpecificationProperty {}
    = Ipv4PrefixSpecificationProperty
        {ipv4Prefix = Prelude.pure newValue, ..}