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
  = NetworkInterface {connectionTrackingSpecification :: (Prelude.Maybe ConnectionTrackingSpecificationProperty),
                      description :: (Prelude.Maybe (Value Prelude.Text)),
                      groupSet :: (Prelude.Maybe (ValueList Prelude.Text)),
                      interfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                      ipv4PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      ipv4Prefixes :: (Prelude.Maybe [Ipv4PrefixSpecificationProperty]),
                      ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
                      ipv6PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      ipv6Prefixes :: (Prelude.Maybe [Ipv6PrefixSpecificationProperty]),
                      privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                      privateIpAddresses :: (Prelude.Maybe [PrivateIpAddressSpecificationProperty]),
                      secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      sourceDestCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                      subnetId :: (Value Prelude.Text),
                      tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkNetworkInterface :: Value Prelude.Text -> NetworkInterface
mkNetworkInterface subnetId
  = NetworkInterface
      {subnetId = subnetId,
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