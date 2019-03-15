{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html

module Stratosphere.ResourceProperties.EC2SpotFleetPrivateIpAddressSpecification where

import Stratosphere.ResourceImports


-- | Full data type definition for EC2SpotFleetPrivateIpAddressSpecification.
-- See 'ec2SpotFleetPrivateIpAddressSpecification' for a more convenient
-- constructor.
data EC2SpotFleetPrivateIpAddressSpecification =
  EC2SpotFleetPrivateIpAddressSpecification
  { _eC2SpotFleetPrivateIpAddressSpecificationPrimary :: Maybe (Val Bool)
  , _eC2SpotFleetPrivateIpAddressSpecificationPrivateIpAddress :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2SpotFleetPrivateIpAddressSpecification where
  toJSON EC2SpotFleetPrivateIpAddressSpecification{..} =
    object $
    catMaybes
    [ fmap (("Primary",) . toJSON) _eC2SpotFleetPrivateIpAddressSpecificationPrimary
    , (Just . ("PrivateIpAddress",) . toJSON) _eC2SpotFleetPrivateIpAddressSpecificationPrivateIpAddress
    ]

-- | Constructor for 'EC2SpotFleetPrivateIpAddressSpecification' containing
-- required fields as arguments.
ec2SpotFleetPrivateIpAddressSpecification
  :: Val Text -- ^ 'ecsfpiasPrivateIpAddress'
  -> EC2SpotFleetPrivateIpAddressSpecification
ec2SpotFleetPrivateIpAddressSpecification privateIpAddressarg =
  EC2SpotFleetPrivateIpAddressSpecification
  { _eC2SpotFleetPrivateIpAddressSpecificationPrimary = Nothing
  , _eC2SpotFleetPrivateIpAddressSpecificationPrivateIpAddress = privateIpAddressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddressspecification-primary
ecsfpiasPrimary :: Lens' EC2SpotFleetPrivateIpAddressSpecification (Maybe (Val Bool))
ecsfpiasPrimary = lens _eC2SpotFleetPrivateIpAddressSpecificationPrimary (\s a -> s { _eC2SpotFleetPrivateIpAddressSpecificationPrimary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-spotfleet-spotfleetrequestconfigdata-launchspecifications-networkinterfaces-privateipaddresses.html#cfn-ec2-spotfleet-privateipaddressspecification-privateipaddress
ecsfpiasPrivateIpAddress :: Lens' EC2SpotFleetPrivateIpAddressSpecification (Val Text)
ecsfpiasPrivateIpAddress = lens _eC2SpotFleetPrivateIpAddressSpecificationPrivateIpAddress (\s a -> s { _eC2SpotFleetPrivateIpAddressSpecificationPrivateIpAddress = a })
