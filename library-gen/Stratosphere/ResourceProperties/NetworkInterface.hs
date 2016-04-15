{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}



module Stratosphere.ResourceProperties.NetworkInterface where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.PrivateIpAddressSpecification

-- | Full data type definition for NetworkInterface. See 'networkInterface'
-- for a more convenient constructor.
data NetworkInterface =
  NetworkInterface
  { _networkInterfaceAssociatePublicIpAddress :: Maybe (Val Bool')
  , _networkInterfaceDeleteOnTermination :: Maybe (Val Bool')
  , _networkInterfaceDescription :: Maybe (Val Text)
  , _networkInterfaceDeviceIndex :: Val Text
  , _networkInterfaceGroupSet :: Maybe [Val Text]
  , _networkInterfaceNetworkInterfaceId :: Maybe (Val Text)
  , _networkInterfacePrivateIpAddress :: Maybe (Val Text)
  , _networkInterfacePrivateIpAddresses :: Maybe [PrivateIpAddressSpecification]
  , _networkInterfaceSecondaryPrivateIpAddressCount :: Maybe (Val Integer')
  , _networkInterfaceSubnetId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON NetworkInterface where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

instance FromJSON NetworkInterface where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 17, omitNothingFields = True }

-- | Constructor for 'NetworkInterface' containing required fields as
-- arguments.
networkInterface
  :: Val Text -- ^ 'niDeviceIndex'
  -> NetworkInterface
networkInterface deviceIndexarg =
  NetworkInterface
  { _networkInterfaceAssociatePublicIpAddress = Nothing
  , _networkInterfaceDeleteOnTermination = Nothing
  , _networkInterfaceDescription = Nothing
  , _networkInterfaceDeviceIndex = deviceIndexarg
  , _networkInterfaceGroupSet = Nothing
  , _networkInterfaceNetworkInterfaceId = Nothing
  , _networkInterfacePrivateIpAddress = Nothing
  , _networkInterfacePrivateIpAddresses = Nothing
  , _networkInterfaceSecondaryPrivateIpAddressCount = Nothing
  , _networkInterfaceSubnetId = Nothing
  }

-- | Indicates whether the network interface receives a public IP address. You
-- can associate a public IP address with a network interface only if it has a
-- device index of eth0 and if it is a new network interface (not an existing
-- one). In other words, if you specify true, don't specify a network
-- interface ID. For more information, see Amazon EC2 Instance IP Addressing.
niAssociatePublicIpAddress :: Lens' NetworkInterface (Maybe (Val Bool'))
niAssociatePublicIpAddress = lens _networkInterfaceAssociatePublicIpAddress (\s a -> s { _networkInterfaceAssociatePublicIpAddress = a })

-- | Whether to delete the network interface when the instance terminates.
niDeleteOnTermination :: Lens' NetworkInterface (Maybe (Val Bool'))
niDeleteOnTermination = lens _networkInterfaceDeleteOnTermination (\s a -> s { _networkInterfaceDeleteOnTermination = a })

-- | The description of this network interface.
niDescription :: Lens' NetworkInterface (Maybe (Val Text))
niDescription = lens _networkInterfaceDescription (\s a -> s { _networkInterfaceDescription = a })

-- | The network interface's position in the attachment order.
niDeviceIndex :: Lens' NetworkInterface (Val Text)
niDeviceIndex = lens _networkInterfaceDeviceIndex (\s a -> s { _networkInterfaceDeviceIndex = a })

-- | A list of security group IDs associated with this network interface.
niGroupSet :: Lens' NetworkInterface (Maybe [Val Text])
niGroupSet = lens _networkInterfaceGroupSet (\s a -> s { _networkInterfaceGroupSet = a })

-- | An existing network interface ID.
niNetworkInterfaceId :: Lens' NetworkInterface (Maybe (Val Text))
niNetworkInterfaceId = lens _networkInterfaceNetworkInterfaceId (\s a -> s { _networkInterfaceNetworkInterfaceId = a })

-- | Assigns a single private IP address to the network interface, which is
-- used as the primary private IP address. If you want to specify multiple
-- private IP address, use the PrivateIpAddresses property.
niPrivateIpAddress :: Lens' NetworkInterface (Maybe (Val Text))
niPrivateIpAddress = lens _networkInterfacePrivateIpAddress (\s a -> s { _networkInterfacePrivateIpAddress = a })

-- | Assigns a list of private IP addresses to the network interface. You can
-- specify a primary private IP address by setting the value of the Primary
-- property to true in the PrivateIpAddressSpecification property. If you want
-- Amazon EC2 to automatically assign private IP addresses, use the
-- SecondaryPrivateIpCount property and do not specify this property. For
-- information about the maximum number of private IP addresses, see Private
-- IP Addresses Per ENI Per Instance Type in the Amazon EC2 User Guide for
-- Linux Instances.
niPrivateIpAddresses :: Lens' NetworkInterface (Maybe [PrivateIpAddressSpecification])
niPrivateIpAddresses = lens _networkInterfacePrivateIpAddresses (\s a -> s { _networkInterfacePrivateIpAddresses = a })

-- | The number of secondary private IP addresses that Amazon EC2 auto assigns
-- to the network interface. Amazon EC2 uses the value of the PrivateIpAddress
-- property as the primary private IP address. If you don't specify that
-- property, Amazon EC2 auto assigns both the primary and secondary private IP
-- addresses. If you want to specify your own list of private IP addresses,
-- use the PrivateIpAddresses property and do not specify this property. For
-- information about the maximum number of private IP addresses, see Private
-- IP Addresses Per ENI Per Instance Type in the Amazon EC2 User Guide for
-- Linux Instances.
niSecondaryPrivateIpAddressCount :: Lens' NetworkInterface (Maybe (Val Integer'))
niSecondaryPrivateIpAddressCount = lens _networkInterfaceSecondaryPrivateIpAddressCount (\s a -> s { _networkInterfaceSecondaryPrivateIpAddressCount = a })

-- | The ID of the subnet to associate with the network interface.
niSubnetId :: Lens' NetworkInterface (Maybe (Val Text))
niSubnetId = lens _networkInterfaceSubnetId (\s a -> s { _networkInterfaceSubnetId = a })