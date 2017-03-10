{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html

module Stratosphere.ResourceProperties.EC2InstanceInstanceIpv6Address where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for EC2InstanceInstanceIpv6Address. See
-- 'ec2InstanceInstanceIpv6Address' for a more convenient constructor.
data EC2InstanceInstanceIpv6Address =
  EC2InstanceInstanceIpv6Address
  { _eC2InstanceInstanceIpv6AddressIpv6Address :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2InstanceInstanceIpv6Address where
  toJSON EC2InstanceInstanceIpv6Address{..} =
    object $
    catMaybes
    [ Just ("Ipv6Address" .= _eC2InstanceInstanceIpv6AddressIpv6Address)
    ]

instance FromJSON EC2InstanceInstanceIpv6Address where
  parseJSON (Object obj) =
    EC2InstanceInstanceIpv6Address <$>
      obj .: "Ipv6Address"
  parseJSON _ = mempty

-- | Constructor for 'EC2InstanceInstanceIpv6Address' containing required
-- fields as arguments.
ec2InstanceInstanceIpv6Address
  :: Val Text -- ^ 'eciiiaIpv6Address'
  -> EC2InstanceInstanceIpv6Address
ec2InstanceInstanceIpv6Address ipv6Addressarg =
  EC2InstanceInstanceIpv6Address
  { _eC2InstanceInstanceIpv6AddressIpv6Address = ipv6Addressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-instance-instanceipv6address.html#cfn-ec2-instance-instanceipv6address-ipv6address
eciiiaIpv6Address :: Lens' EC2InstanceInstanceIpv6Address (Val Text)
eciiiaIpv6Address = lens _eC2InstanceInstanceIpv6AddressIpv6Address (\s a -> s { _eC2InstanceInstanceIpv6AddressIpv6Address = a })
