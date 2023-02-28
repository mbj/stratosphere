module Stratosphere.EC2.VPC (
        VPC(..), mkVPC
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data VPC
  = VPC {cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
         enableDnsHostnames :: (Prelude.Maybe (Value Prelude.Bool)),
         enableDnsSupport :: (Prelude.Maybe (Value Prelude.Bool)),
         instanceTenancy :: (Prelude.Maybe (Value Prelude.Text)),
         ipv4IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
         ipv4NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
         tags :: (Prelude.Maybe [Tag])}
mkVPC :: VPC
mkVPC
  = VPC
      {cidrBlock = Prelude.Nothing, enableDnsHostnames = Prelude.Nothing,
       enableDnsSupport = Prelude.Nothing,
       instanceTenancy = Prelude.Nothing,
       ipv4IpamPoolId = Prelude.Nothing,
       ipv4NetmaskLength = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties VPC where
  toResourceProperties VPC {..}
    = ResourceProperties
        {awsType = "AWS::EC2::VPC", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                            (JSON..=) "EnableDnsHostnames" Prelude.<$> enableDnsHostnames,
                            (JSON..=) "EnableDnsSupport" Prelude.<$> enableDnsSupport,
                            (JSON..=) "InstanceTenancy" Prelude.<$> instanceTenancy,
                            (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
                            (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON VPC where
  toJSON VPC {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
               (JSON..=) "EnableDnsHostnames" Prelude.<$> enableDnsHostnames,
               (JSON..=) "EnableDnsSupport" Prelude.<$> enableDnsSupport,
               (JSON..=) "InstanceTenancy" Prelude.<$> instanceTenancy,
               (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
               (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "CidrBlock" VPC where
  type PropertyType "CidrBlock" VPC = Value Prelude.Text
  set newValue VPC {..} = VPC {cidrBlock = Prelude.pure newValue, ..}
instance Property "EnableDnsHostnames" VPC where
  type PropertyType "EnableDnsHostnames" VPC = Value Prelude.Bool
  set newValue VPC {..}
    = VPC {enableDnsHostnames = Prelude.pure newValue, ..}
instance Property "EnableDnsSupport" VPC where
  type PropertyType "EnableDnsSupport" VPC = Value Prelude.Bool
  set newValue VPC {..}
    = VPC {enableDnsSupport = Prelude.pure newValue, ..}
instance Property "InstanceTenancy" VPC where
  type PropertyType "InstanceTenancy" VPC = Value Prelude.Text
  set newValue VPC {..}
    = VPC {instanceTenancy = Prelude.pure newValue, ..}
instance Property "Ipv4IpamPoolId" VPC where
  type PropertyType "Ipv4IpamPoolId" VPC = Value Prelude.Text
  set newValue VPC {..}
    = VPC {ipv4IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv4NetmaskLength" VPC where
  type PropertyType "Ipv4NetmaskLength" VPC = Value Prelude.Integer
  set newValue VPC {..}
    = VPC {ipv4NetmaskLength = Prelude.pure newValue, ..}
instance Property "Tags" VPC where
  type PropertyType "Tags" VPC = [Tag]
  set newValue VPC {..} = VPC {tags = Prelude.pure newValue, ..}