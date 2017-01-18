{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html

module Stratosphere.ResourceProperties.EC2InstanceNetworkInterface where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2InstanceInstanceIpv6Address
import Stratosphere.ResourceProperties.EC2InstancePrivateIpAddressSpecification

-- | Full data type definition for EC2InstanceNetworkInterface. See
-- | 'ec2InstanceNetworkInterface' for a more convenient constructor.
data EC2InstanceNetworkInterface =
  EC2InstanceNetworkInterface
  { _eC2InstanceNetworkInterfaceAssociatePublicIpAddress :: Maybe (Val Bool')
  , _eC2InstanceNetworkInterfaceDeleteOnTermination :: Maybe (Val Bool')
  , _eC2InstanceNetworkInterfaceDescription :: Maybe (Val Text)
  , _eC2InstanceNetworkInterfaceDeviceIndex :: Val Text
  , _eC2InstanceNetworkInterfaceGroupSet :: Maybe [Val Text]
  , _eC2InstanceNetworkInterfaceIpv6AddressCount :: Maybe (Val Integer')
  , _eC2InstanceNetworkInterfaceIpv6Addresses :: Maybe [EC2InstanceInstanceIpv6Address]
  , _eC2InstanceNetworkInterfaceNetworkInterfaceId :: Maybe (Val Text)
  , _eC2InstanceNetworkInterfacePrivateIpAddress :: Maybe (Val Text)
  , _eC2InstanceNetworkInterfacePrivateIpAddresses :: Maybe [EC2InstancePrivateIpAddressSpecification]
  , _eC2InstanceNetworkInterfaceSecondaryPrivateIpAddressCount :: Maybe (Val Integer')
  , _eC2InstanceNetworkInterfaceSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq, Generic)

instance ToJSON EC2InstanceNetworkInterface where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

instance FromJSON EC2InstanceNetworkInterface where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 28, omitNothingFields = True }

-- | Constructor for 'EC2InstanceNetworkInterface' containing required fields
-- | as arguments.
ec2InstanceNetworkInterface
  :: Val Text -- ^ 'eciniDeviceIndex'
  -> EC2InstanceNetworkInterface
ec2InstanceNetworkInterface deviceIndexarg =
  EC2InstanceNetworkInterface
  { _eC2InstanceNetworkInterfaceAssociatePublicIpAddress = Nothing
  , _eC2InstanceNetworkInterfaceDeleteOnTermination = Nothing
  , _eC2InstanceNetworkInterfaceDescription = Nothing
  , _eC2InstanceNetworkInterfaceDeviceIndex = deviceIndexarg
  , _eC2InstanceNetworkInterfaceGroupSet = Nothing
  , _eC2InstanceNetworkInterfaceIpv6AddressCount = Nothing
  , _eC2InstanceNetworkInterfaceIpv6Addresses = Nothing
  , _eC2InstanceNetworkInterfaceNetworkInterfaceId = Nothing
  , _eC2InstanceNetworkInterfacePrivateIpAddress = Nothing
  , _eC2InstanceNetworkInterfacePrivateIpAddresses = Nothing
  , _eC2InstanceNetworkInterfaceSecondaryPrivateIpAddressCount = Nothing
  , _eC2InstanceNetworkInterfaceSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-associatepubip
eciniAssociatePublicIpAddress :: Lens' EC2InstanceNetworkInterface (Maybe (Val Bool'))
eciniAssociatePublicIpAddress = lens _eC2InstanceNetworkInterfaceAssociatePublicIpAddress (\s a -> s { _eC2InstanceNetworkInterfaceAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-delete
eciniDeleteOnTermination :: Lens' EC2InstanceNetworkInterface (Maybe (Val Bool'))
eciniDeleteOnTermination = lens _eC2InstanceNetworkInterfaceDeleteOnTermination (\s a -> s { _eC2InstanceNetworkInterfaceDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-description
eciniDescription :: Lens' EC2InstanceNetworkInterface (Maybe (Val Text))
eciniDescription = lens _eC2InstanceNetworkInterfaceDescription (\s a -> s { _eC2InstanceNetworkInterfaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-deviceindex
eciniDeviceIndex :: Lens' EC2InstanceNetworkInterface (Val Text)
eciniDeviceIndex = lens _eC2InstanceNetworkInterfaceDeviceIndex (\s a -> s { _eC2InstanceNetworkInterfaceDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-groupset
eciniGroupSet :: Lens' EC2InstanceNetworkInterface (Maybe [Val Text])
eciniGroupSet = lens _eC2InstanceNetworkInterfaceGroupSet (\s a -> s { _eC2InstanceNetworkInterfaceGroupSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresscount
eciniIpv6AddressCount :: Lens' EC2InstanceNetworkInterface (Maybe (Val Integer'))
eciniIpv6AddressCount = lens _eC2InstanceNetworkInterfaceIpv6AddressCount (\s a -> s { _eC2InstanceNetworkInterfaceIpv6AddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#cfn-ec2-instance-networkinterface-ipv6addresses
eciniIpv6Addresses :: Lens' EC2InstanceNetworkInterface (Maybe [EC2InstanceInstanceIpv6Address])
eciniIpv6Addresses = lens _eC2InstanceNetworkInterfaceIpv6Addresses (\s a -> s { _eC2InstanceNetworkInterfaceIpv6Addresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-network-iface
eciniNetworkInterfaceId :: Lens' EC2InstanceNetworkInterface (Maybe (Val Text))
eciniNetworkInterfaceId = lens _eC2InstanceNetworkInterfaceNetworkInterfaceId (\s a -> s { _eC2InstanceNetworkInterfaceNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddress
eciniPrivateIpAddress :: Lens' EC2InstanceNetworkInterface (Maybe (Val Text))
eciniPrivateIpAddress = lens _eC2InstanceNetworkInterfacePrivateIpAddress (\s a -> s { _eC2InstanceNetworkInterfacePrivateIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-privateipaddresses
eciniPrivateIpAddresses :: Lens' EC2InstanceNetworkInterface (Maybe [EC2InstancePrivateIpAddressSpecification])
eciniPrivateIpAddresses = lens _eC2InstanceNetworkInterfacePrivateIpAddresses (\s a -> s { _eC2InstanceNetworkInterfacePrivateIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-secondprivateip
eciniSecondaryPrivateIpAddressCount :: Lens' EC2InstanceNetworkInterface (Maybe (Val Integer'))
eciniSecondaryPrivateIpAddressCount = lens _eC2InstanceNetworkInterfaceSecondaryPrivateIpAddressCount (\s a -> s { _eC2InstanceNetworkInterfaceSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-iface-embedded.html#aws-properties-ec2-network-iface-embedded-subnetid
eciniSubnetId :: Lens' EC2InstanceNetworkInterface (Maybe (Val Text))
eciniSubnetId = lens _eC2InstanceNetworkInterfaceSubnetId (\s a -> s { _eC2InstanceNetworkInterfaceSubnetId = a })
