module Stratosphere.NetworkFirewall.FirewallPolicy.FlowTimeoutsProperty (
        FlowTimeoutsProperty(..), mkFlowTimeoutsProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data FlowTimeoutsProperty
  = FlowTimeoutsProperty {tcpIdleTimeoutSeconds :: (Prelude.Maybe (Value Prelude.Integer))}
  deriving stock (Prelude.Eq, Prelude.Show)
mkFlowTimeoutsProperty :: FlowTimeoutsProperty
mkFlowTimeoutsProperty
  = FlowTimeoutsProperty {tcpIdleTimeoutSeconds = Prelude.Nothing}
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
  set newValue FlowTimeoutsProperty {}
    = FlowTimeoutsProperty
        {tcpIdleTimeoutSeconds = Prelude.pure newValue, ..}