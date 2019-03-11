{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html

module Stratosphere.ResourceProperties.EC2SpotFleetInstanceNetworkInterfaceSpecification where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.EC2SpotFleetInstanceIpv6Address
import Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddressSpecification

-- | Full data type definition for
-- EC2SpotFleetInstanceNetworkInterfaceSpecification. See
-- 'ec2SpotFleetInstanceNetworkInterfaceSpecification' for a more convenient
-- constructor.
data EC2SpotFleetInstanceNetworkInterfaceSpecification =
  EC2SpotFleetInstanceNetworkInterfaceSpecification
  { _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress :: Maybe (Val Bool)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination :: Maybe (Val Bool)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription :: Maybe (Val Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex :: Maybe (Val Integer)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups :: Maybe (ValList Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount :: Maybe (Val Integer)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses :: Maybe [EC2SpotFleetInstanceIpv6Address]
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId :: Maybe (Val Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses :: Maybe [EC2SpotFleetPrivateIpAddressSpecification]
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount :: Maybe (Val Integer)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetInstanceNetworkInterfaceSpecification where
  toJSON EC2SpotFleetInstanceNetworkInterfaceSpecification{..} =
    object $
    catMaybes
    [ fmap (("AssociatePublicIpAddress",) . toJSON . fmap Bool') _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress
    , fmap (("DeleteOnTermination",) . toJSON . fmap Bool') _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination
    , fmap (("Description",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription
    , fmap (("DeviceIndex",) . toJSON . fmap Integer') _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex
    , fmap (("Groups",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups
    , fmap (("Ipv6AddressCount",) . toJSON . fmap Integer') _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount
    , fmap (("Ipv6Addresses",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses
    , fmap (("NetworkInterfaceId",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId
    , fmap (("PrivateIpAddresses",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses
    , fmap (("SecondaryPrivateIpAddressCount",) . toJSON . fmap Integer') _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount
    , fmap (("SubnetId",) . toJSON) _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId
    ]

-- | Constructor for 'EC2SpotFleetInstanceNetworkInterfaceSpecification'
-- containing required fields as arguments.
ec2SpotFleetInstanceNetworkInterfaceSpecification
  :: EC2SpotFleetInstanceNetworkInterfaceSpecification
ec2SpotFleetInstanceNetworkInterfaceSpecification  =
  EC2SpotFleetInstanceNetworkInterfaceSpecification
  { _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount = Nothing
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-associatepublicipaddress
ecsfinisAssociatePublicIpAddress :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Bool))
ecsfinisAssociatePublicIpAddress = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deleteontermination
ecsfinisDeleteOnTermination :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Bool))
ecsfinisDeleteOnTermination = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-description
ecsfinisDescription :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Text))
ecsfinisDescription = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deviceindex
ecsfinisDeviceIndex :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer))
ecsfinisDeviceIndex = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-groups
ecsfinisGroups :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (ValList Text))
ecsfinisGroups = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresscount
ecsfinisIpv6AddressCount :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer))
ecsfinisIpv6AddressCount = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresses
ecsfinisIpv6Addresses :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe [EC2SpotFleetInstanceIpv6Address])
ecsfinisIpv6Addresses = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-networkinterfaceid
ecsfinisNetworkInterfaceId :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Text))
ecsfinisNetworkInterfaceId = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-privateipaddresses
ecsfinisPrivateIpAddresses :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe [EC2SpotFleetPrivateIpAddressSpecification])
ecsfinisPrivateIpAddresses = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-secondaryprivateipaddresscount
ecsfinisSecondaryPrivateIpAddressCount :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer))
ecsfinisSecondaryPrivateIpAddressCount = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-subnetid
ecsfinisSubnetId :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Text))
ecsfinisSubnetId = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId = a })
