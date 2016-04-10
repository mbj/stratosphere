{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | The AWS::EC2::EIP resource allocates an Elastic IP (EIP) address and can,
-- optionally, associate it with an Amazon EC2 instance.

module Stratosphere.Resources.EIP where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EIP. See 'eip' for a more convenient
-- constructor.
data EIP =
  EIP
  { _eIPInstanceId :: Maybe (Val Text)
  , _eIPDomain :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EIP where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

instance FromJSON EIP where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

-- | Constructor for 'EIP' containing required fields as arguments.
eip
  :: EIP
eip  =
  EIP
  { _eIPInstanceId = Nothing
  , _eIPDomain = Nothing
  }

-- | The Instance ID of the Amazon EC2 instance that you want to associate
-- with this Elastic IP address.
eipInstanceId :: Lens' EIP (Maybe (Val Text))
eipInstanceId = lens _eIPInstanceId (\s a -> s { _eIPInstanceId = a })

-- | Set to vpc to allocate the address to your Virtual Private Cloud (VPC).
-- No other values are supported. Note If you define an Elastic IP address and
-- associate it with a VPC that is defined in the same template, you must
-- declare a dependency on the VPC-gateway attachment by using the DependsOn
-- attribute on this resource. For more information, see DependsOn Attribute.
-- For more information, see AllocateAddress in the Amazon EC2 API Reference.
-- For more information about Elastic IP Addresses in VPC, go to IP Addressing
-- in Your VPC in the Amazon VPC User Guide.
eipDomain :: Lens' EIP (Maybe (Val Text))
eipDomain = lens _eIPDomain (\s a -> s { _eIPDomain = a })