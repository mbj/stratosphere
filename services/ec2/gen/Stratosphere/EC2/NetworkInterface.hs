module Stratosphere.EC2.NetworkInterface (
        module Exports, NetworkInterface(..), mkNetworkInterface
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.InstanceIpv6AddressProperty as Exports
import {-# SOURCE #-} Stratosphere.EC2.NetworkInterface.PrivateIpAddressSpecificationProperty as Exports
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data NetworkInterface
  = NetworkInterface {description :: (Prelude.Maybe (Value Prelude.Text)),
                      groupSet :: (Prelude.Maybe (ValueList (Value Prelude.Text))),
                      interfaceType :: (Prelude.Maybe (Value Prelude.Text)),
                      ipv6AddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      ipv6Addresses :: (Prelude.Maybe [InstanceIpv6AddressProperty]),
                      privateIpAddress :: (Prelude.Maybe (Value Prelude.Text)),
                      privateIpAddresses :: (Prelude.Maybe [PrivateIpAddressSpecificationProperty]),
                      secondaryPrivateIpAddressCount :: (Prelude.Maybe (Value Prelude.Integer)),
                      sourceDestCheck :: (Prelude.Maybe (Value Prelude.Bool)),
                      subnetId :: (Value Prelude.Text),
                      tags :: (Prelude.Maybe [Tag])}
mkNetworkInterface :: Value Prelude.Text -> NetworkInterface
mkNetworkInterface subnetId
  = NetworkInterface
      {subnetId = subnetId, description = Prelude.Nothing,
       groupSet = Prelude.Nothing, interfaceType = Prelude.Nothing,
       ipv6AddressCount = Prelude.Nothing,
       ipv6Addresses = Prelude.Nothing,
       privateIpAddress = Prelude.Nothing,
       privateIpAddresses = Prelude.Nothing,
       secondaryPrivateIpAddressCount = Prelude.Nothing,
       sourceDestCheck = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties NetworkInterface where
  toResourceProperties NetworkInterface {..}
    = ResourceProperties
        {awsType = "AWS::EC2::NetworkInterface",
         properties = Prelude.fromList
                        ((Prelude.<>)
                           ["SubnetId" JSON..= subnetId]
                           (Prelude.catMaybes
                              [(JSON..=) "Description" Prelude.<$> description,
                               (JSON..=) "GroupSet" Prelude.<$> groupSet,
                               (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                               (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                               (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
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
                 [(JSON..=) "Description" Prelude.<$> description,
                  (JSON..=) "GroupSet" Prelude.<$> groupSet,
                  (JSON..=) "InterfaceType" Prelude.<$> interfaceType,
                  (JSON..=) "Ipv6AddressCount" Prelude.<$> ipv6AddressCount,
                  (JSON..=) "Ipv6Addresses" Prelude.<$> ipv6Addresses,
                  (JSON..=) "PrivateIpAddress" Prelude.<$> privateIpAddress,
                  (JSON..=) "PrivateIpAddresses" Prelude.<$> privateIpAddresses,
                  (JSON..=) "SecondaryPrivateIpAddressCount"
                    Prelude.<$> secondaryPrivateIpAddressCount,
                  (JSON..=) "SourceDestCheck" Prelude.<$> sourceDestCheck,
                  (JSON..=) "Tags" Prelude.<$> tags])))
instance Property "Description" NetworkInterface where
  type PropertyType "Description" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {description = Prelude.pure newValue, ..}
instance Property "GroupSet" NetworkInterface where
  type PropertyType "GroupSet" NetworkInterface = ValueList (Value Prelude.Text)
  set newValue NetworkInterface {..}
    = NetworkInterface {groupSet = Prelude.pure newValue, ..}
instance Property "InterfaceType" NetworkInterface where
  type PropertyType "InterfaceType" NetworkInterface = Value Prelude.Text
  set newValue NetworkInterface {..}
    = NetworkInterface {interfaceType = Prelude.pure newValue, ..}
instance Property "Ipv6AddressCount" NetworkInterface where
  type PropertyType "Ipv6AddressCount" NetworkInterface = Value Prelude.Integer
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6AddressCount = Prelude.pure newValue, ..}
instance Property "Ipv6Addresses" NetworkInterface where
  type PropertyType "Ipv6Addresses" NetworkInterface = [InstanceIpv6AddressProperty]
  set newValue NetworkInterface {..}
    = NetworkInterface {ipv6Addresses = Prelude.pure newValue, ..}
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