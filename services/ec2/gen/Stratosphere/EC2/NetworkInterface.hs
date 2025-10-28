module Stratosphere.EC2.NetworkInterface (
        module Exports, NetworkInterface(..), mkNetworkInterface
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.ConnectionTrackingSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.InstanceIpv6AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.Ipv4PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.Ipv6PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.PrivateIpAddressSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInterface
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html>
    NetworkInterface {haddock_workaround_ :: (),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-connectiontrackingspecification>
                      connectionTrackingSpecification :: (Prelude.Maybe ConnectionTrackingSpecificationProperty),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-description>
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-groupset>
                      groupSet :: (Prelude.Maybe (ValueList Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-interfacetype>
                      interfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv4prefixcount>
                      ipv4PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv4prefixes>
                      ipv4Prefixes :: (Prelude.Maybe [Ipv4PrefixSpecificationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv6addresscount>
                      ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv6addresses>
                      ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv6prefixcount>
                      ipv6PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-ipv6prefixes>
                      ipv6Prefixes :: (Prelude.Maybe [Ipv6PrefixSpecificationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-privateipaddress>
                      privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-privateipaddresses>
                      privateIpAddresses :: (Prelude.Maybe [PrivateIpAddressSpecificationProperty]),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-secondaryprivateipaddresscount>
                      secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-sourcedestcheck>
                      sourceDestCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-subnetid>
                      subnetId :: (Value Prelude.Text),
                      -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-networkinterface.html#cfn-ec2-networkinterface-tags>
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterface :: Value Prelude.Text -> NetworkInterface
mkNetworkInterface subnetId
  = NetworkInterface
      {haddock_workaround_ = (), subnetId = subnetId,
       connectionTrackingSpecification = Prelude.Nothing,
       description = Prelude.Nothing, groupSet = Prelude.Nothing,
       interfaceType = Prelude.Nothing, ipv4PrefixCount = Prelude.Nothing,
       ipv4Prefixes = Prelude.Nothing, ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing, ipv6PrefixCount = Prelude.Nothing,
       ipv6Prefixes = Prelude.Nothing, privateIpAddress = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       sourceDestCheck = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties NetworkInterface where
  toResourceProperties NetworkInterface {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterface",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "ConnectionTrackingSpecification"
                                 Prelude.<$> connectionTrackingSpecification,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupSet" Prelude.<$> groupSet,
                               (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                               (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
                               (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
                               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                               (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
                               (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
                               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                               (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                               (JSON..=) "SecondaryPrivateIpAddressCount"
                                 Prelude.<$> secondaryPrivateIpAddressCount,
                               (JSON..=) "SourceDestCheck" Prelude.<$> sourceDestCheck,
                               (JSON..=) "Tags" Prelude.<$> tags]))}
instance JSON.ToJSON NetworkInterface where
  toJSON NetworkInterface {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["SubnetId" JSON..= subnetId]
              (Prelude.catMaybes
                 [(JSON..=) "ConnectionTrackingSpecification"
                    Prelude.<$> connectionTrackingSpecification,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupSet" Prelude.<$> groupSet,
                  (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                  (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
                  (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
                  (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                  (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                  (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
                  (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
                  (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                  (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                  (JSON..=) "SecondaryPrivateIpAddressCount"
                    Prelude.<$> secondaryPrivateIpAddressCount,
                  (JSON..=) "SourceDestCheck" Prelude.<$> sourceDestCheck,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "ConnectionTrackingSpecification" NetworkInterface where
  type PropertyType "ConnectionTrackingSpecification" NetworkInterface = ConnectionTrackingSpecificationProperty
  set newValue NetworkInterface {..}
    = NetworkInterface
        {connectionTrackingSpecification = Prelude.pure newValue, ..}
instance Property "Description" NetworkInterface where
  type PropertyType "Description" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {description = Prelude.pure newValue, ..}
instance Property "GroupSet" NetworkInterface where
  type PropertyType "GroupSet" NetworkInterface = ValueList Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {groupSet = Prelude.pure newValue, ..}
instance Property "InterfaceType" NetworkInterface where
  type PropertyType "InterfaceType" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {interfaceType = Prelude.pure newValue, ..}
instance Property "Ipv4PrefixCount" NetworkInterface where
  type PropertyType "Ipv4PrefixCount" NetworkInterface = Value Prelude.Integer
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv4PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv4Prefixes" NetworkInterface where
  type PropertyType "Ipv4Prefixes" NetworkInterface = [Ipv4PrefixSpecificationProperty]
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv4Prefixes = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" NetworkInterface where
  type PropertyType "Ipv6AddressCount" NetworkInterface = Value Prelude.Integer
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" NetworkInterface where
  type PropertyType "Ipv6Addresses" NetworkInterface = [InstanceIpv6AddressProperty]
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6Addresses = Prelude.pure newValue, ..}
instance Property "Ipv6PrefixCount" NetworkInterface where
  type PropertyType "Ipv6PrefixCount" NetworkInterface = Value Prelude.Integer
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv6Prefixes" NetworkInterface where
  type PropertyType "Ipv6Prefixes" NetworkInterface = [Ipv6PrefixSpecificationProperty]
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6Prefixes = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" NetworkInterface where
  type PropertyType "PrivateIpAddress" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {privateIpAddress = Prelude.pure newValue, ..}
instance Property "PrivateIpAddresses" NetworkInterface where
  type PropertyType "PrivateIpAddresses" NetworkInterface = [PrivateIpAddressSpecificationProperty]
  set newValue NetworkInterface {..}
    = NetworkInterface {privateIpAddresses = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddressCount" NetworkInterface where
  type PropertyType "SecondaryPrivateIpAddressCount" NetworkInterface = Value Prelude.Integer
  set newValue NetworkInterface {..}
    = NetworkInterface
        {secondaryPrivateIpAddressCount = Prelude.pure newValue, ..}
instance Property "SourceDestCheck" NetworkInterface where
  type PropertyType "SourceDestCheck" NetworkInterface = Value Prelude.Bool
  set newValue NetworkInterface {..}
    = NetworkInterface {sourceDestCheck = Prelude.pure newValue, ..}
instance Property "SubnetId" NetworkInterface where
  type PropertyType "SubnetId" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {subnetId = newValue, ..}
instance Property "Tags" NetworkInterface where
  type PropertyType "Tags" NetworkInterface = [Tag]
  set newValue NetworkInterface {..}
    = NetworkInterface {tags = Prelude.pure newValue, ..}