
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html

module Stratosphere.ResourceProperties.EC2LaunchTemplateNetworkInterface where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2LaunchTemplateIpv6Add
import Stratosphere.ResourceProperties.EC2LaunchTemplatePrivateIpAdd

-- | Full data type definition for EC2LaunchTemplateNetworkInterface. See
-- 'ec2LaunchTemplateNetworkInterface' for a more convenient constructor.
data EC2LaunchTemplateNetworkInterface =
  EC2LaunchTemplateNetworkInterface
  { _eC2LaunchTemplateNetworkInterfaceAssociatePublicIpAddress :: Maybe (Val Bool)
  , _eC2LaunchTemplateNetworkInterfaceDeleteOnTermination :: Maybe (Val Bool)
  , _eC2LaunchTemplateNetworkInterfaceDescription :: Maybe (Val Text)
  , _eC2LaunchTemplateNetworkInterfaceDeviceIndex :: Maybe (Val Integer)
  , _eC2LaunchTemplateNetworkInterfaceGroups :: Maybe (ValList Text)
  , _eC2LaunchTemplateNetworkInterfaceInterfaceType :: Maybe (Val Text)
  , _eC2LaunchTemplateNetworkInterfaceIpv6AddressCount :: Maybe (Val Integer)
  , _eC2LaunchTemplateNetworkInterfaceIpv6Addresses :: Maybe [EC2LaunchTemplateIpv6Add]
  , _eC2LaunchTemplateNetworkInterfaceNetworkInterfaceId :: Maybe (Val Text)
  , _eC2LaunchTemplateNetworkInterfacePrivateIpAddress :: Maybe (Val Text)
  , _eC2LaunchTemplateNetworkInterfacePrivateIpAddresses :: Maybe [EC2LaunchTemplatePrivateIpAdd]
  , _eC2LaunchTemplateNetworkInterfaceSecondaryPrivateIpAddressCount :: Maybe (Val Integer)
  , _eC2LaunchTemplateNetworkInterfaceSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2LaunchTemplateNetworkInterface where
  toJSON EC2LaunchTemplateNetworkInterface{..} =
    object $
    catMaybes
    [ fmap (("AssociatePublicIpAddress",) . toJSON) _eC2LaunchTemplateNetworkInterfaceAssociatePublicIpAddress
    , fmap (("DeleteOnTermination",) . toJSON) _eC2LaunchTemplateNetworkInterfaceDeleteOnTermination
    , fmap (("Description",) . toJSON) _eC2LaunchTemplateNetworkInterfaceDescription
    , fmap (("DeviceIndex",) . toJSON) _eC2LaunchTemplateNetworkInterfaceDeviceIndex
    , fmap (("Groups",) . toJSON) _eC2LaunchTemplateNetworkInterfaceGroups
    , fmap (("InterfaceType",) . toJSON) _eC2LaunchTemplateNetworkInterfaceInterfaceType
    , fmap (("Ipv6AddressCount",) . toJSON) _eC2LaunchTemplateNetworkInterfaceIpv6AddressCount
    , fmap (("Ipv6Addresses",) . toJSON) _eC2LaunchTemplateNetworkInterfaceIpv6Addresses
    , fmap (("NetworkInterfaceId",) . toJSON) _eC2LaunchTemplateNetworkInterfaceNetworkInterfaceId
    , fmap (("PrivateIpAddress",) . toJSON) _eC2LaunchTemplateNetworkInterfacePrivateIpAddress
    , fmap (("PrivateIpAddresses",) . toJSON) _eC2LaunchTemplateNetworkInterfacePrivateIpAddresses
    , fmap (("SecondaryPrivateIpAddressCount",) . toJSON) _eC2LaunchTemplateNetworkInterfaceSecondaryPrivateIpAddressCount
    , fmap (("SubnetId",) . toJSON) _eC2LaunchTemplateNetworkInterfaceSubnetId
    ]

-- | Constructor for 'EC2LaunchTemplateNetworkInterface' containing required
-- fields as arguments.
ec2LaunchTemplateNetworkInterface
  :: EC2LaunchTemplateNetworkInterface
ec2LaunchTemplateNetworkInterface  =
  EC2LaunchTemplateNetworkInterface
  { _eC2LaunchTemplateNetworkInterfaceAssociatePublicIpAddress = Nothing
  , _eC2LaunchTemplateNetworkInterfaceDeleteOnTermination = Nothing
  , _eC2LaunchTemplateNetworkInterfaceDescription = Nothing
  , _eC2LaunchTemplateNetworkInterfaceDeviceIndex = Nothing
  , _eC2LaunchTemplateNetworkInterfaceGroups = Nothing
  , _eC2LaunchTemplateNetworkInterfaceInterfaceType = Nothing
  , _eC2LaunchTemplateNetworkInterfaceIpv6AddressCount = Nothing
  , _eC2LaunchTemplateNetworkInterfaceIpv6Addresses = Nothing
  , _eC2LaunchTemplateNetworkInterfaceNetworkInterfaceId = Nothing
  , _eC2LaunchTemplateNetworkInterfacePrivateIpAddress = Nothing
  , _eC2LaunchTemplateNetworkInterfacePrivateIpAddresses = Nothing
  , _eC2LaunchTemplateNetworkInterfaceSecondaryPrivateIpAddressCount = Nothing
  , _eC2LaunchTemplateNetworkInterfaceSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-associatepublicipaddress
ecltniAssociatePublicIpAddress :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Bool))
ecltniAssociatePublicIpAddress = lens _eC2LaunchTemplateNetworkInterfaceAssociatePublicIpAddress (\s a -> s { _eC2LaunchTemplateNetworkInterfaceAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deleteontermination
ecltniDeleteOnTermination :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Bool))
ecltniDeleteOnTermination = lens _eC2LaunchTemplateNetworkInterfaceDeleteOnTermination (\s a -> s { _eC2LaunchTemplateNetworkInterfaceDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-description
ecltniDescription :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Text))
ecltniDescription = lens _eC2LaunchTemplateNetworkInterfaceDescription (\s a -> s { _eC2LaunchTemplateNetworkInterfaceDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-deviceindex
ecltniDeviceIndex :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Integer))
ecltniDeviceIndex = lens _eC2LaunchTemplateNetworkInterfaceDeviceIndex (\s a -> s { _eC2LaunchTemplateNetworkInterfaceDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-groups
ecltniGroups :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (ValList Text))
ecltniGroups = lens _eC2LaunchTemplateNetworkInterfaceGroups (\s a -> s { _eC2LaunchTemplateNetworkInterfaceGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-interfacetype
ecltniInterfaceType :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Text))
ecltniInterfaceType = lens _eC2LaunchTemplateNetworkInterfaceInterfaceType (\s a -> s { _eC2LaunchTemplateNetworkInterfaceInterfaceType = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresscount
ecltniIpv6AddressCount :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Integer))
ecltniIpv6AddressCount = lens _eC2LaunchTemplateNetworkInterfaceIpv6AddressCount (\s a -> s { _eC2LaunchTemplateNetworkInterfaceIpv6AddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-ipv6addresses
ecltniIpv6Addresses :: Lens' EC2LaunchTemplateNetworkInterface (Maybe [EC2LaunchTemplateIpv6Add])
ecltniIpv6Addresses = lens _eC2LaunchTemplateNetworkInterfaceIpv6Addresses (\s a -> s { _eC2LaunchTemplateNetworkInterfaceIpv6Addresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-networkinterfaceid
ecltniNetworkInterfaceId :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Text))
ecltniNetworkInterfaceId = lens _eC2LaunchTemplateNetworkInterfaceNetworkInterfaceId (\s a -> s { _eC2LaunchTemplateNetworkInterfaceNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddress
ecltniPrivateIpAddress :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Text))
ecltniPrivateIpAddress = lens _eC2LaunchTemplateNetworkInterfacePrivateIpAddress (\s a -> s { _eC2LaunchTemplateNetworkInterfacePrivateIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-privateipaddresses
ecltniPrivateIpAddresses :: Lens' EC2LaunchTemplateNetworkInterface (Maybe [EC2LaunchTemplatePrivateIpAdd])
ecltniPrivateIpAddresses = lens _eC2LaunchTemplateNetworkInterfacePrivateIpAddresses (\s a -> s { _eC2LaunchTemplateNetworkInterfacePrivateIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-secondaryprivateipaddresscount
ecltniSecondaryPrivateIpAddressCount :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Integer))
ecltniSecondaryPrivateIpAddressCount = lens _eC2LaunchTemplateNetworkInterfaceSecondaryPrivateIpAddressCount (\s a -> s { _eC2LaunchTemplateNetworkInterfaceSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-launchtemplate-networkinterface.html#cfn-ec2-launchtemplate-networkinterface-subnetid
ecltniSubnetId :: Lens' EC2LaunchTemplateNetworkInterface (Maybe (Val Text))
ecltniSubnetId = lens _eC2LaunchTemplateNetworkInterfaceSubnetId (\s a -> s { _eC2LaunchTemplateNetworkInterfaceSubnetId = a })
