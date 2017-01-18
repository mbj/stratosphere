{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html

module Stratosphere.ResourceProperties.EC2NetworkInterfacePrivateIpAddressSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for
-- | EC2NetworkInterfacePrivateIpAddressSpecification. See
-- | 'ec2NetworkInterfacePrivateIpAddressSpecification' for a more convenient
-- | constructor.
data EC2NetworkInterfacePrivateIpAddressSpecification =
  EC2NetworkInterfacePrivateIpAddressSpecification
  { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary :: Val Bool'
  , _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress :: Val Text
  } deriving (Show, Eq, Generic)

instance ToJSON EC2NetworkInterfacePrivateIpAddressSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 49, omitNothingFields = True }

instance FromJSON EC2NetworkInterfacePrivateIpAddressSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 49, omitNothingFields = True }

-- | Constructor for 'EC2NetworkInterfacePrivateIpAddressSpecification'
-- | containing required fields as arguments.
ec2NetworkInterfacePrivateIpAddressSpecification
  :: Val Bool' -- ^ 'ecnipiasPrimary'
  -> Val Text -- ^ 'ecnipiasPrivateIpAddress'
  -> EC2NetworkInterfacePrivateIpAddressSpecification
ec2NetworkInterfacePrivateIpAddressSpecification primaryarg privateIpAddressarg =
  EC2NetworkInterfacePrivateIpAddressSpecification
  { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary = primaryarg
  , _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress = privateIpAddressarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-primary
ecnipiasPrimary :: Lens' EC2NetworkInterfacePrivateIpAddressSpecification (Val Bool')
ecnipiasPrimary = lens _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary (\s a -> s { _eC2NetworkInterfacePrivateIpAddressSpecificationPrimary = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-network-interface-privateipspec.html#cfn-ec2-networkinterface-privateipspecification-privateipaddress
ecnipiasPrivateIpAddress :: Lens' EC2NetworkInterfacePrivateIpAddressSpecification (Val Text)
ecnipiasPrivateIpAddress = lens _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress (\s a -> s { _eC2NetworkInterfacePrivateIpAddressSpecificationPrivateIpAddress = a })
