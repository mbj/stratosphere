{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html

module Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddresses where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2SpotFleetPrivateIpAddresses. See
-- | 'ec2SpotFleetPrivateIpAddresses' for a more convenient constructor.
data EC2SpotFleetPrivateIpAddresses =
  EC2SpotFleetPrivateIpAddresses
  { _eC2SpotFleetPrivateIpAddressesPrimary :: Maybe (Val Bool')
  , _eC2SpotFleetPrivateIpAddressesPrivateIpAddress :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetPrivateIpAddresses where
  toJSON EC2SpotFleetPrivateIpAddresses{..} =
    object
    [ "Primary" .= _eC2SpotFleetPrivateIpAddressesPrimary
    , "PrivateIpAddress" .= _eC2SpotFleetPrivateIpAddressesPrivateIpAddress
    ]

instance FromJSON EC2SpotFleetPrivateIpAddresses where
  parseJSON (Object obj) =
    EC2SpotFleetPrivateIpAddresses <$>
      obj .: "Primary" <*>
      obj .: "PrivateIpAddress"
  parseJSON _ = mempty

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
