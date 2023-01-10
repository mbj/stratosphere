
-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html

module Stratosphere.ResourceProperties.EC2TrafficMirrorFilterRuleTrafficMirrorPortRange where

import Prelude
import Stratosphere.ResourceImports


-- | Full data type definition for
-- EC2TrafficMirrorFilterRuleTrafficMirrorPortRange. See
-- 'ec2TrafficMirrorFilterRuleTrafficMirrorPortRange' for a more convenient
-- constructor.
data EC2TrafficMirrorFilterRuleTrafficMirrorPortRange =
  EC2TrafficMirrorFilterRuleTrafficMirrorPortRange
  { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeFromPort :: Val Integer
  , _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeToPort :: Val Integer
  } deriving (Show, Eq)

instance ToJSON EC2TrafficMirrorFilterRuleTrafficMirrorPortRange where
  toJSON EC2TrafficMirrorFilterRuleTrafficMirrorPortRange{..} =
    object $
    catMaybes
    [ (Just . ("FromPort",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeFromPort
    , (Just . ("ToPort",) . toJSON) _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeToPort
    ]

-- | Constructor for 'EC2TrafficMirrorFilterRuleTrafficMirrorPortRange'
-- containing required fields as arguments.
ec2TrafficMirrorFilterRuleTrafficMirrorPortRange
  :: Val Integer -- ^ 'ectmfrtmprFromPort'
  -> Val Integer -- ^ 'ectmfrtmprToPort'
  -> EC2TrafficMirrorFilterRuleTrafficMirrorPortRange
ec2TrafficMirrorFilterRuleTrafficMirrorPortRange fromPortarg toPortarg =
  EC2TrafficMirrorFilterRuleTrafficMirrorPortRange
  { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeFromPort = fromPortarg
  , _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeToPort = toPortarg
  }

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-fromport
ectmfrtmprFromPort :: Lens' EC2TrafficMirrorFilterRuleTrafficMirrorPortRange (Val Integer)
ectmfrtmprFromPort = lens _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeFromPort (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeFromPort = a })

-- | http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-ec2-trafficmirrorfilterrule-trafficmirrorportrange.html#cfn-ec2-trafficmirrorfilterrule-trafficmirrorportrange-toport
ectmfrtmprToPort :: Lens' EC2TrafficMirrorFilterRuleTrafficMirrorPortRange (Val Integer)
ectmfrtmprToPort = lens _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeToPort (\s a -> s { _eC2TrafficMirrorFilterRuleTrafficMirrorPortRangeToPort = a })
