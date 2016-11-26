{-# LANGUAGE DeriveGeneric #-}
{-# LANGUAGE OverloadedStrings #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html

module Stratosphere.Resources.EC2VPCPeeringConnection where

import Control.Lens
import Data.Aeson
import Data.Aeson.Types
import Data.Text
import GHC.Generics

import Stratosphere.Values
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPCPeeringConnection. See
-- | 'ec2VPCPeeringConnection' for a more convenient constructor.
data EC2VPCPeeringConnection =
  EC2VPCPeeringConnection
  { _eC2VPCPeeringConnectionPeerVpcId :: Val Text
  , _eC2VPCPeeringConnectionTags :: Maybe [Tag]
  , _eC2VPCPeeringConnectionVpcId :: Val Text
  } deriving (Show, Generic)

instance ToJSON EC2VPCPeeringConnection where
  toJSON = genericToJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

instance FromJSON EC2VPCPeeringConnection where
  parseJSON = genericParseJSON defaultOptions { fieldLabelModifier = Prelude.drop 24, omitNothingFields = True }

-- | Constructor for 'EC2VPCPeeringConnection' containing required fields as
-- | arguments.
ec2VPCPeeringConnection
  :: Val Text -- ^ 'ecvpcpcPeerVpcId'
  -> Val Text -- ^ 'ecvpcpcVpcId'
  -> EC2VPCPeeringConnection
ec2VPCPeeringConnection peerVpcIdarg vpcIdarg =
  EC2VPCPeeringConnection
  { _eC2VPCPeeringConnectionPeerVpcId = peerVpcIdarg
  , _eC2VPCPeeringConnectionTags = Nothing
  , _eC2VPCPeeringConnectionVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peervpcid
ecvpcpcPeerVpcId :: Lens' EC2VPCPeeringConnection (Val Text)
ecvpcpcPeerVpcId = lens _eC2VPCPeeringConnectionPeerVpcId (\s a -> s { _eC2VPCPeeringConnectionPeerVpcId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-tags
ecvpcpcTags :: Lens' EC2VPCPeeringConnection (Maybe [Tag])
ecvpcpcTags = lens _eC2VPCPeeringConnectionTags (\s a -> s { _eC2VPCPeeringConnectionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-vpcid
ecvpcpcVpcId :: Lens' EC2VPCPeeringConnection (Val Text)
ecvpcpcVpcId = lens _eC2VPCPeeringConnectionVpcId (\s a -> s { _eC2VPCPeeringConnectionVpcId = a })
