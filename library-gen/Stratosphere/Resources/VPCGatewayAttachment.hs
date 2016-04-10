{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | Attaches a gateway to a VPC.

module Stratosphere.Resources.VPCGatewayAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for VPCGatewayAttachment. See
-- 'vpcGatewayAttachment' for a more convenient constructor.
data VPCGatewayAttachment =
  VPCGatewayAttachment
  { _vPCGatewayAttachmentInternetGatewayId :: Maybe (Val Text)
  , _vPCGatewayAttachmentVpcId :: Val Text
  , _vPCGatewayAttachmentVpnGatewayId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON VPCGatewayAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

instance FromJSON VPCGatewayAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 21, omitNothingFields = True }

-- | Constructor for 'VPCGatewayAttachment' containing required fields as
-- arguments.
vpcGatewayAttachment
  :: Val Text -- ^ VpcId
  -> VPCGatewayAttachment
vpcGatewayAttachment vpcIdarg =
  VPCGatewayAttachment
  { _vPCGatewayAttachmentInternetGatewayId = Nothing
  , _vPCGatewayAttachmentVpcId = vpcIdarg
  , _vPCGatewayAttachmentVpnGatewayId = Nothing
  }

-- | The ID of the Internet gateway.
vpcgaInternetGatewayId :: Lens' VPCGatewayAttachment (Maybe (Val Text))
vpcgaInternetGatewayId = lens _vPCGatewayAttachmentInternetGatewayId (\s a -> s { _vPCGatewayAttachmentInternetGatewayId = a })

-- | The ID of the VPC to associate with this gateway.
vpcgaVpcId :: Lens' VPCGatewayAttachment (Val Text)
vpcgaVpcId = lens _vPCGatewayAttachmentVpcId (\s a -> s { _vPCGatewayAttachmentVpcId = a })

-- | The ID of the virtual private network (VPN) gateway to attach to the VPC.
vpcgaVpnGatewayId :: Lens' VPCGatewayAttachment (Maybe (Val Text))
vpcgaVpnGatewayId = lens _vPCGatewayAttachmentVpnGatewayId (\s a -> s { _vPCGatewayAttachmentVpnGatewayId = a })