{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html

module Stratosphere.ResourceProperties.EC2NetworkInterfacePrivateIpAddressSpecification where

import Control.Lens hiding ((.=))
import Data.Aeson
import Data.Maybe (catMaybes)
import Data.Monoid (mempty)
import Data.Text

import Stratosphere.Values


-- | Full data type definition for
-- EC2NetworkInterfacePrivateIpAddressSpecification. See
-- 'ec2NetworkInterfacePrivateIpAddressSpecification' for a more convenient
-- constructor.
data EC2NetworkInterfacePrivateIpAddressSpecification =
  EC2NetworkInterfacePrivateIpAddressSpecification
  { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary :: Val Bool
  , _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress :: Val Text
  } deriving (Show, Eq)

instance ToJSON EC2NetworkInterfacePrivateIpAddressSpecification where
  toJSON EC2NetworkInterfacePrivateIpAddressSpecification{..} =
    object $
    catMaybes
    [ (Just . ("Primary",) . toJSON . fmap Bool') _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary
    , (Just . ("PrivateIpAddress",) . toJSON) _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress
    ]

instance FromJSON EC2NetworkInterfacePrivateIpAddressSpecification where
  parseJSON (Object obj) =
    EC2NetworkInterfacePrivateIpAddressSpecification <$>
      fmap (fmap unBool') (obj .: "Primary") <*>
      (obj .: "PrivateIpAddress")
  parseJSON _ = mempty

-- | Constructor for 'EC2NetworkInterfacePrivateIpAddressSpecification'
-- containing required fields as arguments.
ec2NetworkInterfacePrivateIpAddressSpecification
  :: Val Bool -- ^ 'ecnipiasPrimary'
  -> Val Text -- ^ 'ecnipiasPrivateIpAddress'
  -> EC2NetworkInterfacePrivateIpAddressSpecification
ec2NetworkInterfacePrivateIpAddressSpecification primaryarg privateIpAddressarg =
  EC2NetworkInterfacePrivateIpAddressSpecification
  { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary = primaryarg
  , _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress = privateIpAddressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary
ecnipiasPrimary :: Lens' EC2NetworkInterfacePrivateIpAddressSpecification (Val Bool)
ecnipiasPrimary = lens _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary (\s a -> s { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress
ecnipiasPrivateIpAddress :: Lens' EC2NetworkInterfacePrivateIpAddressSpecification (Val Text)
ecnipiasPrivateIpAddress = lens _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress (\s a -> s { _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress = a })
