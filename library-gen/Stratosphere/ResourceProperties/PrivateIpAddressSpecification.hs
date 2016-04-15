{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}



module Stratosphere.ResourceProperties.PrivateIpAddressSpecification where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for PrivateIpAddressSpecification. See
-- 'privateIpAddressSpecification' for a more convenient constructor.
data PrivateIpAddressSpecification =
  PrivateIpAddressSpecification
  { _privateIpAddressSpecificationPrivateIpAddress :: Val Text
  , _privateIpAddressSpecificationPrimary :: Val Bool'
  } deriving (Show, Generic)

instance ToJSON PrivateIpAddressSpecification where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

instance FromJSON PrivateIpAddressSpecification where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 30, omitNothingFields = True }

-- | Constructor for 'PrivateIpAddressSpecification' containing required
-- fields as arguments.
privateIpAddressSpecification
  :: Val Text -- ^ 'piasPrivateIpAddress'
  -> Val Bool' -- ^ 'piasPrimary'
  -> PrivateIpAddressSpecification
privateIpAddressSpecification privateIpAddressarg primaryarg =
  PrivateIpAddressSpecification
  { _privateIpAddressSpecificationPrivateIpAddress = privateIpAddressarg
  , _privateIpAddressSpecificationPrimary = primaryarg
  }

-- | The private IP address of the network interface.
piasPrivateIpAddress :: Lens' PrivateIpAddressSpecification (Val Text)
piasPrivateIpAddress = lens _privateIpAddressSpecificationPrivateIpAddress (\s a -> s { _privateIpAddressSpecificationPrivateIpAddress = a })

-- | Sets the private IP address as the primary private address. You can set
-- only one primary private IP address. If you don't specify a primary private
-- IP address, Amazon EC2 automatically assigns a primary private IP address.
piasPrimary :: Lens' PrivateIpAddressSpecification (Val Bool')
piasPrimary = lens _privateIpAddressSpecificationPrimary (\s a -> s { _privateIpAddressSpecificationPrimary = a })