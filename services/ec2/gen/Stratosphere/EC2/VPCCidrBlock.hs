module Stratosphere.EC2.VPCCidrBlock (
        VPCCidrBlock(..), mkVPCCidrBlock
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data VPCCidrBlock
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html>
    VPCCidrBlock {haddock_workaround_ :: (),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-amazonprovidedipv6cidrblock>
                  amazonProvidedIpv6CidrBlock :: (Prelude.Maybe (Value Prelude.Bool)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-cidrblock>
                  cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv4ipampoolid>
                  ipv4IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv4netmasklength>
                  ipv4NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv6cidrblock>
                  ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv6cidrblocknetworkbordergroup>
                  ipv6CidrBlockNetworkBorderGroup :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv6ipampoolid>
                  ipv6IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv6netmasklength>
                  ipv6NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-ipv6pool>
                  ipv6Pool :: (Prelude.Maybe (Value Prelude.Text)),
                  -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpccidrblock.html#cfn-ec2-vpccidrblock-vpcid>
                  vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkVPCCidrBlock :: Value Prelude.Text -> VPCCidrBlock
mkVPCCidrBlock vpcId
  = VPCCidrBlock
      {haddock_workaround_ = (), vpcId = vpcId,
       amazonProvidedIpv6CidrBlock = Prelude.Nothing,
       cidrBlock = Prelude.Nothing, ipv4IpamPoolId = Prelude.Nothing,
       ipv4NetmaskLength = Prelude.Nothing,
       ipv6CidrBlock = Prelude.Nothing,
       ipv6CidrBlockNetworkBorderGroup = Prelude.Nothing,
       ipv6IpamPoolId = Prelude.Nothing,
       ipv6NetmaskLength = Prelude.Nothing, ipv6Pool = Prelude.Nothing}
instance ToResourceProperties VPCCidrBlock where
  toResourceProperties VPCCidrBlock {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPCCidrBlock", supportsTags = Prelude.False,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "AmazonProvidedIpv6CidrBlock"
                                 Prelude.<$> amazonProvidedIpv6CidrBlock,
                               (JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                               (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
                               (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
                               (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "Ipv6CidrBlockNetworkBorderGroup"
                                 Prelude.<$> ipv6CidrBlockNetworkBorderGroup,
                               (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                               (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength,
                               (JSON..=) "Ipv6Pool" Prelude.<$> ipv6Pool]))}
instance JSON.ToJSON VPCCidrBlock where
  toJSON VPCCidrBlock {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "AmazonProvidedIpv6CidrBlock"
                    Prelude.<$> amazonProvidedIpv6CidrBlock,
                  (JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                  (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
                  (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
                  (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "Ipv6CidrBlockNetworkBorderGroup"
                    Prelude.<$> ipv6CidrBlockNetworkBorderGroup,
                  (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                  (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength,
                  (JSON..=) "Ipv6Pool" Prelude.<$> ipv6Pool])))
instance Property "AmazonProvidedIpv6CidrBlock" VPCCidrBlock where
  type PropertyType "AmazonProvidedIpv6CidrBlock" VPCCidrBlock = Value Prelude.Bool
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock
        {amazonProvidedIpv6CidrBlock = Prelude.pure newValue, ..}
instance Property "CidrBlock" VPCCidrBlock where
  type PropertyType "CidrBlock" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {cidrBlock = Prelude.pure newValue, ..}
instance Property "Ipv4IpamPoolId" VPCCidrBlock where
  type PropertyType "Ipv4IpamPoolId" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv4IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv4NetmaskLength" VPCCidrBlock where
  type PropertyType "Ipv4NetmaskLength" VPCCidrBlock = Value Prelude.Integer
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv4NetmaskLength = Prelude.pure newValue, ..}
instance Property "Ipv6CidrBlock" VPCCidrBlock where
  type PropertyType "Ipv6CidrBlock" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "Ipv6CidrBlockNetworkBorderGroup" VPCCidrBlock where
  type PropertyType "Ipv6CidrBlockNetworkBorderGroup" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock
        {ipv6CidrBlockNetworkBorderGroup = Prelude.pure newValue, ..}
instance Property "Ipv6IpamPoolId" VPCCidrBlock where
  type PropertyType "Ipv6IpamPoolId" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv6IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv6NetmaskLength" VPCCidrBlock where
  type PropertyType "Ipv6NetmaskLength" VPCCidrBlock = Value Prelude.Integer
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv6NetmaskLength = Prelude.pure newValue, ..}
instance Property "Ipv6Pool" VPCCidrBlock where
  type PropertyType "Ipv6Pool" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {ipv6Pool = Prelude.pure newValue, ..}
instance Property "VpcId" VPCCidrBlock where
  type PropertyType "VpcId" VPCCidrBlock = Value Prelude.Text
  set newValue VPCCidrBlock {..}
    = VPCCidrBlock {vpcId = newValue, ..}