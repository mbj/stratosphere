{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instanceipv6address.html

module Stratosphere.ResourceProperties.EC2SpotFleetInstanceIpv6Address where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetInstanceIpv6Address. See
-- 'ec2SpotFleetInstanceIpv6Address' for a more convenient constructor.
data EC2SpotFleetInstanceIpv6Address =
  EC2SpotFleetInstanceIpv6Address
  { _eC2SpotFleetInstanceIpv6AddressIpv6Address :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetInstanceIpv6Address where
  toJSON EC2SpotFleetInstanceIpv6Address{..} =
    object $
    catMaybes
    [ (Just . ("Ipv6Address",) . toJSON) _eC2SpotFleetInstanceIpv6AddressIpv6Address
    ]

-- | Constructor for 'EC2SpotFleetInstanceIpv6Address' containing required
-- fields as arguments.
ec2SpotFleetInstanceIpv6Address
  :: Val Text -- ^ 'ecsfiiaIpv6Address'
  -> EC2SpotFleetInstanceIpv6Address
ec2SpotFleetInstanceIpv6Address ipv6Addressarg =
  EC2SpotFleetInstanceIpv6Address
  { _eC2SpotFleetInstanceIpv6AddressIpv6Address = ipv6Addressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-instanceipv6address.html#cfn-ec2-spotfleet-instanceipv6address-ipv6address
ecsfiiaIpv6Address :: Lens' EC2SpotFleetInstanceIpv6Address (Val Text)
ecsfiiaIpv6Address = lens _eC2SpotFleetInstanceIpv6AddressIpv6Address (\s a -> s { _eC2SpotFleetInstanceIpv6AddressIpv6Address = a })
