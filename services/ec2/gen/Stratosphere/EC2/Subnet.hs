module Stratosphere.EC2.Subnet (
        module Exports, Subnet(..), mkSubnet
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Subnet.PrivateDnsNameOptionsOnLaunchProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data Subnet
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html>
    Subnet {haddock_workaround_ :: (),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-assignipv6addressoncreation>
            assignIpv6AddressOnCreation :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-availabilityzone>
            availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-availabilityzoneid>
            availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-cidrblock>
            cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-enabledns64>
            enableDns64 :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-enablelniatdeviceindex>
            enableLniAtDeviceIndex :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv4ipampoolid>
            ipv4IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv4netmasklength>
            ipv4NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6cidrblock>
            ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6ipampoolid>
            ipv6IpamPoolId :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6native>
            ipv6Native :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-ipv6netmasklength>
            ipv6NetmaskLength :: (Prelude.Maybe (Value Prelude.Integer)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-mappubliciponlaunch>
            mapPublicIpOnLaunch :: (Prelude.Maybe (Value Prelude.Bool)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-outpostarn>
            outpostArn :: (Prelude.Maybe (Value Prelude.Text)),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-privatednsnameoptionsonlaunch>
            privateDnsNameOptionsOnLaunch :: (Prelude.Maybe PrivateDnsNameOptionsOnLaunchProperty),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-tags>
            tags :: (Prelude.Maybe [Tag]),
            -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-subnet.html#cfn-ec2-subnet-vpcid>
            vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnet :: Value Prelude.Text -> Subnet
mkSubnet vpcId
  = Subnet
      {haddock_workaround_ = (), vpcId = vpcId,
       assignIpv6AddressOnCreation = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing, cidrBlock = Prelude.Nothing,
       enableDns64 = Prelude.Nothing,
       enableLniAtDeviceIndex = Prelude.Nothing,
       ipv4IpamPoolId = Prelude.Nothing,
       ipv4NetmaskLength = Prelude.Nothing,
       ipv6CidrBlock = Prelude.Nothing, ipv6IpamPoolId = Prelude.Nothing,
       ipv6Native = Prelude.Nothing, ipv6NetmaskLength = Prelude.Nothing,
       mapPublicIpOnLaunch = Prelude.Nothing,
       outpostArn = Prelude.Nothing,
       privateDnsNameOptionsOnLaunch = Prelude.Nothing,
       tags = Prelude.Nothing}
instance ToResourceProperties Subnet where
  toResourceProperties Subnet {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Subnet", supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["VpcId" JSON..= vpcId]
                           (Prelude.catMaybes
                              [(JSON..=) "AssignIpv6AddressOnCreation"
                                 Prelude.<$> assignIpv6AddressOnCreation,
                               (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                               (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                               (JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                               (JSON..=) "EnableDns64" Prelude.<$> enableDns64,
                               (JSON..=) "EnableLniAtDeviceIndex"
                                 Prelude.<$> enableLniAtDeviceIndex,
                               (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
                               (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
                               (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                               (JSON..=) "Ipv6Native" Prelude.<$> ipv6Native,
                               (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength,
                               (JSON..=) "MapPublicIpOnLaunch" Prelude.<$> mapPublicIpOnLaunch,
                               (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                               (JSON..=) "PrivateDnsNameOptionsOnLaunch"
                                 Prelude.<$> privateDnsNameOptionsOnLaunch,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON Subnet where
  toJSON Subnet {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["VpcId" JSON..= vpcId]
              (Prelude.catMaybes
                 [(JSON..=) "AssignIpv6AddressOnCreation"
                    Prelude.<$> assignIpv6AddressOnCreation,
                  (JSON..=) "AvailabilityZone" Prelude.<$> availabilityZone,
                  (JSON..=) "AvailabilityZoneId" Prelude.<$> availabilityZoneId,
                  (JSON..=) "CidrBlock" Prelude.<$> cidrBlock,
                  (JSON..=) "EnableDns64" Prelude.<$> enableDns64,
                  (JSON..=) "EnableLniAtDeviceIndex"
                    Prelude.<$> enableLniAtDeviceIndex,
                  (JSON..=) "Ipv4IpamPoolId" Prelude.<$> ipv4IpamPoolId,
                  (JSON..=) "Ipv4NetmaskLength" Prelude.<$> ipv4NetmaskLength,
                  (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "Ipv6IpamPoolId" Prelude.<$> ipv6IpamPoolId,
                  (JSON..=) "Ipv6Native" Prelude.<$> ipv6Native,
                  (JSON..=) "Ipv6NetmaskLength" Prelude.<$> ipv6NetmaskLength,
                  (JSON..=) "MapPublicIpOnLaunch" Prelude.<$> mapPublicIpOnLaunch,
                  (JSON..=) "OutpostArn" Prelude.<$> outpostArn,
                  (JSON..=) "PrivateDnsNameOptionsOnLaunch"
                    Prelude.<$> privateDnsNameOptionsOnLaunch,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "AssignIpv6AddressOnCreation" Subnet where
  type PropertyType "AssignIpv6AddressOnCreation" Subnet = Value Prelude.Bool
  set newValue Subnet {..}
    = Subnet {assignIpv6AddressOnCreation = Prelude.pure newValue, ..}
instance Property "AvailabilityZone" Subnet where
  type PropertyType "AvailabilityZone" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {availabilityZone = Prelude.pure newValue, ..}
instance Property "AvailabilityZoneId" Subnet where
  type PropertyType "AvailabilityZoneId" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {availabilityZoneId = Prelude.pure newValue, ..}
instance Property "CidrBlock" Subnet where
  type PropertyType "CidrBlock" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {cidrBlock = Prelude.pure newValue, ..}
instance Property "EnableDns64" Subnet where
  type PropertyType "EnableDns64" Subnet = Value Prelude.Bool
  set newValue Subnet {..}
    = Subnet {enableDns64 = Prelude.pure newValue, ..}
instance Property "EnableLniAtDeviceIndex" Subnet where
  type PropertyType "EnableLniAtDeviceIndex" Subnet = Value Prelude.Integer
  set newValue Subnet {..}
    = Subnet {enableLniAtDeviceIndex = Prelude.pure newValue, ..}
instance Property "Ipv4IpamPoolId" Subnet where
  type PropertyType "Ipv4IpamPoolId" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {ipv4IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv4NetmaskLength" Subnet where
  type PropertyType "Ipv4NetmaskLength" Subnet = Value Prelude.Integer
  set newValue Subnet {..}
    = Subnet {ipv4NetmaskLength = Prelude.pure newValue, ..}
instance Property "Ipv6CidrBlock" Subnet where
  type PropertyType "Ipv6CidrBlock" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "Ipv6IpamPoolId" Subnet where
  type PropertyType "Ipv6IpamPoolId" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {ipv6IpamPoolId = Prelude.pure newValue, ..}
instance Property "Ipv6Native" Subnet where
  type PropertyType "Ipv6Native" Subnet = Value Prelude.Bool
  set newValue Subnet {..}
    = Subnet {ipv6Native = Prelude.pure newValue, ..}
instance Property "Ipv6NetmaskLength" Subnet where
  type PropertyType "Ipv6NetmaskLength" Subnet = Value Prelude.Integer
  set newValue Subnet {..}
    = Subnet {ipv6NetmaskLength = Prelude.pure newValue, ..}
instance Property "MapPublicIpOnLaunch" Subnet where
  type PropertyType "MapPublicIpOnLaunch" Subnet = Value Prelude.Bool
  set newValue Subnet {..}
    = Subnet {mapPublicIpOnLaunch = Prelude.pure newValue, ..}
instance Property "OutpostArn" Subnet where
  type PropertyType "OutpostArn" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {outpostArn = Prelude.pure newValue, ..}
instance Property "PrivateDnsNameOptionsOnLaunch" Subnet where
  type PropertyType "PrivateDnsNameOptionsOnLaunch" Subnet = PrivateDnsNameOptionsOnLaunchProperty
  set newValue Subnet {..}
    = Subnet
        {privateDnsNameOptionsOnLaunch = Prelude.pure newValue, ..}
instance Property "Tags" Subnet where
  type PropertyType "Tags" Subnet = [Tag]
  set newValue Subnet {..}
    = Subnet {tags = Prelude.pure newValue, ..}
instance Property "VpcId" Subnet where
  type PropertyType "VpcId" Subnet = Value Prelude.Text
  set newValue Subnet {..} = Subnet {vpcId = newValue, ..}