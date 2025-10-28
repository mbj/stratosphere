module Stratosphere.NetworkFirewall.FirewallPolicy.FlowTimeoutsProperty (
        FlowTimeoutsProperty(..), mkFlowTimeoutsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowTimeoutsProperty
  = -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-flowtimeouts.html>
    FlowTimeoutsProperty {haddock_workaround_ :: (),
                          -- | See: <http://docs.aws.amazon.com/AWSCloudFormation/latest/UserGuide/aws-properties-networkfirewall-firewallpolicy-flowtimeouts.html#cfn-networkfirewall-firewallpolicy-flowtimeouts-tcpidletimeoutseconds>
                          tcpIdleTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowTimeoutsProperty :: FlowTimeoutsProperty
mkFlowTimeoutsProperty
  = FlowTimeoutsProperty
      {haddock_workaround_ = (), tcpIdleTimeoutSeconds = Prelude.Nothing}
instance ToResourceProperties FlowTimeoutsProperty where
  toResourceProperties FlowTimeoutsProperty {..}
    = ResourceProperties
        {awsType = "AWS::NetworkFirewall::FirewallPolicy.FlowTimeouts",
         supportsTags = Prelude.False,
         properties = Prelude.fromList
                        (Prelude.catMaybes
                           [(JSON..=) "TcpIdleTimeoutSeconds"
                              Prelude.<$> tcpIdleTimeoutSeconds])}
instance JSON.ToJSON FlowTimeoutsProperty where
  toJSON FlowTimeoutsProperty {..}
    = JSON.object
        (Prelude.fromList
           (Prelude.catMaybes
              [(JSON..=) "TcpIdleTimeoutSeconds"
                 Prelude.<$> tcpIdleTimeoutSeconds]))
instance Property "TcpIdleTimeoutSeconds" FlowTimeoutsProperty where
  type PropertyType "TcpIdleTimeoutSeconds" FlowTimeoutsProperty = Value Prelude.Integer
  set newValue FlowTimeoutsProperty {..}
    = FlowTimeoutsProperty
        {tcpIdleTimeoutSeconds = Prelude.pure newValue, ..}