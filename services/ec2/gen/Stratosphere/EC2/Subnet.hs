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
  = Subnet {assignIpv6AddressOnCreation :: (Prelude.Maybe (Value Prelude.Bool)),
            availabilityZone :: (Prelude.Maybe (Value Prelude.Text)),
            availabilityZoneId :: (Prelude.Maybe (Value Prelude.Text)),
            cidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
            enableDns64 :: (Prelude.Maybe (Value Prelude.Bool)),
            ipv6CidrBlock :: (Prelude.Maybe (Value Prelude.Text)),
            ipv6Native :: (Prelude.Maybe (Value Prelude.Bool)),
            mapPublicIpOnLaunch :: (Prelude.Maybe (Value Prelude.Bool)),
            outpostArn :: (Prelude.Maybe (Value Prelude.Text)),
            privateDnsNameOptionsOnLaunch :: (Prelude.Maybe PrivateDnsNameOptionsOnLaunchProperty),
            tags :: (Prelude.Maybe [Tag]),
            vpcId :: (Value Prelude.Text)}
  deriving stock (Prelude.Eq, Prelude.Show)
mkSubnet :: Value Prelude.Text -> Subnet
mkSubnet vpcId
  = Subnet
      {vpcId = vpcId, assignIpv6AddressOnCreation = Prelude.Nothing,
       availabilityZone = Prelude.Nothing,
       availabilityZoneId = Prelude.Nothing, cidrBlock = Prelude.Nothing,
       enableDns64 = Prelude.Nothing, ipv6CidrBlock = Prelude.Nothing,
       ipv6Native = Prelude.Nothing,
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
                               (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                               (JSON..=) "Ipv6Native" Prelude.<$> ipv6Native,
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
                  (JSON..=) "Ipv6CidrBlock" Prelude.<$> ipv6CidrBlock,
                  (JSON..=) "Ipv6Native" Prelude.<$> ipv6Native,
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
instance Property "Ipv6CidrBlock" Subnet where
  type PropertyType "Ipv6CidrBlock" Subnet = Value Prelude.Text
  set newValue Subnet {..}
    = Subnet {ipv6CidrBlock = Prelude.pure newValue, ..}
instance Property "Ipv6Native" Subnet where
  type PropertyType "Ipv6Native" Subnet = Value Prelude.Bool
  set newValue Subnet {..}
    = Subnet {ipv6Native = Prelude.pure newValue, ..}
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