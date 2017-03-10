{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html

module Stratosphere.Resources.EC2NetworkInterface where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2NetworkInterfaceInstanceIpv6Address
import Stratosphere.ResourceProperties.EC2NetworkInterfacePrivateIpAddressSpecification
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2NetworkInterface. See
-- 'ec2NetworkInterface' for a more convenient constructor.
data EC2NetworkInterface =
  EC2NetworkInterface
  { _eC2NetworkInterfaceDescription :: Maybe (Val Text)
  , _eC2NetworkInterfaceGroupSet :: Maybe [Val Text]
  , _eC2NetworkInterfaceIpv6AddressCount :: Maybe (Val Integer')
  , _eC2NetworkInterfaceIpv6Addresses :: Maybe EC2NetworkInterfaceInstanceIpv6Address
  , _eC2NetworkInterfacePrivateIpAddress :: Maybe (Val Text)
  , _eC2NetworkInterfacePrivateIpAddresses :: Maybe [EC2NetworkInterfacePrivateIpAddressSpecification]
  , _eC2NetworkInterfaceSecondaryPrivateIpAddressCount :: Maybe (Val Integer')
  , _eC2NetworkInterfaceSourceDestCheck :: Maybe (Val Bool')
  , _eC2NetworkInterfaceSubnetId :: Val Text
  , _eC2NetworkInterfaceTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToJSON EC2NetworkInterface where
  toJSON EC2NetworkInterface{..} =
    object $
    catMaybes
    [ ("Description" .=) <$> _eC2NetworkInterfaceDescription
    , ("GroupSet" .=) <$> _eC2NetworkInterfaceGroupSet
    , ("Ipv6AddressCount" .=) <$> _eC2NetworkInterfaceIpv6AddressCount
    , ("Ipv6Addresses" .=) <$> _eC2NetworkInterfaceIpv6Addresses
    , ("PrivateIpAddress" .=) <$> _eC2NetworkInterfacePrivateIpAddress
    , ("PrivateIpAddresses" .=) <$> _eC2NetworkInterfacePrivateIpAddresses
    , ("SecondaryPrivateIpAddressCount" .=) <$> _eC2NetworkInterfaceSecondaryPrivateIpAddressCount
    , ("SourceDestCheck" .=) <$> _eC2NetworkInterfaceSourceDestCheck
    , Just ("SubnetId" .= _eC2NetworkInterfaceSubnetId)
    , ("Tags" .=) <$> _eC2NetworkInterfaceTags
    ]

instance FromJSON EC2NetworkInterface where
  parseJSON (Object obj) =
    EC2NetworkInterface <$>
      obj .:? "Description" <*>
      obj .:? "GroupSet" <*>
      obj .:? "Ipv6AddressCount" <*>
      obj .:? "Ipv6Addresses" <*>
      obj .:? "PrivateIpAddress" <*>
      obj .:? "PrivateIpAddresses" <*>
      obj .:? "SecondaryPrivateIpAddressCount" <*>
      obj .:? "SourceDestCheck" <*>
      obj .: "SubnetId" <*>
      obj .:? "Tags"
  parseJSON _ = mempty

-- | Constructor for 'EC2NetworkInterface' containing required fields as
-- arguments.
ec2NetworkInterface
  :: Val Text -- ^ 'ecniSubnetId'
  -> EC2NetworkInterface
ec2NetworkInterface subnetIdarg =
  EC2NetworkInterface
  { _eC2NetworkInterfaceDescription = Nothing
  , _eC2NetworkInterfaceGroupSet = Nothing
  , _eC2NetworkInterfaceIpv6AddressCount = Nothing
  , _eC2NetworkInterfaceIpv6Addresses = Nothing
  , _eC2NetworkInterfacePrivateIpAddress = Nothing
  , _eC2NetworkInterfacePrivateIpAddresses = Nothing
  , _eC2NetworkInterfaceSecondaryPrivateIpAddressCount = Nothing
  , _eC2NetworkInterfaceSourceDestCheck = Nothing
  , _eC2NetworkInterfaceSubnetId = subnetIdarg
  , _eC2NetworkInterfaceTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-description
ecniDescription :: Lens' EC2NetworkInterface (Maybe (Val Text))
ecniDescription = lens _eC2NetworkInterfaceDescription (\s a -> s { _eC2NetworkInterfaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-groupset
ecniGroupSet :: Lens' EC2NetworkInterface (Maybe [Val Text])
ecniGroupSet = lens _eC2NetworkInterfaceGroupSet (\s a -> s { _eC2NetworkInterfaceGroupSet = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-ec2-networkinterface-ipv6addresscount
ecniIpv6AddressCount :: Lens' EC2NetworkInterface (Maybe (Val Integer'))
ecniIpv6AddressCount = lens _eC2NetworkInterfaceIpv6AddressCount (\s a -> s { _eC2NetworkInterfaceIpv6AddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-ec2-networkinterface-ipv6addresses
ecniIpv6Addresses :: Lens' EC2NetworkInterface (Maybe EC2NetworkInterfaceInstanceIpv6Address)
ecniIpv6Addresses = lens _eC2NetworkInterfaceIpv6Addresses (\s a -> s { _eC2NetworkInterfaceIpv6Addresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-privateipaddress
ecniPrivateIpAddress :: Lens' EC2NetworkInterface (Maybe (Val Text))
ecniPrivateIpAddress = lens _eC2NetworkInterfacePrivateIpAddress (\s a -> s { _eC2NetworkInterfacePrivateIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-privateipaddresses
ecniPrivateIpAddresses :: Lens' EC2NetworkInterface (Maybe [EC2NetworkInterfacePrivateIpAddressSpecification])
ecniPrivateIpAddresses = lens _eC2NetworkInterfacePrivateIpAddresses (\s a -> s { _eC2NetworkInterfacePrivateIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-secondaryprivateipcount
ecniSecondaryPrivateIpAddressCount :: Lens' EC2NetworkInterface (Maybe (Val Integer'))
ecniSecondaryPrivateIpAddressCount = lens _eC2NetworkInterfaceSecondaryPrivateIpAddressCount (\s a -> s { _eC2NetworkInterfaceSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-sourcedestcheck
ecniSourceDestCheck :: Lens' EC2NetworkInterface (Maybe (Val Bool'))
ecniSourceDestCheck = lens _eC2NetworkInterfaceSourceDestCheck (\s a -> s { _eC2NetworkInterfaceSourceDestCheck = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-subnetid
ecniSubnetId :: Lens' EC2NetworkInterface (Val Text)
ecniSubnetId = lens _eC2NetworkInterfaceSubnetId (\s a -> s { _eC2NetworkInterfaceSubnetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-network-interface.html#cfn-awsec2networkinterface-tags
ecniTags :: Lens' EC2NetworkInterface (Maybe [Tag])
ecniTags = lens _eC2NetworkInterfaceTags (\s a -> s { _eC2NetworkInterfaceTags = a })
