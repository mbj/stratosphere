module Stratosphere.EC2.VerifiedAccessEndpoint.CidrOptionsProperty (
        module Exports, CidrOptionsProperty(..), mkCidrOptionsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.VerifiedAccessEndpoint.PortRangeProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data CidrOptionsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-cidroptions.html>
    CidrOptionsProperty {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-cidroptions.html#cfn-ec2-verifiedaccessendpoint-cidroptions-cidr>
                         cidr :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-cidroptions.html#cfn-ec2-verifiedaccessendpoint-cidroptions-portranges>
                         portRanges :: (Prelude.Maybe [PortRangeProperty]),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-cidroptions.html#cfn-ec2-verifiedaccessendpoint-cidroptions-protocol>
                         protocol :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-verifiedaccessendpoint-cidroptions.html#cfn-ec2-verifiedaccessendpoint-cidroptions-subnetids>
                         subnetIds :: (Prelude.Maybe (ValueList Prelude.Text))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkCidrOptionsProperty :: CidrOptionsProperty
mkCidrOptionsProperty
  = CidrOptionsProperty
      {haddock_workaround_ = (), cidr = Prelude.Nothing,
       portRanges = Prelude.Nothing, protocol = Prelude.Nothing,
       subnetIds = Prelude.Nothing}
instance ToResourceProperties CidrOptionsProperty where
  toResourceProperties CidrOptionsProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VerifiedAccessEndpoint.CidrOptions",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Cidr" Prelude.<$> cidr,
                            (JSON..=) "PortRanges" Prelude.<$> portRanges,
                            (JSON..=) "Protocol" Prelude.<$> protocol,
                            (JSON..=) "SubnetIds" Prelude.<$> subnetIds])}
instance JSON.ToJSON CidrOptionsProperty where
  toJSON CidrOptionsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Cidr" Prelude.<$> cidr,
               (JSON..=) "PortRanges" Prelude.<$> portRanges,
               (JSON..=) "Protocol" Prelude.<$> protocol,
               (JSON..=) "SubnetIds" Prelude.<$> subnetIds]))
instance Property "Cidr" CidrOptionsProperty where
  type PropertyType "Cidr" CidrOptionsProperty = Value Prelude.Text
  set newValue CidrOptionsProperty {..}
    = CidrOptionsProperty {cidr = Prelude.pure newValue, ..}
instance Property "PortRanges" CidrOptionsProperty where
  type PropertyType "PortRanges" CidrOptionsProperty = [PortRangeProperty]
  set newValue CidrOptionsProperty {..}
    = CidrOptionsProperty {portRanges = Prelude.pure newValue, ..}
instance Property "Protocol" CidrOptionsProperty where
  type PropertyType "Protocol" CidrOptionsProperty = Value Prelude.Text
  set newValue CidrOptionsProperty {..}
    = CidrOptionsProperty {protocol = Prelude.pure newValue, ..}
instance Property "SubnetIds" CidrOptionsProperty where
  type PropertyType "SubnetIds" CidrOptionsProperty = ValueList Prelude.Text
  set newValue CidrOptionsProperty {..}
    = CidrOptionsProperty {subnetIds = Prelude.pure newValue, ..}