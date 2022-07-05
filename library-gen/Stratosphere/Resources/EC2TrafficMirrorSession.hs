{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html

module Stratosphere.Resources.EC2TrafficMirrorSession where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TrafficMirrorSession. See
-- 'ec2TrafficMirrorSession' for a more convenient constructor.
data EC2TrafficMirrorSession =
  EC2TrafficMirrorSession
  { _eC2TrafficMirrorSessionDescription :: Maybe (Val Text)
  , _eC2TrafficMirrorSessionNetworkInterfaceId :: Val Text
  , _eC2TrafficMirrorSessionPacketLength :: Maybe (Val Integer)
  , _eC2TrafficMirrorSessionSessionNumber :: Val Integer
  , _eC2TrafficMirrorSessionTags :: Maybe [Tag]
  , _eC2TrafficMirrorSessionTrafficMirrorFilterId :: Val Text
  , _eC2TrafficMirrorSessionTrafficMirrorTargetId :: Val Text
  , _eC2TrafficMirrorSessionVirtualNetworkId :: Maybe (Val Integer)
  } deriving (Show, Eq)

instance ToResourceProperties EC2TrafficMirrorSession where
  toResourceProperties EC2TrafficMirrorSession{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TrafficMirrorSession"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eC2TrafficMirrorSessionDescription
        , (Just . ("NetworkInterfaceId",) . toJSON) _eC2TrafficMirrorSessionNetworkInterfaceId
        , fmap (("PacketLength",) . toJSON) _eC2TrafficMirrorSessionPacketLength
        , (Just . ("SessionNumber",) . toJSON) _eC2TrafficMirrorSessionSessionNumber
        , fmap (("Tags",) . toJSON) _eC2TrafficMirrorSessionTags
        , (Just . ("TrafficMirrorFilterId",) . toJSON) _eC2TrafficMirrorSessionTrafficMirrorFilterId
        , (Just . ("TrafficMirrorTargetId",) . toJSON) _eC2TrafficMirrorSessionTrafficMirrorTargetId
        , fmap (("VirtualNetworkId",) . toJSON) _eC2TrafficMirrorSessionVirtualNetworkId
        ]
    }

-- | Constructor for 'EC2TrafficMirrorSession' containing required fields as
-- arguments.
ec2TrafficMirrorSession
  :: Val Text -- ^ 'ectmsNetworkInterfaceId'
  -> Val Integer -- ^ 'ectmsSessionNumber'
  -> Val Text -- ^ 'ectmsTrafficMirrorFilterId'
  -> Val Text -- ^ 'ectmsTrafficMirrorTargetId'
  -> EC2TrafficMirrorSession
ec2TrafficMirrorSession networkInterfaceIdarg sessionNumberarg trafficMirrorFilterIdarg trafficMirrorTargetIdarg =
  EC2TrafficMirrorSession
  { _eC2TrafficMirrorSessionDescription = Nothing
  , _eC2TrafficMirrorSessionNetworkInterfaceId = networkInterfaceIdarg
  , _eC2TrafficMirrorSessionPacketLength = Nothing
  , _eC2TrafficMirrorSessionSessionNumber = sessionNumberarg
  , _eC2TrafficMirrorSessionTags = Nothing
  , _eC2TrafficMirrorSessionTrafficMirrorFilterId = trafficMirrorFilterIdarg
  , _eC2TrafficMirrorSessionTrafficMirrorTargetId = trafficMirrorTargetIdarg
  , _eC2TrafficMirrorSessionVirtualNetworkId = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-description
ectmsDescription :: Lens' EC2TrafficMirrorSession (Maybe (Val Text))
ectmsDescription = lens _eC2TrafficMirrorSessionDescription (\s a -> s { _eC2TrafficMirrorSessionDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-networkinterfaceid
ectmsNetworkInterfaceId :: Lens' EC2TrafficMirrorSession (Val Text)
ectmsNetworkInterfaceId = lens _eC2TrafficMirrorSessionNetworkInterfaceId (\s a -> s { _eC2TrafficMirrorSessionNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-packetlength
ectmsPacketLength :: Lens' EC2TrafficMirrorSession (Maybe (Val Integer))
ectmsPacketLength = lens _eC2TrafficMirrorSessionPacketLength (\s a -> s { _eC2TrafficMirrorSessionPacketLength = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-sessionnumber
ectmsSessionNumber :: Lens' EC2TrafficMirrorSession (Val Integer)
ectmsSessionNumber = lens _eC2TrafficMirrorSessionSessionNumber (\s a -> s { _eC2TrafficMirrorSessionSessionNumber = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-tags
ectmsTags :: Lens' EC2TrafficMirrorSession (Maybe [Tag])
ectmsTags = lens _eC2TrafficMirrorSessionTags (\s a -> s { _eC2TrafficMirrorSessionTags = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrorfilterid
ectmsTrafficMirrorFilterId :: Lens' EC2TrafficMirrorSession (Val Text)
ectmsTrafficMirrorFilterId = lens _eC2TrafficMirrorSessionTrafficMirrorFilterId (\s a -> s { _eC2TrafficMirrorSessionTrafficMirrorFilterId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-trafficmirrortargetid
ectmsTrafficMirrorTargetId :: Lens' EC2TrafficMirrorSession (Val Text)
ectmsTrafficMirrorTargetId = lens _eC2TrafficMirrorSessionTrafficMirrorTargetId (\s a -> s { _eC2TrafficMirrorSessionTrafficMirrorTargetId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrorsession.html#cfn-ec2-trafficmirrorsession-virtualnetworkid
ectmsVirtualNetworkId :: Lens' EC2TrafficMirrorSession (Maybe (Val Integer))
ectmsVirtualNetworkId = lens _eC2TrafficMirrorSessionVirtualNetworkId (\s a -> s { _eC2TrafficMirrorSessionVirtualNetworkId = a })
