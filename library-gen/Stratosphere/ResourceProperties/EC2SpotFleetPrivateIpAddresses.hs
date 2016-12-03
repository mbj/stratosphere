{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html

module Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddresses where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetPrivateIpAddresses. See
-- | 'ec2SpotFleetPrivateIpAddresses' for a more convenient constructor.
data EC2SpotFleetPrivateIpAddresses =
  EC2SpotFleetPrivateIpAddresses
  { _eC2SpotFleetPrivateIpAddressesPrimary :: Maybe (Val Bool')
  , _eC2SpotFleetPrivateIpAddressesPrivateIpAddress :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2SpotFleetPrivateIpAddresses where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

instance FromJSON EC2SpotFleetPrivateIpAddresses where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 31, omitNothingFields = True }

-- | Constructor for 'EC2SpotFleetPrivateIpAddresses' containing required
-- | fields as arguments.
ec2SpotFleetPrivateIpAddresses
  :: Val Text -- ^ 'ecsfpiaPrivateIpAddress'
  -> EC2SpotFleetPrivateIpAddresses
ec2SpotFleetPrivateIpAddresses privateIpAddressarg =
  EC2SpotFleetPrivateIpAddresses
  { _eC2SpotFleetPrivateIpAddressesPrimary = Nothing
  , _eC2SpotFleetPrivateIpAddressesPrivateIpAddress = privateIpAddressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddresses-primary
ecsfpiaPrimary :: Lens' EC2SpotFleetPrivateIpAddresses (Maybe (Val Bool'))
ecsfpiaPrimary = lens _eC2SpotFleetPrivateIpAddressesPrimary (\s a -> s { _eC2SpotFleetPrivateIpAddressesPrimary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddresses-privateipaddress
ecsfpiaPrivateIpAddress :: Lens' EC2SpotFleetPrivateIpAddresses (Val Text)
ecsfpiaPrivateIpAddress = lens _eC2SpotFleetPrivateIpAddressesPrivateIpAddress (\s a -> s { _eC2SpotFleetPrivateIpAddressesPrivateIpAddress = a })
