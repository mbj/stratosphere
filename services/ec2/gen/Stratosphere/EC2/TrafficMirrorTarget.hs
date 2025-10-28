module Stratosphere.EC2.TrafficMirrorTarget (
        TrafficMirrorTarget(..), mkTrafficMirrorTarget
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Tag
import Stratosphere.Value
data TrafficMirrorTarget
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html>
    TrafficMirrorTarget {haddock_workaround_ :: (),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-description>
                         description :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-gatewayloadbalancerendpointid>
                         gatewayLoadBalancerEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkinterfaceid>
                         networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-networkloadbalancerarn>
                         networkLoadBalancerArn :: (Prelude.Maybe (Value Prelude.Text)),
                         -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-resource-ec2-trafficmirrortarget.html#cfn-ec2-trafficmirrortarget-tags>
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorTarget :: TrafficMirrorTarget
mkTrafficMirrorTarget
  = TrafficMirrorTarget
      {haddock_workaround_ = (), description = Prelude.Nothing,
       gatewayLoadBalancerEndpointId = Prelude.Nothing,
       networkInterfaceId = Prelude.Nothing,
       networkLoadBalancerArn = Prelude.Nothing, tags = Prelude.Nothing}
instance ToResourceProperties TrafficMirrorTarget where
  toResourceProperties TrafficMirrorTarget {..}
    = ResourceProperties
        {awsType = "AWS::EC2::TrafficMirrorTarget",
         supportsTags = Prelude.True,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "Description" Prelude.<$> description,
                            (JSON..=) "GatewayLoadBalancerEndpointId"
                              Prelude.<$> gatewayLoadBalancerEndpointId,
                            (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
                            (JSON..=) "NetworkLoadBalancerArn"
                              Prelude.<$> networkLoadBalancerArn,
                            (JSON..=) "Tags" Prelude.<$> tags])}
instance JSON.ToJSON TrafficMirrorTarget where
  toJSON TrafficMirrorTarget {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "Description" Prelude.<$> description,
               (JSON..=) "GatewayLoadBalancerEndpointId"
                 Prelude.<$> gatewayLoadBalancerEndpointId,
               (JSON..=) "NetworkInterfaceId" Prelude.<$> networkInterfaceId,
               (JSON..=) "NetworkLoadBalancerArn"
                 Prelude.<$> networkLoadBalancerArn,
               (JSON..=) "Tags" Prelude.<$> tags]))
instance Property "Description" TrafficMirrorTarget where
  type PropertyType "Description" TrafficMirrorTarget = Value Prelude.Text
  set newValue TrafficMirrorTarget {..}
    = TrafficMirrorTarget {description = Prelude.pure newValue, ..}
instance Property "GatewayLoadBalancerEndpointId" TrafficMirrorTarget where
  type PropertyType "GatewayLoadBalancerEndpointId" TrafficMirrorTarget = Value Prelude.Text
  set newValue TrafficMirrorTarget {..}
    = TrafficMirrorTarget
        {gatewayLoadBalancerEndpointId = Prelude.pure newValue, ..}
instance Property "NetworkInterfaceId" TrafficMirrorTarget where
  type PropertyType "NetworkInterfaceId" TrafficMirrorTarget = Value Prelude.Text
  set newValue TrafficMirrorTarget {..}
    = TrafficMirrorTarget
        {networkInterfaceId = Prelude.pure newValue, ..}
instance Property "NetworkLoadBalancerArn" TrafficMirrorTarget where
  type PropertyType "NetworkLoadBalancerArn" TrafficMirrorTarget = Value Prelude.Text
  set newValue TrafficMirrorTarget {..}
    = TrafficMirrorTarget
        {networkLoadBalancerArn = Prelude.pure newValue, ..}
instance Property "Tags" TrafficMirrorTarget where
  type PropertyType "Tags" TrafficMirrorTarget = [Tag]
  set newValue TrafficMirrorTarget {..}
    = TrafficMirrorTarget {tags = Prelude.pure newValue, ..}