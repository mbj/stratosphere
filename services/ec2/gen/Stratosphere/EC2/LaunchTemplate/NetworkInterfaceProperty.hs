module Stratosphere.EC2.LaunchTemplate.NetworkInterfaceProperty (
        module Exports, NetworkInterfaceProperty(..),
        mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv4PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv6AddProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.Ipv6PrefixSpecificationProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.LaunchTemplate.PrivateIpAddProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = NetworkInterfaceProperty {associateCarrierIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              deviceIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                              groups :: (Prelude.Maybe (ValueList Prelude.Text)),
                              interfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                              ipv4PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              ipv4Prefixes :: (Prelude.Maybe [Ipv4PrefixSpecificationProperty]),
                              ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              ipv6Addresses :: (Prelude.Maybe [Ipv6AddProperty]),
                              ipv6PrefixCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              ipv6Prefixes :: (Prelude.Maybe [Ipv6PrefixSpecificationProperty]),
                              networkCardIndex :: (Prelude.Maybe (Value Prelude.Integer)),
                              networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                              privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                              privateIpAddresses :: (Prelude.Maybe [PrivateIpAddProperty]),
                              secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              subnetId :: (Prelude.Maybe (Value Prelude.Text))}
mkNetworkInterfaceProperty :: NetworkInterfaceProperty
mkNetworkInterfaceProperty
  = NetworkInterfaceProperty
      {associateCarrierIpAddress = Prelude.Nothing,
       associatePublicIpAddress = Prelude.Nothing,
       deleteOnTermination = Prelude.Nothing,
       description = Prelude.Nothing, deviceIndex = Prelude.Nothing,
       groups = Prelude.Nothing, interfaceType = Prelude.Nothing,
       ipv4PrefixCount = Prelude.Nothing, ipv4Prefixes = Prelude.Nothing,
       ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing, ipv6PrefixCount = Prelude.Nothing,
       ipv6Prefixes = Prelude.Nothing, networkCardIndex = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::LaunchTemplate.NetworkInterface",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "AssociateCarrierIpAddress"
                              Prelude.<$> associateCarrierIpAddress,
                            (JSON..=) "AssociatePublicIpAddress"
                              Prelude.<$> associatePublicIpAddress,
                            (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                            (JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
                            (JSON..=) "Groups" Prelude.<$> groups,
                            (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                            (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
                            (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
                            (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                            (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                            (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
                            (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
                            (JSON..=) "NetworkCardIndex" Prelude.<$> networkCardIndex,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                            (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                            (JSON..=) "SecondaryPrivateIpAddressCount"
                              Prelude.<$> secondaryPrivateIpAddressCount,
                            (JSON..=) "SubnetId" Prelude.<$> subnetId])}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "AssociateCarrierIpAddress"
                 Prelude.<$> associateCarrierIpAddress,
               (JSON..=) "AssociatePublicIpAddress"
                 Prelude.<$> associatePublicIpAddress,
               (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
               (JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "DeviceIndex" Prelude.<$> deviceIndex,
               (JSON..=) "Groups" Prelude.<$> groups,
               (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
               (JSON..=) "Ipv4PrefixCount" Prelude.<$> ipv4PrefixCount,
               (JSON..=) "Ipv4Prefixes" Prelude.<$> ipv4Prefixes,
               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
               (JSON..=) "Ipv6PrefixCount" Prelude.<$> ipv6PrefixCount,
               (JSON..=) "Ipv6Prefixes" Prelude.<$> ipv6Prefixes,
               (JSON..=) "NetworkCardIndex" Prelude.<$> networkCardIndex,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
               (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
               (JSON..=) "SecondaryPrivateIpAddressCount"
                 Prelude.<$> secondaryPrivateIpAddressCount,
               (JSON..=) "SubnetId" Prelude.<$> subnetId]))
instance Property "AssociateCarrierIpAddress" NetworkInterfaceProperty where
  type PropertyType "AssociateCarrierIpAddress" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {associateCarrierIpAddress = Prelude.pure newValue, ..}
instance Property "AssociatePublicIpAddress" NetworkInterfaceProperty where
  type PropertyType "AssociatePublicIpAddress" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {associatePublicIpAddress = Prelude.pure newValue, ..}
instance Property "DeleteOnTermination" NetworkInterfaceProperty where
  type PropertyType "DeleteOnTermination" NetworkInterfaceProperty = Value Prelude.Bool
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {deleteOnTermination = Prelude.pure newValue, ..}
instance Property "Description" NetworkInterfaceProperty where
  type PropertyType "Description" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {description = Prelude.pure newValue, ..}
instance Property "DeviceIndex" NetworkInterfaceProperty where
  type PropertyType "DeviceIndex" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {deviceIndex = Prelude.pure newValue, ..}
instance Property "Groups" NetworkInterfaceProperty where
  type PropertyType "Groups" NetworkInterfaceProperty = ValueList Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {groups = Prelude.pure newValue, ..}
instance Property "InterfaceType" NetworkInterfaceProperty where
  type PropertyType "InterfaceType" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {interfaceType = Prelude.pure newValue, ..}
instance Property "Ipv4PrefixCount" NetworkInterfaceProperty where
  type PropertyType "Ipv4PrefixCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv4PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv4Prefixes" NetworkInterfaceProperty where
  type PropertyType "Ipv4Prefixes" NetworkInterfaceProperty = [Ipv4PrefixSpecificationProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv4Prefixes = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" NetworkInterfaceProperty where
  type PropertyType "Ipv6AddressCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" NetworkInterfaceProperty where
  type PropertyType "Ipv6Addresses" NetworkInterfaceProperty = [Ipv6AddProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6Addresses = Prelude.pure newValue, ..}
instance Property "Ipv6PrefixCount" NetworkInterfaceProperty where
  type PropertyType "Ipv6PrefixCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6PrefixCount = Prelude.pure newValue, ..}
instance Property "Ipv6Prefixes" NetworkInterfaceProperty where
  type PropertyType "Ipv6Prefixes" NetworkInterfaceProperty = [Ipv6PrefixSpecificationProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6Prefixes = Prelude.pure newValue, ..}
instance Property "NetworkCardIndex" NetworkInterfaceProperty where
  type PropertyType "NetworkCardIndex" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkCardIndex = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" NetworkInterfaceProperty where
  type PropertyType "NetworkInterfaceId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "PrivateIpAddress" NetworkInterfaceProperty where
  type PropertyType "PrivateIpAddress" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {privateIpAddress = Prelude.pure newValue, ..}
instance Property "PrivateIpAddresses" NetworkInterfaceProperty where
  type PropertyType "PrivateIpAddresses" NetworkInterfaceProperty = [PrivateIpAddProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {privateIpAddresses = Prelude.pure newValue, ..}
instance Property "SecondaryPrivateIpAddressCount" NetworkInterfaceProperty where
  type PropertyType "SecondaryPrivateIpAddressCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {secondaryPrivateIpAddressCount = Prelude.pure newValue, ..}
instance Property "SubnetId" NetworkInterfaceProperty where
  type PropertyType "SubnetId" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {subnetId = Prelude.pure newValue, ..}