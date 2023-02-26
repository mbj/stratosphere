module Stratosphere.EC2.Instance.NetworkInterfaceProperty (
        module Exports, NetworkInterfaceProperty(..),
        mkNetworkInterfaceProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.Instance.InstanceIpv6AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.Instance.PrivateIpAddressSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkInterfaceProperty
  = NetworkInterfaceProperty {associateCarrierIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              associatePublicIpAddress :: (Prelude.Maybe (Value Prelude.Bool)),
                              deleteOnTermination :: (Prelude.Maybe (Value Prelude.Bool)),
                              description :: (Prelude.Maybe (Value Prelude.Text)),
                              deviceIndex :: (Value Prelude.Text),
                              groupSet :: (Prelude.Maybe (ValueList Prelude.Text)),
                              ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
                              networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                              privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                              privateIpAddresses :: (Prelude.Maybe [PrivateIpAddressSpecificationProperty]),
                              secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                              subnetId :: (Prelude.Maybe (Value Prelude.Text))}
mkNetworkInterfaceProperty ::
  Value Prelude.Text -> NetworkInterfaceProperty
mkNetworkInterfaceProperty deviceIndex
  = NetworkInterfaceProperty
      {deviceIndex = deviceIndex,
       associateCarrierIpAddress = Prelude.Nothing,
       associatePublicIpAddress = Prelude.Nothing,
       deleteOnTermination = Prelude.Nothing,
       description = Prelude.Nothing, groupSet = Prelude.Nothing,
       ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       subnetId = Prelude.Nothing}
instance ToResourceProperties NetworkInterfaceProperty where
  toResourceProperties NetworkInterfaceProperty {..}
    = ResourceProperties
        {awsType = "AWS::EC2::Instance.NetworkInterface",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["DeviceIndex" JSON..= deviceIndex]
                           (Prelude.catMaybes
                              [(JSON..=) "AssociateCarrierIpAddress"
                                 Prelude.<$> associateCarrierIpAddress,
                               (JSON..=) "AssociatePublicIpAddress"
                                 Prelude.<$> associatePublicIpAddress,
                               (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                               (JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupSet" Prelude.<$> groupSet,
                               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                               (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                               (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                               (JSON..=) "SecondaryPrivateIpAddressCount"
                                 Prelude.<$> secondaryPrivateIpAddressCount,
                               (JSON..=) "SubnetId" Prelude.<$> subnetId]))}
instance JSON.ToJSON NetworkInterfaceProperty where
  toJSON NetworkInterfaceProperty {..}
    = JSON.object
        (Prelude.fromList
           ((Prelude.<>)
              ["DeviceIndex" JSON..= deviceIndex]
              (Prelude.catMaybes
                 [(JSON..=) "AssociateCarrierIpAddress"
                    Prelude.<$> associateCarrierIpAddress,
                  (JSON..=) "AssociatePublicIpAddress"
                    Prelude.<$> associatePublicIpAddress,
                  (JSON..=) "DeleteOnTermination" Prelude.<$> deleteOnTermination,
                  (JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupSet" Prelude.<$> groupSet,
                  (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                  (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                  (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                  (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                  (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                  (JSON..=) "SecondaryPrivateIpAddressCount"
                    Prelude.<$> secondaryPrivateIpAddressCount,
                  (JSON..=) "SubnetId" Prelude.<$> subnetId])))
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
  type PropertyType "DeviceIndex" NetworkInterfaceProperty = Value Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {deviceIndex = newValue, ..}
instance Property "GroupSet" NetworkInterfaceProperty where
  type PropertyType "GroupSet" NetworkInterfaceProperty = ValueList Prelude.Text
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty {groupSet = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" NetworkInterfaceProperty where
  type PropertyType "Ipv6AddressCount" NetworkInterfaceProperty = Value Prelude.Integer
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" NetworkInterfaceProperty where
  type PropertyType "Ipv6Addresses" NetworkInterfaceProperty = [InstanceIpv6AddressProperty]
  set newValue NetworkInterfaceProperty {..}
    = NetworkInterfaceProperty
        {ipv6Addresses = Prelude.pure newValue, ..}
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
  type PropertyType "PrivateIpAddresses" NetworkInterfaceProperty = [PrivateIpAddressSpecificationProperty]
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