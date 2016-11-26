{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html

module Stratosphere.Resources.EC2VPCGatewayAttachment where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values


-- | Full data type definition for EC2VPCGatewayAttachment. See
-- | 'ec2VPCGatewayAttachment' for a more convenient constructor.
data EC2VPCGatewayAttachment =
  EC2VPCGatewayAttachment
  { _eC2VPCGatewayAttachmentInternetGatewayId :: Maybe (Val Text)
  , _eC2VPCGatewayAttachmentVpcId :: Val Text
  , _eC2VPCGatewayAttachmentVpnGatewayId :: Maybe (Val Text)
  } deriving (Show, Generic)

instance ToJSON EC2VPCGatewayAttachment where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON EC2VPCGatewayAttachment where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'EC2VPCGatewayAttachment' containing required fields as
-- | arguments.
ec2VPCGatewayAttachment
  :: Val Text -- ^ 'ecvpcgaVpcId'
  -> EC2VPCGatewayAttachment
ec2VPCGatewayAttachment vpcIdarg =
  EC2VPCGatewayAttachment
  { _eC2VPCGatewayAttachmentInternetGatewayId = Nothing
  , _eC2VPCGatewayAttachmentVpcId = vpcIdarg
  , _eC2VPCGatewayAttachmentVpnGatewayId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-internetgatewayid
ecvpcgaInternetGatewayId :: Lens' EC2VPCGatewayAttachment (Maybe (Val Text))
ecvpcgaInternetGatewayId = lens _eC2VPCGatewayAttachmentInternetGatewayId (\s a -> s { _eC2VPCGatewayAttachmentInternetGatewayId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpcid
ecvpcgaVpcId :: Lens' EC2VPCGatewayAttachment (Val Text)
ecvpcgaVpcId = lens _eC2VPCGatewayAttachmentVpcId (\s a -> s { _eC2VPCGatewayAttachmentVpcId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpc-gateway-attachment.html#cfn-ec2-vpcgatewayattachment-vpngatewayid
ecvpcgaVpnGatewayId :: Lens' EC2VPCGatewayAttachment (Maybe (Val Text))
ecvpcgaVpnGatewayId = lens _eC2VPCGatewayAttachmentVpnGatewayId (\s a -> s { _eC2VPCGatewayAttachmentVpnGatewayId = a })
