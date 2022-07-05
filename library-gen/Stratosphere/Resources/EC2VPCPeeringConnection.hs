{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html

module Stratosphere.Resources.EC2VPCPeeringConnection where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2VPCPeeringConnection. See
-- 'ec2VPCPeeringConnection' for a more convenient constructor.
data EC2VPCPeeringConnection =
  EC2VPCPeeringConnection
  { _eC2VPCPeeringConnectionPeerOwnerId :: Maybe (Val Text)
  , _eC2VPCPeeringConnectionPeerRegion :: Maybe (Val Text)
  , _eC2VPCPeeringConnectionPeerRoleArn :: Maybe (Val Text)
  , _eC2VPCPeeringConnectionPeerVpcId :: Val Text
  , _eC2VPCPeeringConnectionTags :: Maybe [Tag]
  , _eC2VPCPeeringConnectionVpcId :: Val Text
  } deriving (Show, Eq)

instance ToResourceProperties EC2VPCPeeringConnection where
  toResourceProperties EC2VPCPeeringConnection{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::VPCPeeringConnection"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("PeerOwnerId",) . toJSON) _eC2VPCPeeringConnectionPeerOwnerId
        , fmap (("PeerRegion",) . toJSON) _eC2VPCPeeringConnectionPeerRegion
        , fmap (("PeerRoleArn",) . toJSON) _eC2VPCPeeringConnectionPeerRoleArn
        , (Just . ("PeerVpcId",) . toJSON) _eC2VPCPeeringConnectionPeerVpcId
        , fmap (("Tags",) . toJSON) _eC2VPCPeeringConnectionTags
        , (Just . ("VpcId",) . toJSON) _eC2VPCPeeringConnectionVpcId
        ]
    }

-- | Constructor for 'EC2VPCPeeringConnection' containing required fields as
-- arguments.
ec2VPCPeeringConnection
  :: Val Text -- ^ 'ecvpcpcPeerVpcId'
  -> Val Text -- ^ 'ecvpcpcVpcId'
  -> EC2VPCPeeringConnection
ec2VPCPeeringConnection peerVpcIdarg vpcIdarg =
  EC2VPCPeeringConnection
  { _eC2VPCPeeringConnectionPeerOwnerId = Nothing
  , _eC2VPCPeeringConnectionPeerRegion = Nothing
  , _eC2VPCPeeringConnectionPeerRoleArn = Nothing
  , _eC2VPCPeeringConnectionPeerVpcId = peerVpcIdarg
  , _eC2VPCPeeringConnectionTags = Nothing
  , _eC2VPCPeeringConnectionVpcId = vpcIdarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerownerid
ecvpcpcPeerOwnerId :: Lens' EC2VPCPeeringConnection (Maybe (Val Text))
ecvpcpcPeerOwnerId = lens _eC2VPCPeeringConnectionPeerOwnerId (\s a -> s { _eC2VPCPeeringConnectionPeerOwnerId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerregion
ecvpcpcPeerRegion :: Lens' EC2VPCPeeringConnection (Maybe (Val Text))
ecvpcpcPeerRegion = lens _eC2VPCPeeringConnectionPeerRegion (\s a -> s { _eC2VPCPeeringConnectionPeerRegion = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peerrolearn
ecvpcpcPeerRoleArn :: Lens' EC2VPCPeeringConnection (Maybe (Val Text))
ecvpcpcPeerRoleArn = lens _eC2VPCPeeringConnectionPeerRoleArn (\s a -> s { _eC2VPCPeeringConnectionPeerRoleArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-peervpcid
ecvpcpcPeerVpcId :: Lens' EC2VPCPeeringConnection (Val Text)
ecvpcpcPeerVpcId = lens _eC2VPCPeeringConnectionPeerVpcId (\s a -> s { _eC2VPCPeeringConnectionPeerVpcId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-tags
ecvpcpcTags :: Lens' EC2VPCPeeringConnection (Maybe [Tag])
ecvpcpcTags = lens _eC2VPCPeeringConnectionTags (\s a -> s { _eC2VPCPeeringConnectionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-vpcpeeringconnection.html#cfn-ec2-vpcpeeringconnection-vpcid
ecvpcpcVpcId :: Lens' EC2VPCPeeringConnection (Val Text)
ecvpcpcVpcId = lens _eC2VPCPeeringConnectionVpcId (\s a -> s { _eC2VPCPeeringConnectionVpcId = a })
