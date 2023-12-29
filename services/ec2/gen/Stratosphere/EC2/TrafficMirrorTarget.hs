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
  = TrafficMirrorTarget {description :: (Prelude.Maybe (Value Prelude.Text)),
                         gatewayLoadBalancerEndpointId :: (Prelude.Maybe (Value Prelude.Text)),
                         networkInterfaceId :: (Prelude.Maybe (Value Prelude.Text)),
                         networkLoadBalancerArn :: (Prelude.Maybe (Value Prelude.Text)),
                         tags :: (Prelude.Maybe [Tag])}
  deriving stock (Prelude.Eq, Prelude.Show)
mkTrafficMirrorTarget :: TrafficMirrorTarget
mkTrafficMirrorTarget
  = TrafficMirrorTarget
      {description = Prelude.Nothing,
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