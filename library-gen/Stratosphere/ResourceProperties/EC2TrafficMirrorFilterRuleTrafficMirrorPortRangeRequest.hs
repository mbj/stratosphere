{-# LANGUAGE OverloadedStrings #-}
{-# LANGUAGE RecordWildCards #-}
{-# LANGUAGE StrictData #-}
{-# LANGUAGE TupleSections #-}

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrangerequest.html

module Stratosphere.ResourceProperties.EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest where

import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest. See
-- 'ec2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest' for a more
-- convenient constructor.
data EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest =
  EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest
  { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestFromPort :: Val Integer
  , _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestToPort :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest where
  toJSON EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest{..} =
    object $
    catMaybes
    [ (Just . ("FromPort",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestFromPort
    , (Just . ("ToPort",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestToPort
    ]

-- | Constructor for 'EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest'
-- containing required fields as arguments.
ec2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest
  :: Val Integer -- ^ 'ectmfrtmprrFromPort'
  -> Val Integer -- ^ 'ectmfrtmprrToPort'
  -> EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest
ec2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest fromPortarg toPortarg =
  EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest
  { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestFromPort = fromPortarg
  , _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestToPort = toPortarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrangerequest.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrangerequest-fromport
ectmfrtmprrFromPort :: Lens' EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest (Val Integer)
ectmfrtmprrFromPort = lens _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestFromPort (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrangerequest.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrangerequest-toport
ectmfrtmprrToPort :: Lens' EC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequest (Val Integer)
ectmfrtmprrToPort = lens _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestToPort (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeRequestToPort = a })
