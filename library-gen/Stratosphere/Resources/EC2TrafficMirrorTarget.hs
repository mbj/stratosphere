{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html

module Stratosphere.Resources.EC2TrafficMirrorTarget where

import Stratosphere.ResourceImports
import Stratosphere.ResourceProperties.Tag

-- | Full data type definition for EC2TrafficMirrorTarget. See
-- 'ec2TrafficMirrorTarget' for a more convenient constructor.
data EC2TrafficMirrorTarget =
  EC2TrafficMirrorTarget
  { _eC2TrafficMirrorTargetDescription :: Maybe (Val Text)
  , _eC2TrafficMirrorTargetNetworkInterfaceId :: Maybe (Val Text)
  , _eC2TrafficMirrorTargetNetworkLoadBalancerArn :: Maybe (Val Text)
  , _eC2TrafficMirrorTargetTags :: Maybe [Tag]
  } deriving (Show, Eq)

instance ToResourceProperties EC2TrafficMirrorTarget where
  toResourceProperties EC2TrafficMirrorTarget{..} =
    ResourceProperties
    { resourcePropertiesType = "AWS::EC2::TrafficMirrorTarget"
    , resourcePropertiesProperties =
        keyMapFromList $ catMaybes
        [ fmap (("Description",) . toJSON) _eC2TrafficMirrorTargetDescription
        , fmap (("NetworkInterfaceId",) . toJSON) _eC2TrafficMirrorTargetNetworkInterfaceId
        , fmap (("NetworkLoadBalancerArn",) . toJSON) _eC2TrafficMirrorTargetNetworkLoadBalancerArn
        , fmap (("Tags",) . toJSON) _eC2TrafficMirrorTargetTags
        ]
    }

-- | Constructor for 'EC2TrafficMirrorTarget' containing required fields as
-- arguments.
ec2TrafficMirrorTarget
  :: EC2TrafficMirrorTarget
ec2TrafficMirrorTarget  =
  EC2TrafficMirrorTarget
  { _eC2TrafficMirrorTargetDescription = Nothing
  , _eC2TrafficMirrorTargetNetworkInterfaceId = Nothing
  , _eC2TrafficMirrorTargetNetworkLoadBalancerArn = Nothing
  , _eC2TrafficMirrorTargetTags = Nothing
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-description
ectmtDescription :: Lens' EC2TrafficMirrorTarget (Maybe (Val Text))
ectmtDescription = lens _eC2TrafficMirrorTargetDescription (\s a -> s { _eC2TrafficMirrorTargetDescription = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkinterfaceid
ectmtNetworkInterfaceId :: Lens' EC2TrafficMirrorTarget (Maybe (Val Text))
ectmtNetworkInterfaceId = lens _eC2TrafficMirrorTargetNetworkInterfaceId (\s a -> s { _eC2TrafficMirrorTargetNetworkInterfaceId = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkloadbalancerarn
ectmtNetworkLoadBalancerArn :: Lens' EC2TrafficMirrorTarget (Maybe (Val Text))
ectmtNetworkLoadBalancerArn = lens _eC2TrafficMirrorTargetNetworkLoadBalancerArn (\s a -> s { _eC2TrafficMirrorTargetNetworkLoadBalancerArn = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-tags
ectmtTags :: Lens' EC2TrafficMirrorTarget (Maybe [Tag])
ectmtTags = lens _eC2TrafficMirrorTargetTags (\s a -> s { _eC2TrafficMirrorTargetTags = a })
