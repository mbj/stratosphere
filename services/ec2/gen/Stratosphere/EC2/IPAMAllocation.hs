module Stratosphere.EC2.IPAMAllocation (
        IPAMAllocation(..), mkIPAMAllocation
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data IPAMAllocation
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamallocation.html>
    IPAMAllocation {haddock_workaround_ :: (),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamallocation.html#cfn-ec2-ipamallocation-cidr>
                    cidr :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamallocation.html#cfn-ec2-ipamallocation-description>
                    description :: (Prelude.Maybe (Value Prelude.Text)),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamallocation.html#cfn-ec2-ipamallocation-ipampoolid>
                    ipamPoolId :: (Value Prelude.Text),
                    -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-ipamallocation.html#cfn-ec2-ipamallocation-netmasklength>
                    netmaskLength :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkIPAMAllocation :: Value Prelude.Text -> IPAMAllocation
mkIPAMAllocation ipamPoolId
  = IPAMAllocation
      {haddock_workaround_ = (), ipamPoolId = ipamPoolId,
       cidr = Prelude.Nothing, description = Prelude.Nothing,
       netmaskLength = Prelude.Nothing}
instance ToResourceProperties IPAMAllocation where
  toResourceProperties IPAMAllocation {..}
    = ResourceProperties
        {awsType = "AWS::EC2::IPAMAllocation",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["IpamPoolId" JSON..= ipamPoolId]
                           (Prelude.catMaybes
                              [(JSON..=) "Cidr" Prelude.<$> cidr,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "NetmaskLength" Prelude.<$> netmaskLength]))}
instance JSON.ToJSON IPAMAllocation where
  toJSON IPAMAllocation {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["IpamPoolId" JSON..= ipamPoolId]
              (Prelude.catMaybes
                 [(JSON..=) "Cidr" Prelude.<$> cidr,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "NetmaskLength" Prelude.<$> netmaskLength])))
instance Property "Cidr" IPAMAllocation where
  type PropertyType "Cidr" IPAMAllocation = Value Prelude.Text
  set newValue IPAMAllocation {..}
    = IPAMAllocation {cidr = Prelude.pure newValue, ..}
instance Property "Description" IPAMAllocation where
  type PropertyType "Description" IPAMAllocation = Value Prelude.Text
  set newValue IPAMAllocation {..}
    = IPAMAllocation {description = Prelude.pure newValue, ..}
instance Property "IpamPoolId" IPAMAllocation where
  type PropertyType "IpamPoolId" IPAMAllocation = Value Prelude.Text
  set newValue IPAMAllocation {..}
    = IPAMAllocation {ipamPoolId = newValue, ..}
instance Property "NetmaskLength" IPAMAllocation where
  type PropertyType "NetmaskLength" IPAMAllocation = Value Prelude.Integer
  set newValue IPAMAllocation {..}
    = IPAMAllocation {netmaskLength = Prelude.pure newValue, ..}