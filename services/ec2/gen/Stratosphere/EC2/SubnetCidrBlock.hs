module Stratosphere.EC2.SubnetCidrBlock (
        SubnetCidrBlock(..), mkSubnetCidrBlock
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data SubnetCidrBlock
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html>
    SubnetCidrBlock {haddock_workaround_ :: (),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6cidrblock>
                     ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6ipampoolid>
                     ipv6IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-ipv6netmasklength>
                     ipv6NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
                     -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnetcidrblock.html#cfn-ec2-subnetcidrblock-subnetid>
                     subnetId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnetCidrBlock :: Value Prelude.Text -> SubnetCidrBlock
mkSubnetCidrBlock subnetId
  = SubnetCidrBlock
      {haddock_workaround_ = (), subnetId = subnetId,
       ipv6CidrBlock = Prelude.Nothing, ipv6IpamPoolId = Prelude.Nothing,
       ipv6NetmaskLength = Prelude.Nothing}
instance ToResourceProperties SubnetCidrBlock where
  toResourceProperties SubnetCidrBlock {..}
    = ResourceProperties
        {awsType = "AWS::EC2::SubnetCidrBlock",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                               (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength]))}
instance JSON.ToJSON SubnetCidrBlock where
  toJSON SubnetCidrBlock {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                  (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength])))
instance Property "Ipv6CidrBlock" SubnetCidrBlock where
  type PropertyType "Ipv6CidrBlock" SubnetCidrBlock = Value Prelude.Text
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "Ipv6IpamPoolId" SubnetCidrBlock where
  type PropertyType "Ipv6IpamPoolId" SubnetCidrBlock = Value Prelude.Text
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {ipv6IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv6NetmaskLength" SubnetCidrBlock where
  type PropertyType "Ipv6NetmaskLength" SubnetCidrBlock = Value Prelude.Integer
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {ipv6NetmaskLength = Prelude.pure newValue, ..}
instance Property "SubnetId" SubnetCidrBlock where
  type PropertyType "SubnetId" SubnetCidrBlock = Value Prelude.Text
  set newValue SubnetCidrBlock {..}
    = SubnetCidrBlock {subnetId = newValue, ..}