module Stratosphere.FMS.Policy.NetworkFirewallPolicyProperty (
        NetworkFirewallPolicyProperty(..), mkNetworkFirewallPolicyProperty
    ) where
import qualified Data.Aeson as JSON
import qualified Stratosphere.Prelude as Prelude
import Stratosphere.Property
import Stratosphere.ResourceProperties
import Stratosphere.Value
data NetworkFirewallPolicyProperty
  = NetworkFirewallPolicyProperty {firewallDeploymentModel :: (Value Prelude.Text)}
mkNetworkFirewallPolicyProperty ::
  Value Prelude.Text -> NetworkFirewallPolicyProperty
mkNetworkFirewallPolicyProperty firewallDeploymentModel
  = NetworkFirewallPolicyProperty
      {firewallDeploymentModel = firewallDeploymentModel}
instance ToResourceProperties NetworkFirewallPolicyProperty where
  toResourceProperties NetworkFirewallPolicyProperty {..}
    = ResourceProperties
        {awsType = "AWS::FMS::Policy.NetworkFirewallPolicy",
         supportsTags = Prelude.False,
         properties = ["FirewallDeploymentModel"
                         JSON..= firewallDeploymentModel]}
instance JSON.ToJSON NetworkFirewallPolicyProperty where
  toJSON NetworkFirewallPolicyProperty {..}
    = JSON.object
        ["FirewallDeploymentModel" JSON..= firewallDeploymentModel]
instance Property "FirewallDeploymentModel" NetworkFirewallPolicyProperty where
  type PropertyType "FirewallDeploymentModel" NetworkFirewallPolicyProperty = Value Prelude.Text
  set newValue NetworkFirewallPolicyProperty {}
    = NetworkFirewallPolicyProperty
        {firewallDeploymentModel = newValue, ..}