{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Creates a Virtual Private Cloud (VPC) with the CIDR block that you
-- specify.

module Stratosphere.Resources.VPC where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.ResourceTag

-- | Full data type definition for VPC. See 'vpc' for a more convenient
-- constructor.
data VPC =
  VPC
  { _vPCCidrBlock :: Val Text
  , _vPCEnableDnsSupport :: Maybe (Val Bool')
  , _vPCEnableDnsHostnames :: Maybe (Val Bool')
  , _vPCInstanceTenancy :: Maybe (Val Text)
  , _vPCTags :: Maybe [ResourceTag]
  } deriving (Show, Generic)

instance ToJSON VPC where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

instance FromJSON VPC where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 4, omitNothingFields = True }

-- | Constructor for 'VPC' containing required fields as arguments.
vpc
  :: Val Text -- ^ CidrBlock
  -> VPC
vpc cidrBlockarg =
  VPC
  { _vPCCidrBlock = cidrBlockarg
  , _vPCEnableDnsSupport = Nothing
  , _vPCEnableDnsHostnames = Nothing
  , _vPCInstanceTenancy = Nothing
  , _vPCTags = Nothing
  }

-- | The CIDR block you want the VPC to cover. For example: "10.0.0.0/16".
vpcCidrBlock :: Lens' VPC (Val Text)
vpcCidrBlock = lens _vPCCidrBlock (\s a -> s { _vPCCidrBlock = a })

-- | Specifies whether DNS resolution is supported for the VPC. If this
-- attribute is true, the Amazon DNS server resolves DNS hostnames for your
-- instances to their corresponding IP addresses; otherwise, it does not. By
-- default the value is set to true.
vpcEnableDnsSupport :: Lens' VPC (Maybe (Val Bool'))
vpcEnableDnsSupport = lens _vPCEnableDnsSupport (\s a -> s { _vPCEnableDnsSupport = a })

-- | Specifies whether the instances launched in the VPC get DNS hostnames. If
-- this attribute is true, instances in the VPC get DNS hostnames; otherwise,
-- they do not. You can only set EnableDnsHostnames to true if you also set
-- the EnableDnsSupport attribute to true. By default, the value is set to
-- false.
vpcEnableDnsHostnames :: Lens' VPC (Maybe (Val Bool'))
vpcEnableDnsHostnames = lens _vPCEnableDnsHostnames (\s a -> s { _vPCEnableDnsHostnames = a })

-- | The allowed tenancy of instances launched into the VPC. "default":
-- Instances can be launched with any tenancy. "dedicated": Any instance
-- launched into the VPC will automatically be dedicated, regardless of the
-- tenancy option you specify when you launch the instance.
vpcInstanceTenancy :: Lens' VPC (Maybe (Val Text))
vpcInstanceTenancy = lens _vPCInstanceTenancy (\s a -> s { _vPCInstanceTenancy = a })

-- | An arbitrary set of tags (key–value pairs) for this VPC.
vpcTags :: Lens' VPC (Maybe [ResourceTag])
vpcTags = lens _vPCTags (\s a -> s { _vPCTags = a })