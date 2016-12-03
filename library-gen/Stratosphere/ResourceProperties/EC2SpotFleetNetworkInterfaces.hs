{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html

module Stratosphere.ResourceProperties.EC2SpotFleetNetworkInterfaces where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.EC2SpotFleetInstanceIpv6Address
import Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddresses

-- | Full data type definition for EC2SpotFleetNetworkInterfaces. See
-- | 'ec2SpotFleetNetworkInterfaces' for a more convenient constructor.
data EC2SpotFleetNetworkInterfaces =
  EC2SpotFleetNetworkInterfaces
  { _eC2SpotFleetNetworkInterfacesAssociatePublicIpAddress :: Maybe (Val Bool')
  , _eC2SpotFleetNetworkInterfacesDeleteOnTermination :: Maybe (Val Bool')
  , _eC2SpotFleetNetworkInterfacesDescription :: Maybe (Val Text)
  , _eC2SpotFleetNetworkInterfacesDeviceIndex :: Val Integer'
  , _eC2SpotFleetNetworkInterfacesGroups :: Maybe [Val Text]
  , _eC2SpotFleetNetworkInterfacesIpv6AddressCount :: Maybe (Val Integer')
  , _eC2SpotFleetNetworkInterfacesIpv6Addresses :: Maybe EC2SpotFleetInstanceIpv6Address
  , _eC2SpotFleetNetworkInterfacesNetworkInterfaceId :: Maybe (Val Text)
  , _eC2SpotFleetNetworkInterfacesPrivateIpAddresses :: Maybe [EC2SpotFleetPrivateIpAddresses]
  , _eC2SpotFleetNetworkInterfacesSecondaryPrivateIpAddressCount :: Maybe (Val Integer')
  , _eC2SpotFleetNetworkInterfacesSubnetId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2SpotFleetNetworkInterfaces where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON EC2SpotFleetNetworkInterfaces where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetNetworkInterfaces' containing required
-- | fields as arguments.
ec2SpotFleetNetworkInterfaces
  :: Val Integer' -- ^ 'ecsfniDeviceIndex'
  -> EC2SpotFleetNetworkInterfaces
ec2SpotFleetNetworkInterfaces deviceIndexarg =
  EC2SpotFleetNetworkInterfaces
  { _eC2SpotFleetNetworkInterfacesAssociatePublicIpAddress = Nothing
  , _eC2SpotFleetNetworkInterfacesDeleteOnTermination = Nothing
  , _eC2SpotFleetNetworkInterfacesDescription = Nothing
  , _eC2SpotFleetNetworkInterfacesDeviceIndex = deviceIndexarg
  , _eC2SpotFleetNetworkInterfacesGroups = Nothing
  , _eC2SpotFleetNetworkInterfacesIpv6AddressCount = Nothing
  , _eC2SpotFleetNetworkInterfacesIpv6Addresses = Nothing
  , _eC2SpotFleetNetworkInterfacesNetworkInterfaceId = Nothing
  , _eC2SpotFleetNetworkInterfacesPrivateIpAddresses = Nothing
  , _eC2SpotFleetNetworkInterfacesSecondaryPrivateIpAddressCount = Nothing
  , _eC2SpotFleetNetworkInterfacesSubnetId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-associatepublicipaddress
ecsfniAssociatePublicIpAddress :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Bool'))
ecsfniAssociatePublicIpAddress = lens _eC2SpotFleetNetworkInterfacesAssociatePublicIpAddress (\s a -> s { _eC2SpotFleetNetworkInterfacesAssociatePublicIpAddress = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-deleteontermination
ecsfniDeleteOnTermination :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Bool'))
ecsfniDeleteOnTermination = lens _eC2SpotFleetNetworkInterfacesDeleteOnTermination (\s a -> s { _eC2SpotFleetNetworkInterfacesDeleteOnTermination = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-description
ecsfniDescription :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Text))
ecsfniDescription = lens _eC2SpotFleetNetworkInterfacesDescription (\s a -> s { _eC2SpotFleetNetworkInterfacesDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-deviceindex
ecsfniDeviceIndex :: Lens' EC2SpotFleetNetworkInterfaces (Val Integer')
ecsfniDeviceIndex = lens _eC2SpotFleetNetworkInterfacesDeviceIndex (\s a -> s { _eC2SpotFleetNetworkInterfacesDeviceIndex = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-groups
ecsfniGroups :: Lens' EC2SpotFleetNetworkInterfaces (Maybe [Val Text])
ecsfniGroups = lens _eC2SpotFleetNetworkInterfacesGroups (\s a -> s { _eC2SpotFleetNetworkInterfacesGroups = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-ipv6addresscount
ecsfniIpv6AddressCount :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Integer'))
ecsfniIpv6AddressCount = lens _eC2SpotFleetNetworkInterfacesIpv6AddressCount (\s a -> s { _eC2SpotFleetNetworkInterfacesIpv6AddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-ipv6addresses
ecsfniIpv6Addresses :: Lens' EC2SpotFleetNetworkInterfaces (Maybe EC2SpotFleetInstanceIpv6Address)
ecsfniIpv6Addresses = lens _eC2SpotFleetNetworkInterfacesIpv6Addresses (\s a -> s { _eC2SpotFleetNetworkInterfacesIpv6Addresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-networkinterfaceid
ecsfniNetworkInterfaceId :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Text))
ecsfniNetworkInterfaceId = lens _eC2SpotFleetNetworkInterfacesNetworkInterfaceId (\s a -> s { _eC2SpotFleetNetworkInterfacesNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-privateipaddresses
ecsfniPrivateIpAddresses :: Lens' EC2SpotFleetNetworkInterfaces (Maybe [EC2SpotFleetPrivateIpAddresses])
ecsfniPrivateIpAddresses = lens _eC2SpotFleetNetworkInterfacesPrivateIpAddresses (\s a -> s { _eC2SpotFleetNetworkInterfacesPrivateIpAddresses = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-secondaryprivateipaddresscount
ecsfniSecondaryPrivateIpAddressCount :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Integer'))
ecsfniSecondaryPrivateIpAddressCount = lens _eC2SpotFleetNetworkInterfacesSecondaryPrivateIpAddressCount (\s a -> s { _eC2SpotFleetNetworkInterfacesSecondaryPrivateIpAddressCount = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces.html#cfn-ec2-spotfleet-networkinterfaces-subnetid
ecsfniSubnetId :: Lens' EC2SpotFleetNetworkInterfaces (Maybe (Val Text))
ecsfniSubnetId = lens _eC2SpotFleetNetworkInterfacesSubnetId (\s a -> s { _eC2SpotFleetNetworkInterfacesSubnetId = a })
