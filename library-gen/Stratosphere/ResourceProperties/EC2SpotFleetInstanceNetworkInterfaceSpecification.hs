{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html

module Stratosphere.ResourceProperties.EC2SpotFleetInstanceNetworkInterfaceSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetInstanceIpv6Address
import Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddressSpecification

-- | Full data type definition for
-- EC2SpotFleetInstanceNetworkInterfaceSpecification. See
-- 'ec2SpotFleetInstanceNetworkInterfaceSpecification' for a more convenient
-- constructor.
data EC2SpotFleetInstanceNetworkInterfaceSpecification =
  EC2SpotFleetInstanceNetworkInterfaceSpecification
  { _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress :: Maybe (Val Bool')
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination :: Maybe (Val Bool')
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription :: Maybe (Val Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex :: Maybe (Val Integer')
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups :: Maybe (ValList Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount :: Maybe (Val Integer')
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses :: Maybe [EC2SpotFleetInstanceIpv6Address]
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId :: Maybe (Val Text)
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses :: Maybe [EC2SpotFleetPrivateIpAddressSpecification]
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount :: Maybe (Val Integer')
  , _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId :: Maybe (Val Text)
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetInstanceNetworkInterfaceSpecification where
  toJSON EC2SpotFleetInstanceNetworkInterfaceSpecification{..} =
    object $
    catMaybes
    [ ("AssociatePublicIpAddress" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress
    , ("DeleteOnTermination" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination
    , ("Description" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription
    , ("DeviceIndex" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex
    , ("Groups" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups
    , ("Ipv6AddressCount" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6AddressCount
    , ("Ipv6Addresses" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationIpv6Addresses
    , ("NetworkInterfaceId" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationNetworkInterfaceId
    , ("PrivateIpAddresses" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationPrivateIpAddresses
    , ("SecondaryPrivateIpAddressCount" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount
    , ("SubnetId" .=) <$> _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId
    ]

instance FromJSON EC2SpotFleetInstanceNetworkInterfaceSpecification where
  parseJSON (Object obj) =
    EC2SpotFleetInstanceNetworkInterfaceSpecification <$>
      obj .:? "AssociatePublicIpAddress" <*>
      obj .:? "DeleteOnTermination" <*>
      obj .:? "Description" <*>
      obj .:? "DeviceIndex" <*>
      obj .:? "Groups" <*>
      obj .:? "Ipv6AddressCount" <*>
      obj .:? "Ipv6Addresses" <*>
      obj .:? "NetworkInterfaceId" <*>
      obj .:? "PrivateIpAddresses" <*>
      obj .:? "SecondaryPrivateIpAddressCount" <*>
      obj .:? "SubnetId"
  parseJSON _ = mempty

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
ecsfinisAssociatePublicIpAddress :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Bool'))
ecsfinisAssociatePublicIpAddress = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deleteontermination
ecsfinisDeleteOnTermination :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Bool'))
ecsfinisDeleteOnTermination = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-description
ecsfinisDescription :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Text))
ecsfinisDescription = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-deviceindex
ecsfinisDeviceIndex :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer'))
ecsfinisDeviceIndex = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-groups
ecsfinisGroups :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (ValList Text))
ecsfinisGroups = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-ipv6addresscount
ecsfinisIpv6AddressCount :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer'))
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
ecsfinisSecondaryPrivateIpAddressCount :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Integer'))
ecsfinisSecondaryPrivateIpAddressCount = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-instancenetworkinterfacespecification-subnetid
ecsfinisSubnetId :: Lens' EC2SpotFleetInstanceNetworkInterfaceSpecification (Maybe (Val Text))
ecsfinisSubnetId = lens _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId (\s a -> s { _eC2SpotFleetInstanceNetworkInterfaceSpecificationSubnetId = a })
